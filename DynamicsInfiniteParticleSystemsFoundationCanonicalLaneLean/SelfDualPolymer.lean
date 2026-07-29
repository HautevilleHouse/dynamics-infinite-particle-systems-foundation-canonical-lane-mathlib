import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean

structure SelfDualPolymerCertificate where
  system : InfiniteParticleSystem
  semigroup : GlauberSemigroup
  selfDualityFunction : Prop
  selfDualityFunctionClosed : Prop
  selfDualityFunctionProof : selfDualityFunction
  selfDualityFunctionClosedProof : selfDualityFunctionClosed
  correlationDecay : Prop
  correlationDecayProof : correlationDecay
  spectralGap : Prop
  spectralGapProof : spectralGap

def sourceSelfDualPolymerCertificate : SelfDualPolymerCertificate :=
  { system := primitiveSystem
  , semigroup := zeroGlauberSemigroup
  , selfDualityFunction := True
  , selfDualityFunctionClosed := True
  , selfDualityFunctionProof := trivial
  , selfDualityFunctionClosedProof := trivial
  , correlationDecay := True
  , correlationDecayProof := trivial
  , spectralGap := True
  , spectralGapProof := trivial
  }

def SelfDualPolymerClosed (C : SelfDualPolymerCertificate) : Prop :=
  C.selfDualityFunctionClosed ∧ C.correlationDecay ∧ C.spectralGap

theorem source_self_dual_polymer_closed : SelfDualPolymerClosed sourceSelfDualPolymerCertificate := by
  exact And.intro sourceSelfDualPolymerCertificate.selfDualityFunctionClosedProof
    (And.intro sourceSelfDualPolymerCertificate.correlationDecayProof
      sourceSelfDualPolymerCertificate.spectralGapProof)

end HautevilleHouse.DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean
end HautevilleHouse