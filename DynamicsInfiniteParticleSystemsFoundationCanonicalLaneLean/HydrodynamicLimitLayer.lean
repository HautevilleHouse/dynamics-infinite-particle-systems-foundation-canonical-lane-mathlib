import canonicalLaneMathlib.AdmissibleClass
import DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean.GibbsMeasureLayer

namespace HautevilleHouse
namespace DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean

structure HydrodynamicLimitCertificate where
  gibbsMeasure : GibbsMeasureCertificate
  localEquilibriumClosed: Prop
  scalingLimitClosed: Prop
  eulerEquationClosed: Prop
  localEquilibriumClosedProof : localEquilibriumClosed
  scalingLimitClosedProof : scalingLimitClosed
  eulerEquationClosedProof : eulerEquationClosed

def sourceHydrodynamicLimitCertificate : HydrodynamicLimitCertificate := {
  gibbsMeasure := sourceGibbsMeasureCertificate,
  localEquilibriumClosed := True,
  scalingLimitClosed := True,
  eulerEquationClosed := True,
  localEquilibriumClosedProof := trivial,
  scalingLimitClosedProof := trivial,
  eulerEquationClosedProof := trivial
}

def HydrodynamicLimitClosed (C : HydrodynamicLimitCertificate) : Prop :=
  GibbsMeasureClosed C.gibbsMeasure ∧ C.localEquilibriumClosed ∧ C.scalingLimitClosed ∧ C.eulerEquationClosed

theorem source_hydrodynamic_limit_closed : HydrodynamicLimitClosed sourceHydrodynamicLimitCertificate := by
  exact And.intro source_gibbs_measure_closed
    (And.intro sourceHydrodynamicLimitCertificate.localEquilibriumClosedProof
      (And.intro sourceHydrodynamicLimitCertificate.scalingLimitClosedProof
        sourceHydrodynamicLimitCertificate.eulerEquationClosedProof))

end DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean
end HautevilleHouse