import HautevilleHouse.VnPeriodicityCanonicalLaneLean.PeriodicityOperator

/-!
# Endpoint Classification Package
-/

namespace HautevilleHouse
namespace VnPeriodicityCanonicalLaneLean

structure EndpointClassificationPackage {P : VnPeriodicityPackage} {A : AdamsOperationsPackage P} {S : SpectralSequencePackage A} {O : PeriodicityOperatorPackage S} where
  targetSpectrum : Type
  targetHomotopyGroups : Type
  detectionStatement : Prop
  periodicityLifts : Prop
  endpointMatchesBottPeriodicity : Prop

structure EndpointClassificationEvidence {P : VnPeriodicityPackage} {A : AdamsOperationsPackage P} {S : SpectralSequencePackage A} {O : PeriodicityOperatorPackage S} (E : EndpointClassificationPackage O) where
  detectionStatementClosed : E.detectionStatement
  periodicityLiftsClosed : E.periodicityLifts
  endpointMatchesBottPeriodicityClosed : E.endpointMatchesBottPeriodicity

def EndpointClassificationClosed {P : VnPeriodicityPackage} {A : AdamsOperationsPackage P} {S : SpectralSequencePackage A} {O : PeriodicityOperatorPackage S} (E : EndpointClassificationPackage O) : Prop :=
  E.detectionStatement ∧ E.periodicityLifts ∧ E.endpointMatchesBottPeriodicity

theorem endpoint_classification_closed_from_evidence {P : VnPeriodicityPackage} {A : AdamsOperationsPackage P} {S : SpectralSequencePackage A} {O : PeriodicityOperatorPackage S} (E : EndpointClassificationPackage O) (Ev : EndpointClassificationEvidence E) : EndpointClassificationClosed E :=
  And.intro Ev.detectionStatementClosed (And.intro Ev.periodicityLiftsClosed Ev.endpointMatchesBottPeriodicityClosed)

theorem endpoint_classification_supports_vn_periodicity {P : VnPeriodicityPackage} {A : AdamsOperationsPackage P} {S : SpectralSequencePackage A} {O : PeriodicityOperatorPackage S} (E : EndpointClassificationPackage O) : E.detectionStatement := 
  E.detectionStatement

end VnPeriodicityCanonicalLaneLean
end HautevilleHouse