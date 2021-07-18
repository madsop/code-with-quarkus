package no.roedt.ringesentralen.sms

import no.roedt.ringesentralen.Kilde
import no.roedt.ringesentralen.person.GroupID
import no.roedt.ringesentralen.person.PersonRepository

class SMSService(
    private val meldingRepository: MeldingRepository,
    private val personRepository: PersonRepository,
    private val sendtMeldingRepository: SendtMeldingRepository
) {
    fun lagreMelding(melding: Melding): Long {
        meldingRepository.persist(melding)
        return melding.id
    }

    fun hentNesteUsendte(meldingID: Long, antall: Int): List<SMSMottaker> {
        var count = 0
        return personRepository.list(
            """kilde=${Kilde.Mosaic.name} and and telefonnummer != '' and groupID in (
                ${GroupID.Ferdigringt.nr},
                ${GroupID.KlarTilAaRinges.nr}, 
                ${GroupID.PrioritertAaRinge.nr}
                )"""
        )
            .filterNot {
                sendtMeldingRepository.count("meldingID=$meldingID and personmottaker=${it.id}") > 0
            }
            .map { SMSMottaker(telefonnummer = it.telefonnummer!!, personId = it.id) }
            .also { count++ }
            .takeWhile { count < antall }
            .onEach { sendtMeldingRepository.persist(SendtMelding(meldingID = meldingID, personmottaker = it.personId)) }
    }
}
