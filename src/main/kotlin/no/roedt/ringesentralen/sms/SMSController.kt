package no.roedt.ringesentralen.sms

import no.roedt.ringesentralen.RingesentralenController
import no.roedt.ringesentralen.Roles
import org.eclipse.microprofile.faulttolerance.Retry
import org.eclipse.microprofile.jwt.JsonWebToken
import org.eclipse.microprofile.openapi.annotations.Operation
import org.eclipse.microprofile.openapi.annotations.security.SecurityRequirement
import org.eclipse.microprofile.openapi.annotations.tags.Tag
import javax.annotation.security.RolesAllowed
import javax.inject.Inject
import javax.transaction.Transactional
import javax.ws.rs.Consumes
import javax.ws.rs.GET
import javax.ws.rs.POST
import javax.ws.rs.Path
import javax.ws.rs.Produces
import javax.ws.rs.core.MediaType

@Path("/sms")
@Tag(name = "SMS-tjenester")
@SecurityRequirement(name = "jwt")
class SMSController(val service: SMSService) : RingesentralenController {

    @Inject
    lateinit var jwt: JsonWebToken

    @RolesAllowed(Roles.admin)
    @POST
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @Path("/melding")
    @Operation(summary = "Lagre melding", description = Roles.systembrukerFrontend)
    @Retry
    @Transactional
    fun lagreMelding(tekst: Melding) = service.lagreMelding(tekst)

    @RolesAllowed(Roles.admin)
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("/nesteUsendte")
    @Operation(summary = "Hent neste usendte å sende melding til", description = Roles.ringerForMedlemmerGodkjennerAdmin)
    @Retry
    fun hentNesteUsendte(meldingID: Long, antall: Int) = service.hentNesteUsendte(meldingID, antall)
}
