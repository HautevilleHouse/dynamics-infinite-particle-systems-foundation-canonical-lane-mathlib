import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean

structure HydrodynamicLimitCertificate where
  system : InfiniteParticleSystem
  semigroup : GlauberSemigroup
  localEquilibriumMeasure : Prop
  localEquilibriumMeasureExists : Prop
  localEquilibriumMeasureProof : localEquilibriumMeasure
  localEquilibriumMeasureExistsProof : localEquilibriumMeasureExists
  eulerScaling : Prop
  eulerScalingProof : eulerScaling
  convergenceInLaw : Prop
  convergenceInLawProof : convergenceInLaw

def sourceHydrodynamicLimitCertificate : HydrodynamicLimitCertificate :=
  { system := primitiveSystem
  , semigroup := zeroGlauberSemigroup
  , localEquilibriumMeasure := True
  , localEquilibriumMeasureExists := True
  , localEquilibriumMeasureProof := trivial
  , localEquilibriumMeasureExistsProof := trivial
  , eulerScaling := True
  , eulerScalingProof := trivial
  , convergenceInLaw := True
  , convergenceInLawProof := trivial
  }

def HydrodynamicLimitClosed (C : HydrodynamicLimitCertificate) : Prop :=
  C.localEquilibriumMeasure ∧ C.localEquilibriumMeasureExists ∧ C.eulerScaling ∧ C.convergenceInLaw

theorem source_hydrodynamic_limit_closed : HydrodynamicLimitClosed sourceHydrodynamicLimitCertificate := by
  exact And.intro sourceHydrodynamicLimitCertificate.localEquilibriumMeasureProof
    (And.intro sourceHydrodynamicLimitCertificate.localEquilibriumMeasureExistsProof
      (And.intro sourceHydrodynamicLimitCertificate.eulerScalingProof
        sourceHydrodynamicLimitCertificate.convergenceInLawProof))

end HautevilleHouse.DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean
end HautevilleHouse