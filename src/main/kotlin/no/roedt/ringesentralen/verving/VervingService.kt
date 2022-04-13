package no.roedt.ringesentralen.verving

import no.roedt.Kilde
import no.roedt.brukere.FylkeRepository
import no.roedt.lokallag.LokallagRepository
import no.roedt.person.Person
import no.roedt.person.PersonRepository
import no.roedt.person.RingesentralenGroupID
import javax.enterprise.context.Dependent

@Dependent
class VervingService(
    private val personRepository: PersonRepository,
    private val vervingRepository: VervingRepository,
    private val lokallagRepository: LokallagRepository,
    private val fylkeRepository: FylkeRepository
) {

    fun postPersonSomSkalRinges(request: AutentisertVervingRequest): Pair<Boolean, Person> {
        val postnummer = request.request.postnummer
        vervingRepository.persist(
            Verving(
                telefonnummer = request.request.telefonnummer,
                fornavn = request.request.fornavn,
                etternavn = request.request.etternavn,
                postnummer = request.request.postnummer,
                verversNavn = request.request.verversNavn
            )
        )

        val vervaFraFoer = personRepository.find("telefonnummer=?1", request.request.telefonnummer).singleResultOptional<Person>()
        if (vervaFraFoer.isPresent) return Pair(false, vervaFraFoer.get())

        val person = Person(
            hypersysID = null,
            fornavn = request.request.fornavn,
            etternavn = request.request.etternavn,
            telefonnummer = request.request.telefonnummer,
            email = null,
            postnummer = postnummer,
            fylke = fylkeRepository.toFylke(postnummer),
            lokallag = lokallagRepository.fromPostnummer(postnummer),
            groupID = RingesentralenGroupID.ManglerSamtykke.nr,
            kilde = Kilde.Verva,
            iperID = null
        )
        personRepository.persist(person)
        return Pair(true, person)
    }

    fun mottaSvar(request: AutentisertMottaSvarRequest) {
        val erBruker = personRepository
            .find("telefonnummer", request.request.telefonnummer)
            .firstResultOptional<Person>()
            .map { it.groupID() }
            .filter { RingesentralenGroupID.isBrukerEllerVenter(it) }
        if (erBruker.isPresent) return

        val nextValue = if (request.request.svar) RingesentralenGroupID.PrioritertAaRinge else RingesentralenGroupID.Slett
        personRepository.update("groupID=?1 where telefonnummer=?2", nextValue.nr, request.request.telefonnummer)
    }
}
