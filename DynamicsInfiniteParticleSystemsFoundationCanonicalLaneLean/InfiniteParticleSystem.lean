import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean

structure InfiniteParticleConfig where
  configSpace : Type
  interactionPotential : FiniteMap (List Nat) ℝ
  boundaryCondition : String

structure InfiniteParticleSystem where
  config : InfiniteParticleConfig
  stateSpace : Type
  evolution : (Nat → configSpace) → (Nat → configSpace)
  globalWellDefinedness : Prop

end DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean
end HautevilleHouse