package no.roedt.ringesentralen.sms

import io.quarkus.hibernate.orm.panache.PanacheEntity
import io.quarkus.hibernate.orm.panache.PanacheRepository
import io.quarkus.runtime.annotations.RegisterForReflection
import javax.persistence.Entity
import javax.persistence.Table

@Table(name = "melding")
@Entity
@RegisterForReflection
data class Melding(val tekst: String) : PanacheEntity() {
    constructor() : this(
        tekst = ""
    )
}

class MeldingRepository : PanacheRepository<Melding>
