import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean.InfiniteParticleAnalyticCertificate
import HautevilleHouse.DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean.GateLemmas
import HautevilleHouse.DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean

def infiniteParticleAdmittedObject : AdmittedTheoremObject := {
  object := theoremSpecificObject
  localWitness := "Infinite particle system certificate with Gibbs measure, correlation functions, hydrodynamic limit, large deviations, and endpoint closure."
  bridgeEvidence := "source-derived Lean certificate fields"
  sourceKeyChecked := rfl
  theoremObjectChecked := rfl
}

def infiniteParticleAdmissibleClass : AdmissibleClass := {
  object := infiniteParticleAdmittedObject
  endpointSatisfied := InfiniteParticleAnalyticCertificateClosed sourceInfiniteParticleAnalyticCertificate
  remainderRecorded := True
  gateWitness := Or.inl source_infinite_particle_analytic_certificate_closed
}

def AdmittedInfiniteParticleClosure : Prop :=
  InfiniteParticleAnalyticCertificateClosed sourceInfiniteParticleAnalyticCertificate ∧
  ConstrainedTheoremClosure infiniteParticleAdmissibleClass

theorem admitted_infinite_particle_closure_checked : AdmittedInfiniteParticleClosure := by
  exact And.intro source_infinite_particle_analytic_certificate_closed
    (constrained_theorem_closure infiniteParticleAdmissibleClass)

end DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean
end HautevilleHouse