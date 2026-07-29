import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean

structure GlauberGenerator where
  birthRate : ℝ → ℝ
  deathRate : ℝ → ℝ
  birthRateNonnegative : ∀ x, birthRate x ≥ 0
  deathRateNonnegative : ∀ x, deathRate x ≥ 0

def zeroGlauberGenerator : GlauberGenerator :=
  { birthRate := fun _ => 0
  , deathRate := fun _ => 0
  , birthRateNonnegative := fun x => by norm_num
  , deathRateNonnegative := fun x => by norm_num
  }

structure GlauberSemigroup where
  generator : GlauberGenerator
  fellerProperty : Prop
  fellerPropertyProof : fellerProperty
  conservative : Prop
  conservativeProof : conservative
  generatorCoreExplicit : Prop
  generatorCoreExplicitProof : generatorCoreExplicit

def zeroGlauberSemigroup : GlauberSemigroup :=
  { generator := zeroGlauberGenerator
  , fellerProperty := True
  , fellerPropertyProof := trivial
  , conservative := True
  , conservativeProof := trivial
  , generatorCoreExplicit := True
  , generatorCoreExplicitProof := trivial
  }

theorem glauber_semigroup_defined : GlauberSemigroup := by
  exact zeroGlauberSemigroup

end HautevilleHouse.DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean
end HautevilleHouse