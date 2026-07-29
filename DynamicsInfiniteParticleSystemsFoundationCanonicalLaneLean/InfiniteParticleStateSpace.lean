import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean

abbrev Config := ℕ → ℝ
abbrev ParticleNumber := ℕ

structure LocalState where
  config : Config
  particleCount : ParticleNumber

def zeroConfig : Config := fun _ => 0

structure DynamicsOperator where
  freeEvolution : Config → Config
  interaction : Config → Config
  observable : Config → ℝ
  freeEvolutionZeroConfig : freeEvolution zeroConfig = zeroConfig
  interactionZeroConfig : interaction zeroConfig = zeroConfig
  observableZeroConfig : observable zeroConfig = 0

def primitiveDynamicsOperator : DynamicsOperator := {
  freeEvolution := fun _ => zeroConfig
  interaction := fun _ => zeroConfig
  observable := fun _ => 0
  freeEvolutionZeroConfig := rfl
  interactionZeroConfig := rfl
  observableZeroConfig := rfl
}

end DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean
end HautevilleHouse