import DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean

definition ParticleConfig
  (Ω : Type) [MeasurableSpace Ω] : Type :=
  ℕ → Ω

definition FiniteSubsetConfig
  (Ω : Type) [MeasurableSpace Ω] : Type :=
  Σ (k : ℕ), Fin k → Ω

structure InfiniteVolumeMeasure (Ω : Type) [MeasurableSpace Ω] where
  configSpace : Set (ParticleConfig Ω)
  measure : MeasureTheory.Measure (ParticleConfig Ω)
  locallyFinite : ∀ (Λ : Set ℕ), MeasureTheory.FiniteMeasure (measure.restrict Λ)

end DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean
end HautevilleHouse
