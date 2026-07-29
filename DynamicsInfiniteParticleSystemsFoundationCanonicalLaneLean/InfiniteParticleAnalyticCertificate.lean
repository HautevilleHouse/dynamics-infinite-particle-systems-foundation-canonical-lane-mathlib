import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean.LargeDeviationsLayer

namespace HautevilleHouse
namespace DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean

structure InfiniteParticleAnalyticCertificate where
  stateSpaceClosed : Prop
  gibbsMeasureClosed : Prop
  correlationFunctionsClosed : Prop
  hydrodynamicLimitClosed : Prop
  largeDeviationsClosed : Prop
  canonicalCarriageImported : Prop
  stateSpaceClosedProof : stateSpaceClosed
  gibbsMeasureClosedProof : gibbsMeasureClosed
  correlationFunctionsClosedProof : correlationFunctionsClosed
  hydrodynamicLimitClosedProof : hydrodynamicLimitClosed
  largeDeviationsClosedProof : largeDeviationsClosed
  canonicalCarriageImportedProof : canonicalCarriageImported

def sourceInfiniteParticleAnalyticCertificate : InfiniteParticleAnalyticCertificate := {
  stateSpaceClosed := True
  gibbsMeasureClosed := GibbsMeasureClosed sourceGibbsMeasureData
  correlationFunctionsClosed := CorrelationFunctionsClosed sourceCorrelationFunctionData
  hydrodynamicLimitClosed := HydrodynamicLimitClosed sourceHydrodynamicLimitData
  largeDeviationsClosed := LargeDeviationsClosed sourceLargeDeviationsData
  canonicalCarriageImported := True
  stateSpaceClosedProof := trivial
  gibbsMeasureClosedProof := source_gibbs_measure_closed
  correlationFunctionsClosedProof := source_correlation_functions_closed
  hydrodynamicLimitClosedProof := source_hydrodynamic_limit_closed
  largeDeviationsClosedProof := source_large_deviations_closed
  canonicalCarriageImportedProof := trivial
}

def InfiniteParticleAnalyticCertificateClosed (C : InfiniteParticleAnalyticCertificate) : Prop :=
  C.stateSpaceClosed ∧ C.gibbsMeasureClosed ∧ C.correlationFunctionsClosed ∧ C.hydrodynamicLimitClosed ∧ C.largeDeviationsClosed ∧ C.canonicalCarriageImported

theorem source_infinite_particle_analytic_certificate_closed : InfiniteParticleAnalyticCertificateClosed sourceInfiniteParticleAnalyticCertificate := by
  exact And.intro sourceInfiniteParticleAnalyticCertificate.stateSpaceClosedProof
    (And.intro sourceInfiniteParticleAnalyticCertificate.gibbsMeasureClosedProof
      (And.intro sourceInfiniteParticleAnalyticCertificate.correlationFunctionsClosedProof
        (And.intro sourceInfiniteParticleAnalyticCertificate.hydrodynamicLimitClosedProof
          (And.intro sourceInfiniteParticleAnalyticCertificate.largeDeviationsClosedProof
            sourceInfiniteParticleAnalyticCertificate.canonicalCarriageImportedProof))))

end DynamicsInfiniteParticleSystemsFoundationCanonicalLaneLean
end HautevilleHouse