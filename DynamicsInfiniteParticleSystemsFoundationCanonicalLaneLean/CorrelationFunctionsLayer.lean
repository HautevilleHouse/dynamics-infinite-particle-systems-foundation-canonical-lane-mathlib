import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean.GibbsMeasureLayer

namespace HautevilleHouse
namespace DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean

structure CorrelationFunctionData where
  gibbsMeasure : GibbsMeasureData
  truncationOrder : ℕ
  clusterProperty : Prop
  clusterPropertyClosed : clusterProperty

def sourceCorrelationFunctionData : CorrelationFunctionData := {
  gibbsMeasure := sourceGibbsMeasureData
  truncationOrder := 2
  clusterProperty := True
  clusterPropertyClosed := trivial
}

def CorrelationFunctionsClosed (C : CorrelationFunctionData) : Prop :=
  GibbsMeasureClosed C.gibbsMeasure ∧ C.clusterProperty

theorem source_correlation_functions_closed : CorrelationFunctionsClosed sourceCorrelationFunctionData := by
  exact And.intro source_gibbs_measure_closed sourceCorrelationFunctionData.clusterPropertyClosed

end DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean
end HautevilleHouse