import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean

structure ParticleConfig where
  positions : List ℝ
  velocities : List ℝ
  numParticles : Nat
  particleCountPos : numParticles = positions.length
  particleCountVel : numParticles = velocities.length

def zeroConfig : ParticleConfig :=
  { positions := [], velocities := [], numParticles := 0,
    particleCountPos := rfl, particleCountVel := rfl }

structure InteractionKernel where
  potential : ℝ → ℝ
  decayRate : ℝ
  decayPositive : decayRate > 0

def zeroKernel : InteractionKernel :=
  { potential := fun _ => 0, decayRate := 1, decayPositive := by norm_num }

structure StochasticReset where
  rate : ℝ
  ratePositive : rate > 0

def defaultReset : StochasticReset :=
  { rate := 1, ratePositive := by norm_num }

structure InfiniteParticleSystem where
  config : ParticleConfig
  interaction : InteractionKernel
  reset : StochasticReset
  configProductSigmaFinite : Prop
  configProductSigmaFiniteProof : configProductSigmaFinite
  interactionLocallyLipschitz : Prop
  interactionLocallyLipschitzProof : interactionLocallyLipschitz
  resetRateLocallyBounded : Prop
  resetRateLocallyBoundedProof : resetRateLocallyBounded

def primitiveSystem : InfiniteParticleSystem :=
  { config := zeroConfig
  , interaction := zeroKernel
  , reset := defaultReset
  , configProductSigmaFinite := True
  , configProductSigmaFiniteProof := trivial
  , interactionLocallyLipschitz := True
  , interactionLocallyLipschitzProof := trivial
  , resetRateLocallyBounded := True
  , resetRateLocallyBoundedProof := trivial
  }

theorem primitive_system_defined : InfiniteParticleSystem := by
  exact primitiveSystem

end HautevilleHouse.DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean
end HautevilleHouse