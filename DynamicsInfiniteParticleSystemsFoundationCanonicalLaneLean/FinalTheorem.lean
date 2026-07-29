import canonicalLaneMathlib.AdmissibleClass
import DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean.HydrodynamicLimitLayer

namespace HautevilleHouse
namespace DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean

def InfiniteParticleSystemsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem infinite_particle_systems_endgame (A : AdmissibleClass) :
    InfiniteParticleSystemsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean
end HautevilleHouse