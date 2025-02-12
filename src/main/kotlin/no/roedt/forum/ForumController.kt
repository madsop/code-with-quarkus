package no.roedt.forum

import jakarta.annotation.security.RolesAllowed
import jakarta.enterprise.context.RequestScoped
import jakarta.ws.rs.Consumes
import jakarta.ws.rs.GET
import jakarta.ws.rs.POST
import jakarta.ws.rs.Path
import jakarta.ws.rs.PathParam
import jakarta.ws.rs.Produces
import jakarta.ws.rs.core.Context
import jakarta.ws.rs.core.MediaType
import jakarta.ws.rs.core.SecurityContext
import no.roedt.forum.underforum.Traad
import no.roedt.forum.underforum.TraadRequest
import org.eclipse.microprofile.faulttolerance.Retry
import org.eclipse.microprofile.jwt.JsonWebToken
import org.eclipse.microprofile.openapi.annotations.Operation
import org.eclipse.microprofile.openapi.annotations.security.SecurityRequirement
import org.eclipse.microprofile.openapi.annotations.tags.Tag

@Path("/forum")
@Tag(name = "Forum")
@SecurityRequirement(name = "jwt")
@RequestScoped
class ForumController(
    val forumService: ForumService,
    val jwt: JsonWebToken
) {
    @RolesAllowed(ForumRolle.DEBATTANT)
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("/")
    @Operation(summary = "Finn alle underforum i forumet", description = ForumRolle.DEBATTANT)
    @Retry
    fun hentAlleUnderforum(
        @Context ctx: SecurityContext
    ) = forumService.hentAlleUnderforum()

    @RolesAllowed(ForumRolle.DEBATTANT)
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("/traader/{underforum}")
    @Operation(summary = "Finn alle tråder i et underforum", description = ForumRolle.DEBATTANT)
    @Retry
    fun hentTraaderForUnderforum(
        @Context ctx: SecurityContext,
        @PathParam("underforum") underforum: String
    ) = forumService.hentTraader(underforum)

    @RolesAllowed(ForumRolle.DEBATTANT)
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @Path("/traader/traad/{underforum}/{tittel}")
    @Operation(summary = "Finn en gitt tråd", description = ForumRolle.DEBATTANT)
    @Retry
    fun hentTraad(
        @Context ctx: SecurityContext,
        @PathParam("underforum") underforum: String,
        @PathParam("tittel") tittel: String
    ) = forumService.hentTraad(Traad(tittel = tittel, underforum = underforum))

    @jakarta.annotation.security.RolesAllowed(ForumRolle.DEBATTANT)
    @POST
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @Path("/traader/traad/{underforum}/{traad}")
    @Operation(summary = "Opprett en tråd", description = ForumRolle.DEBATTANT)
    @Retry
    fun opprettTraad(
        @Context ctx: SecurityContext,
        @PathParam("underforum") underforum: String,
        @PathParam("traad") traad: String,
        request: LinkedHashMap<String, Any>
    ) = forumService.opprettTraad(
        TraadRequest(
            underforum = underforum,
            id = traad,
            node = request
        )
    )
}
