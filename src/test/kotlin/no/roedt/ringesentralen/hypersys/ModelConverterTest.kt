package no.roedt.ringesentralen.hypersys

import com.nhaarman.mockitokotlin2.mock
import no.roedt.ringesentralen.LokallagRepository
import no.roedt.ringesentralen.Telefonnummer
import org.junit.jupiter.api.Test
import javax.persistence.EntityManager
import kotlin.test.assertEquals
import kotlin.test.assertNull

internal class ModelConverterTest {

    private val entityManager: EntityManager = mock()
    private val lokallagRepository: LokallagRepository = mock()

    private val modelConverter: ModelConverter = ModelConverter(
        entityManager = entityManager,
        lokallagRepository = lokallagRepository
    )

    @Test
    fun `taklar manglande telefonnummer`() {
        assertNull(modelConverter.toTelefonnummer(""))
    }

    @Test
    fun `parsar vanleg telefonnumer ok`() {
        assertEquals(
            modelConverter.toTelefonnummer("+47 81549300"),
            Telefonnummer(landkode = "+47", nummer = 81549300))
    }
}