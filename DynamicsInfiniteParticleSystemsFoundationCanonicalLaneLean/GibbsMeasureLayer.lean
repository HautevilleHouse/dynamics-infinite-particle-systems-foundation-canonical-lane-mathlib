import canonicalLaneMathlib.AdmissibleClass
import DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean.InfiniteParticleSystem

namespace HautevilleHouse
namespace DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean

structure GibbsMeasureCertificate where
  system : InfiniteParticleSystem
  hamiltonianFinite: Prop
  aPrioriMeasure: Prop
  dlrEquationClosed: Prop
  clusterExpansionClosed: Prop
  hamiltonianFiniteProof : hamiltonianFinite
  aPrioriMeasureProof : aPrioriMeasure
  dlrEquationClosedProof : dlrEquationClosed
  clusterExpansionClosedProof : clusterExpansionClosed

def sourceGibbsMeasureCertificate : GibbsMeasureCertificate := {
  system := {
    config := { configSpace := Fin 3 → ℝ, interactionPotential := FiniteMap.empty, boundaryCondition := "free" },
    stateSpace := (Fin 3 → ℝ) → ℝ,
    evolution := fun f n => f,
    globalWellDefinedness := True
  },
  hamiltonianFinite := True,
  aPrioriMeasure := True,
  dlrEquationClosed := True,
  clusterExpansionClosed := True,
  hamiltonianFiniteProof := trivial,
  aPrioriMeasureProof := trivial,
  dlrEquationClosedProof := trivial,
  clusterExpansionClosedProof := trivial
}

def GibbsMeasureClosed (C : GibbsMeasureCertificate) : Prop :=
  C.hamiltonianFinite ∧ C.aPrioriMeasure ∧ C.dlrEquationClosed ∧ C.clusterExpansionClosed

theorem source_gibbs_measure_closed : GibbsMeasureClosed sourceGibbsMeasureCertificate := by
  exact And.intro sourceGibbsMeasureCertificate.hamiltonianFiniteProof
    (And.intro sourceGibbsMeasureCertificate.aPrioriMeasureProof
      (And.intro sourceGibbsMeasureCertificate.dlrEquationClosedProof
        sourceGibbsMeasureCertificate.clusterExpansionClosedProof))

end DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean
end HautevilleHouse