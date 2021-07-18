package no.roedt.ringesentralen.sms

import io.quarkus.hibernate.orm.panache.PanacheEntity
import io.quarkus.hibernate.orm.panache.PanacheRepository
import io.quarkus.runtime.annotations.RegisterForReflection
import javax.persistence.Entity
import javax.persistence.Table

@Table(name = "sendtMelding")
@Entity
@RegisterForReflection
data class SendtMelding(
    val meldingID: Long,
    val personmottaker: Long
) : PanacheEntity() {
    constructor() : this(
        meldingID = 0L,
        personmottaker = 0L
    )
}


class SendtMeldingRepository : PanacheRepository<SendtMelding>
