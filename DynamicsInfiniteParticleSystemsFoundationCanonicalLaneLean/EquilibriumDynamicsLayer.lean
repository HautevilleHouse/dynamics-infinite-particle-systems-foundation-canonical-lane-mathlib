import DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean.ErgodicityLayer

namespace HautevilleHouse
namespace DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean

structure GlauberDynamics (Ω : Type) where
  generator : (Ω → ℝ) → (Ω → ℝ)
  invariantMeasure : MeasureTheory.Measure Ω
  reversible : Prop
  spectralGap : Prop

structure KawasakiDynamics (Ω : Type) where
  generator : (Ω → ℝ) → (Ω → ℝ)
  invariantMeasure : MeasureTheory.Measure Ω
  reversible : Prop
  selfDiffusivity : Prop

structure EquilibriumCertificate where
  glauber : GlauberDynamics (ParticleConfig ℕ)
  kawasaki : KawasakiDynamics (ParticleConfig ℕ)
  mixingTime : Prop
  logSobolev : Prop
  mixingProof : mixingTime
  logSobolevProof : logSobolev

end DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean
end HautevilleHouse
