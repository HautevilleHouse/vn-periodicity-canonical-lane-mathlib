import HautevilleHouse.VnPeriodicityCanonicalLaneLean.SpectralSequence

/-!
# Periodicity Operator Package
-/

namespace HautevilleHouse
namespace VnPeriodicityCanonicalLaneLean

structure PeriodicityOperatorPackage {P : VnPeriodicityPackage} {A : AdamsOperationsPackage P} {S : SpectralSequencePackage A} where
  vnOperator : Type
  degree : Nat
  invertible : Prop
  actsOnSpectralSequence : Prop
  commutesWithAdams : Prop
  periodicityTheorem : Prop

structure PeriodicityOperatorEvidence {P : VnPeriodicityPackage} {A : AdamsOperationsPackage P} {S : SpectralSequencePackage A} (O : PeriodicityOperatorPackage S) where
  invertibleClosed : O.invertible
  actsOnSpectralSequenceClosed : O.actsOnSpectralSequence
  commutesWithAdamsClosed : O.commutesWithAdams
  periodicityTheoremClosed : O.periodicityTheorem

def PeriodicityOperatorClosed {P : VnPeriodicityPackage} {A : AdamsOperationsPackage P} {S : SpectralSequencePackage A} (O : PeriodicityOperatorPackage S) : Prop :=
  O.invertible ∧ O.actsOnSpectralSequence ∧ O.commutesWithAdams ∧ O.periodicityTheorem

theorem periodicity_operator_closed_from_evidence {P : VnPeriodicityPackage} {A : AdamsOperationsPackage P} {S : SpectralSequencePackage A} (O : PeriodicityOperatorPackage S) (E : PeriodicityOperatorEvidence O) : PeriodicityOperatorClosed O :=
  And.intro E.invertibleClosed (And.intro E.actsOnSpectralSequenceClosed (And.intro E.commutesWithAdamsClosed E.periodicityTheoremClosed))

end VnPeriodicityCanonicalLaneLean
end HautevilleHouse