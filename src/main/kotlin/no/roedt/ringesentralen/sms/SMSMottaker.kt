package no.roedt.ringesentralen.sms

import io.quarkus.runtime.annotations.RegisterForReflection

@RegisterForReflection
data class SMSMottaker(
    val personId: Long,
    val telefonnummer: String
)
