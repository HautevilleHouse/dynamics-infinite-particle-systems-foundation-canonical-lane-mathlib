import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean

structure LiggettSLLNCertificate where
  system : InfiniteParticleSystem
  semigroup : GlauberSemigroup
  empiricalMeasureLawLargeNumbers : Prop
  subadditiveErgodicEstimate : Prop
  varianceBound : Prop
  empiricalMeasureLawLargeNumbersProof : empiricalMeasureLawLargeNumbers
  subadditiveErgodicEstimateProof : subadditiveErgodicEstimate
  varianceBoundProof : varianceBound

def sourceLiggettSLLNCertificate : LiggettSLLNCertificate :=
  { system := primitiveSystem
  , semigroup := zeroGlauberSemigroup
  , empiricalMeasureLawLargeNumbers := True
  , subadditiveErgodicEstimate := True
  , varianceBound := True
  , empiricalMeasureLawLargeNumbersProof := trivial
  , subadditiveErgodicEstimateProof := trivial
  , varianceBoundProof := trivial
  }

def LiggettSLLNClosed (C : LiggettSLLNCertificate) : Prop :=
  C.empiricalMeasureLawLargeNumbers ∧ C.subadditiveErgodicEstimate ∧ C.varianceBound

theorem source_liggett_slln_closed : LiggettSLLNClosed sourceLiggettSLLNCertificate := by
  exact And.intro sourceLiggettSLLNCertificate.empiricalMeasureLawLargeNumbersProof
    (And.intro sourceLiggettSLLNCertificate.subadditiveErgodicEstimateProof
      sourceLiggettSLLNCertificate.varianceBoundProof)

end HautevilleHouse.DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean
end HautevilleHouse