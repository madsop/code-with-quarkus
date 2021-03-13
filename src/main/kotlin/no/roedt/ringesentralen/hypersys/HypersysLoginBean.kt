package no.roedt.ringesentralen.hypersys

import no.roedt.ringesentralen.hypersys.externalModel.Profile
import no.roedt.ringesentralen.person.Person
import no.roedt.ringesentralen.person.PersonRepository
import no.roedt.ringesentralen.person.RingerIV1
import no.roedt.ringesentralen.person.RingerIV1Repository
import no.roedt.ringesentralen.token.GCPSecretManager
import javax.enterprise.context.Dependent
import kotlin.math.max

@Dependent
class HypersysLoginBean(
    private val hypersysProxy: HypersysProxy,
    private val modelConverter: ModelConverter,
    private val gcpSecretManager: GCPSecretManager,
    private val loginAttemptRepository: LoginAttemptRepository,
    private val personRepository: PersonRepository,
    private val ringerRepository: RingerRepository,
    private val ringerIV1Repository: RingerIV1Repository
) {
    fun login(loginRequest: LoginRequest): Token {
        val brukerId = gcpSecretManager.getHypersysBrukerId()
        val brukerSecret = gcpSecretManager.getHypersysBrukerSecret()
        val response = hypersysProxy.post(brukerId, brukerSecret, "grant_type=password&username=${loginRequest.brukarnamn}&password=${loginRequest.passord}")
        if (response.statusCode() != 200) {
            return hypersysProxy.readResponse(response, UgyldigToken::class.java)
        }

        val gyldigToken = hypersysProxy.readResponse(response, GyldigPersonToken::class.java)
        oppdaterRingerFraaHypersys(gyldigToken)
        return gyldigToken
    }

    private fun oppdaterRingerFraaHypersys(token: GyldigPersonToken) {
        val profile: Profile = hypersysProxy.get("actor/api/profile/", token, Profile::class.java)
        val convertedPerson  = modelConverter.convert(profile.user)

        personRepository.save(convertedPerson)
        var id = convertedPerson.id
        if (id == null) personRepository.find("email", convertedPerson.email).firstResult<Person>().id.also { id = it }

        if (ringerRepository.find("personId", id.toInt()).count() == 0L) {
            ringerRepository.persist(Ringer(personId = id.toInt()))
        }

        ringerIV1Repository.find("telefonnummer", convertedPerson.telefonnummer)
            .list<RingerIV1>()
            .map { it.brukergruppe }
            .firstOrNull()
            ?.let { convertedPerson.groupID = max(it, convertedPerson.groupID) }

        loginAttemptRepository.persist(LoginAttempt(hypersysID = profile.user.id))
    }
}