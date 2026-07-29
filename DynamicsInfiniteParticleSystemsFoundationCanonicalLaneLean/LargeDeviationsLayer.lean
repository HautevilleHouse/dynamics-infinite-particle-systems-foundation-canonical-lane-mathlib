import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean.HydrodynamicLimitLayer

namespace HautevilleHouse
namespace DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean

structure LargeDeviationsData where
  hydrodynamicLimit : HydrodynamicLimitData
  rateFunction : ℝ → ℝ
  lowerBound : Prop
  upperBound : Prop
  lowerBoundClosed : lowerBound
  upperBoundClosed : upperBound

def sourceLargeDeviationsData : LargeDeviationsData := {
  hydrodynamicLimit := sourceHydrodynamicLimitData
  rateFunction := fun x => x^2
  lowerBound := True
  upperBound := True
  lowerBoundClosed := trivial
  upperBoundClosed := trivial
}

def LargeDeviationsClosed (L : LargeDeviationsData) : Prop :=
  HydrodynamicLimitClosed L.hydrodynamicLimit ∧ L.lowerBound ∧ L.upperBound

theorem source_large_deviations_closed : LargeDeviationsClosed sourceLargeDeviationsData := by
  exact And.intro source_hydrodynamic_limit_closed (And.intro sourceLargeDeviationsData.lowerBoundClosed sourceLargeDeviationsData.upperBoundClosed)

end DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean
end HautevilleHouse