package no.roedt.hypersys

import no.roedt.token.SecretFactory
import org.eclipse.microprofile.faulttolerance.Fallback
import org.eclipse.microprofile.faulttolerance.Timeout
import javax.annotation.PostConstruct
import javax.enterprise.context.ApplicationScoped

@ApplicationScoped
class HypersysSystemTokenVerifier(
    val hypersysProxy: HypersysProxy,
    val secretFactory: SecretFactory
) {
    private lateinit var token: Token

    @PostConstruct
    fun fetchToken() {
        token = getTokenFromHypersys()
    }

    @Timeout(value = 10000L)
    @Fallback(fallbackMethod = "settTokenUgyldig")
    fun getTokenFromHypersys(): Token {
        val response = hypersysProxy.post(secretFactory.getHypersysClientId(), secretFactory.getHypersysClientSecret(), "grant_type=client_credentials", loggingtekst = "systeminnlogging")
        return if (response.statusCode() != 200) {
            hypersysProxy.readResponse(response, UgyldigToken::class.java)
        } else {
            hypersysProxy.readResponse(response, GyldigSystemToken::class.java)
        }
    }

    private fun settTokenUgyldig(): Token = UgyldigToken(error = "Kunne ikke hente token fra Hypersys")

    fun assertGyldigSystemToken(): GyldigSystemToken {
        if (token is UgyldigToken) throw RuntimeException("Ugyldig token $token")
        ensureTokenIsValid()
        return token as GyldigSystemToken
    }

    private fun ensureTokenIsValid() {
        when {
            token is UgyldigToken -> return
            (token as GyldigSystemToken).expires_in <= 0 -> fetchToken()
        }
    }
}
