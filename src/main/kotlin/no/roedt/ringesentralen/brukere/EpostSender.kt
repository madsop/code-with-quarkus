package no.roedt.ringesentralen.brukere

import io.quarkus.mailer.Mail
import io.quarkus.mailer.Mailer
import no.roedt.person.GroupID
import no.roedt.person.Person
import org.eclipse.microprofile.config.inject.ConfigProperty
import javax.enterprise.context.ApplicationScoped
import javax.inject.Inject

abstract class AbstractEpostSender(open var mailer: Mailer) {
    protected fun sendEpost(
        person: Person,
        epost: Epost,
        mock: String
    ) {
        if (person.email == null || person.email == "") {
            return
        }
        if (mock.toBoolean()) {
            println("Epostutsending er avskrudd. Ville elles sendt ${epost.tekstAaLoggeHvisDeaktivert}")
            return
        }
        println("Sender epost: ${epost.loggFoerSendingTekst}")
        mailer.send(
            Mail.withText(
                "${person.email}",
                epost.tittel,
                epost.tekst
            )
        )
    }
}

@ApplicationScoped
class EpostSender(override var mailer: Mailer) : AbstractEpostSender(mailer) {

    @Inject
    @ConfigProperty(name = "quarkus.mailer.mock")
    lateinit var mock: String

    fun sendEpostOmEndraStatus(person: Person, nyTilgang: GroupID) {
        sendEpost(
            person,
            Epost(
                tekst = "Hei, ${person.fornavn} ${person.etternavn}. " +
                    "Du har no fått endra status i Raudts Ringesentral." + System.lineSeparator() +
                    "Din nye status er: ${nyTilgang.skildring}" + System.lineSeparator().repeat(3) +
                    "Dette er ein automatisk utsendt e-post.",
                tekstAaLoggeHvisDeaktivert = "${nyTilgang.name} til ${person.id}",
                loggFoerSendingTekst = "Person med id ${person.id} har no fått ${nyTilgang.name}",
                tittel = "E-post frå Raudts Ringesentral"
            ),
            mock
        )
    }

    fun sendEpostOmRegistrertSoMeFrivillig(person: Person) {
        sendEpost(
            person,
            Epost(
                tekst = """Hei, ${person.fornavn} ${person.etternavn}. 
                    Vi har nå registrert at du vil hjelpe Rødt å spre vårt politiske budskap i sosiale medier fram mot valget.
                   ${System.lineSeparator()}
                   Er dette feil? Kontakt oss på roedt@roedt.no, så fikser vi det.
                   ${System.lineSeparator()}
                   Dette er ein automatisk utsendt e-post.
                """.trimMargin(),
                loggFoerSendingTekst = "${person.fornavn} ${person.etternavn} er registrert som SoMe-frivillig",
                tekstAaLoggeHvisDeaktivert = "$person er registrert som SoMe-frivillig",
                tittel = "Du er nå registrert som sosiale media-aktivist"
            ),
            mock
        )
    }
}
