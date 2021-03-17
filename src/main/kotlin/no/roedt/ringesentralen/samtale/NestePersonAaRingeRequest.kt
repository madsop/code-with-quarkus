package no.roedt.ringesentralen.samtale

import io.quarkus.runtime.annotations.RegisterForReflection
import no.roedt.ringesentralen.Modus
import no.roedt.ringesentralen.person.UserId
import org.eclipse.microprofile.jwt.JsonWebToken

@RegisterForReflection
data class AutentisertNestePersonAaRingeRequest(val userId: UserId, val jwt: JsonWebToken, val modus: Modus) {
    fun userId() = userId.userId
}