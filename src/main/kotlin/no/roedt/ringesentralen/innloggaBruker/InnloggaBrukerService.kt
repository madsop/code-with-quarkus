package no.roedt.ringesentralen.innloggaBruker

import no.roedt.ringesentralen.Roles
import no.roedt.ringesentralen.brukere.FylkeRepository
import no.roedt.lokallag.Lokallag
import no.roedt.lokallag.LokallagRepository
import no.roedt.ringesentralen.person.GroupID
import no.roedt.ringesentralen.person.Person
import no.roedt.ringesentralen.person.PersonRepository
import no.roedt.ringesentralen.person.UserId
import java.util.Optional
import javax.enterprise.context.ApplicationScoped

@ApplicationScoped
class InnloggaBrukerService(
    private val personRepository: PersonRepository,
    private val fylkeRepository: FylkeRepository,
    private val lokallagRepository: LokallagRepository
) {
    fun getProfil(userId: UserId): Profil? = getPerson(userId).map { it.toProfil() }.orElse(null)

    private fun getPerson(userId: UserId): Optional<Person> =
        personRepository.find("hypersysID", userId.userId).firstResultOptional()

    private fun Person.toProfil(): Profil = Profil(
        hypersysID = hypersysID,
        fornavn = fornavn,
        etternavn = etternavn,
        telefonnummer = telefonnummer,
        email = email,
        postnummer = postnummer,
        fylke = fylke,
        lokallag = lokallag,
        rolle = GroupID.from(groupID()).roller,
        fylkeNavn = fylkeRepository.findById(fylke).navn,
        lokallagNavn = lokallagRepository.findById(lokallag).navn
    )

    fun getLokallag(userId: UserId, groups: Set<String>): List<Lokallag> = when {
        groups.contains(Roles.admin) -> lokallagRepository.findAll().list()
        groups.contains(Roles.godkjenner) -> lokallagRepository.fromFylke(
            fylkeRepository.getFylkeIdFraLokallag(
                getPerson(userId).get().lokallag
            )
        )
        getProfil(userId) == null -> listOf()
        else -> listOf(lokallagRepository.findById(getPerson(userId).get().lokallag))
    }
}
