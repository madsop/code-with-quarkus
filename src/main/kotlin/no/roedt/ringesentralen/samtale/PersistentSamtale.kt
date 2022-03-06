package no.roedt.ringesentralen.samtale

import io.quarkus.hibernate.orm.panache.PanacheRepositoryBase
import io.quarkus.runtime.annotations.RegisterForReflection
import no.roedt.RingesentralenPanacheEntity
import no.roedt.ringesentralen.Modus
import javax.enterprise.context.ApplicationScoped
import javax.persistence.Column
import javax.persistence.Entity
import javax.persistence.EnumType
import javax.persistence.Enumerated
import javax.persistence.Table

@Table(name = "samtale")
@Entity
@RegisterForReflection
data class PersistentSamtale(
    var ringt: Int,
    var ringer: Int,
    var resultat: Int,
    var ringesesjon: Int,
    @Column(columnDefinition = "longtext")
    var kommentar: String?,
    @Enumerated(EnumType.STRING) var modus: Modus
) : RingesentralenPanacheEntity() {
    constructor() : this(
        ringt = 0,
        ringer = 0,
        resultat = 0,
        ringesesjon = 0,
        kommentar = null,
        modus = Modus.velgere
    )
}

@ApplicationScoped
class PersistentSamtaleRepository : PanacheRepositoryBase<PersistentSamtale, Int>
