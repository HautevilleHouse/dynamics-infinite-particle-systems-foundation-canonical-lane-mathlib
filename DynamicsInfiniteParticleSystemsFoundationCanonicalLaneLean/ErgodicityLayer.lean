import DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean.GibbsMeasureLayer

namespace HautevilleHouse
namespace DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean

structure TranslationInvariantMeasure (Ω : Type) [MeasurableSpace Ω] [AddGroup Ω] where
  measure : MeasureTheory.Measure Ω
  invariant : Prop
  ergodic : Prop

structure ErgodicityCertificate where
  invariantMeasures : List (TranslationInvariantMeasure (ParticleConfig ℕ))
  extremalDecomposition : Prop
  translationErgodicity : Prop
  bernoullicity : Prop
  extremalDecompositionProof : extremalDecomposition
  translationErgodicityProof : translationErgodicity
  bernoullicityProof : bernoullicity

end DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean
end HautevilleHouse
