package no.roedt.ringesentralen.statistikk

import no.roedt.ringesentralen.DatabaseUpdater
import no.roedt.ringesentralen.Roles
import no.roedt.ringesentralen.person.GroupID
import no.roedt.ringesentralen.person.UserId
import no.roedt.ringesentralen.samtale.resultat.Resultat
import javax.enterprise.context.ApplicationScoped

@ApplicationScoped
class StatistikkService(val databaseUpdater: DatabaseUpdater) {

    fun getStatistikk(groups: Set<String>): StatistikkResponse {
        return if (groups.contains(Roles.admin)) {
            StatistikkResponse(
                samtalerStatistikkResponse = getSamtalerStatistikkResponse(),
                ringereStatistikkResponse = getRingereStatistikkResponse(),
                personerStatistikkResponse = getPersonerStatistikkResponse()
            )
        } else StatistikkResponse(
            samtalerStatistikkResponse = getSamtalerStatistikkResponse(),
            ringereStatistikkResponse = null,
            personerStatistikkResponse = null
        )
    }

    private fun getSamtalerStatistikkResponse(): SamtalerStatistikkResponse {
        val list = get("SELECT id, displaytext FROM `resultat` ")
            .map { it as Array<*> }
            .map { Resultattype(id = it[0] as Int, displaytext = it[1].toString()) }
            .map {
                SamtaleResultat(
                    displaytext = it.displaytext,
                    antal = get("SELECT ringer FROM `samtale` WHERE resultat = ${it.id}").size
                )
            }
            .filter { it.antal > 0 }

        return SamtalerStatistikkResponse(
            resultat = list,
            samtalerMedResultatSaaLangt = get("SELECT ringer FROM `samtale` WHERE resultat!=${Resultat.Samtale_startet.nr}").size
        )
    }

    private fun getRingereStatistikkResponse(): RingereStatistikkResponse =
        RingereStatistikkResponse(
            registrerteRingere = get("SELECT 1 FROM ringer").size,
            antallSomHarRingt = get("select distinct ringer from `samtale`").size,
            aktiveRingereDenSisteTimen = get("select distinct ringer from `samtale` where UNIX_TIMESTAMP(now()) - unix_timestamp(datetime) < 3600").size,
            aktiveRingereIDag = get("select distinct ringer from `samtale` where CURDATE() =  DATE(datetime)").size,
            lokaleGodkjennere = get("select 1 FROM person WHERE groupID=${GroupID.LokalGodkjenner.nr}").size,
            avvisteRingere = get("select 1 FROM person WHERE groupID=${GroupID.AvslaattRinger.nr}").size,
            antallLokallagRingtFraTotalt = get(
                "select distinct ringer from `samtale` c " +
                    "inner join ringer ringer on c.ringer = ringer.id " +
                    "inner join person p on ringer.personId = p.id " +
                    "inner join lokallag l on l.id = p.lokallag"
            ).size
        )

    private fun getPersonerStatistikkResponse(): PersonerStatistikkResponse = PersonerStatistikkResponse(
        antallPersonerISystemetTotalt = get("SELECT 1 FROM person").size,
        ringere = get("SELECT 1 FROM person WHERE groupID in (${GroupID.GodkjentRinger.nr}, ${GroupID.GodkjentRingerMedlemmer.nr}, ${GroupID.LokalGodkjenner.nr}, ${GroupID.Admin.nr} )").size,
        ferdigringte = get("select 1 FROM person WHERE groupID=${GroupID.Ferdigringt.nr} or groupID=${GroupID.Slett.nr}").size,
        ringtUtenSvar = get("select 1 FROM person p inner join samtale s on s.ringt=p.id AND p.groupID=${GroupID.KlarTilAaRinges.nr}").size,
        ikkeRingt = get("select 1 FROM person p where p.groupID < ${GroupID.UgodkjentRinger.nr} and not exists (select 1 from samtale s where s.ringt=p.id)").size,
        antallLokallagMedPersonerTilknytta = get("select distinct lokallag FROM person where lokallag is not null").size
    )

    private fun get(query: String) = databaseUpdater.getResultList(query)

    fun getRingtMest(userId: UserId): RingtFlestStatistikk {
        val hypersysId = userId.userId
        val sql =
            """SELECT 1 FROM samtale samtale 
                INNER JOIN ringer ringer on samtale.ringer=ringer.id 
                INNER JOIN person ringerPerson on ringerPerson.id=ringer.personId 
                WHERE ringerPerson.hypersysID=$hypersysId 
                and samtale.resultat != ${Resultat.Samtale_startet.nr} 
                and samtale.ringt != ringerPerson.id"""
        val mineRingte = get(sql).size

        val sqlPersonRingtFlest = """
            SELECT count(1) FROM samtale samtale 
            INNER JOIN ringer ringer on samtale.ringer=ringer.id 
            INNER JOIN person ringerPerson on ringerPerson.id=ringer.personId
            WHERE samtale.resultat != 9
            and samtale.ringt != ringerPerson.id
            group by ringer.id
            order by count(1) desc limit 1
        """

        val personSomHarRingtFlest = get(sqlPersonRingtFlest)[0].toString().toInt()

        return RingtFlestStatistikk(
            jegHarRingt = mineRingte,
            maksRingt = personSomHarRingtFlest
        )
    }
}
