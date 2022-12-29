package no.roedt.hypersys

import no.roedt.hypersys.externalModel.Membership
import no.roedt.lokallag.LokallagRepository
import javax.enterprise.context.Dependent

@Dependent
class LokallagConverter(val lokallagRepository: LokallagRepository) {

    fun tilLokallag(memberships: List<Membership>): Int =
        getOrganisationName(memberships)?.let { lokallagRepository.fromOrganisationName(it) } ?: -1

    fun tilLokallag(map: Map<*, *>) = lokallagRepository.fromOrganisationName(map["organisation"].toString())

    private fun getOrganisationName(memberships: List<Membership>) =
        memberships
            .asSequence()
            .sortedByDescending { it.startDate }
            .map { it.organisationName }
            .firstOrNull()
}
