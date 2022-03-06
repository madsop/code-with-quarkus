package no.roedt.ringesentralen.hypersys

import no.roedt.ringesentralen.hypersys.externalModel.Organisasjonsledd
import no.roedt.ringesentralen.lokallag.Lokallag
import no.roedt.ringesentralen.lokallag.LokallagRepository
import no.roedt.ringesentralen.person.Person
import no.roedt.ringesentralen.person.PersonRepository
import no.roedt.ringesentralen.person.UserId
import java.time.LocalDate
import javax.enterprise.context.ApplicationScoped

interface HypersysService {
    fun getMedlemmer(hypersysLokallagId: Int?): List<LinkedHashMap<String, *>>
    fun convertToHypersysLokallagId(lokallag: Int): Int?
    fun hentFraMedlemslista(hypersysID: Int?): LinkedHashMap<*, *>?
    fun oppdaterMedlemmerILokallag(hypersysLokallagId: Int?)
}

@ApplicationScoped
class HypersysServiceBean(
    val hypersysProxy: HypersysProxy,
    val hypersysSystemTokenVerifier: HypersysSystemTokenVerifier,
    val personRepository: PersonRepository,
    private val modelConverter: ModelConverter,
    val lokallagRepository: LokallagRepository
) : HypersysService {

    override fun getMedlemmer(hypersysLokallagId: Int?): List<LinkedHashMap<String, *>> {
        return if (hypersysLokallagId == null) listOf()
        else hypersysProxy.get(
            "/membership/api/membership/$hypersysLokallagId/${LocalDate.now().year}/",
            hypersysSystemTokenVerifier.assertGyldigSystemToken(),
            List::class.java
        )
            as List<LinkedHashMap<String, *>>
    }

    override fun convertToHypersysLokallagId(lokallag: Int): Int? {
        if (lokallag == -1) return null
        val hypersysId = lokallagRepository.findById(lokallag)
            ?.let { mittLag ->
                if (mittLag.hypersysID != null) mittLag.hypersysID!! else getLokallagIdFromHypersys(
                    mittLag
                )
            }
        if (hypersysId == null) println("Fann ikkje lokallag i hypersys for $lokallag")
        return hypersysId
    }

    private fun getLokallag(userId: UserId) =
        personRepository.find("hypersysID", userId.userId).firstResult<Person>().lokallag

    private fun getLokallagIdFromHypersys(mittLag: Lokallag): Int {
        val lag = getAlleLokallag().first { mittLag.navn == it.name }
        lokallagRepository.update("hypersysID=?1 where id=?2", lag.id, mittLag.id)
        return lag.id
    }

    private fun getAlleLokallag(): List<Organisasjonsledd> =
        hypersysProxy.get(
            "/org/api/",
            hypersysSystemTokenVerifier.assertGyldigSystemToken(),
            ListOrganisasjonsleddTypeReference()
        )

    override fun oppdaterMedlemmerILokallag(hypersysLokallagId: Int?) =
        getMedlemmer(hypersysLokallagId)
            .filter { medlem -> personRepository.find("hypersysID", medlem["member_id"]).count() == 0L }
            .map { modelConverter.convertMembershipToPerson(it) }
            .filter { it.telefonnummer != null }
            .forEach { personRepository.save(it) }

    override fun hentFraMedlemslista(hypersysID: Int?): LinkedHashMap<*, *>? =
        hypersysID
            ?.let { UserId(userId = it) }
            ?.let { getLokallag(userId = it) }
            ?.let { convertToHypersysLokallagId(it) }
            ?.let { getMedlemmer(it) }
            ?.firstOrNull { it["member_id"] == hypersysID }
}
