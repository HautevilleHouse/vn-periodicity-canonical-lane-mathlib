import canonicalLaneMathlib.AdmissibleClass

/-!
# Vn Periodicity Spectral Sequence Package
-/

namespace HautevilleHouse
namespace VnPeriodicityCanonicalLaneLean

structure VnPeriodicitySpectralSequencePackage where
  spectralSequence : Type u
  pageStructure : Nat → spectralSequence
  differentials : (r : Nat) → pageStructure r → pageStructure (r+1)
  abutment : Type v
  convergence : pageStructure ∞ → abutment
  vnPeriodicityOnE2 : Prop
  periodicityDifferential : Prop
  collapseAtPage : Nat
  collapseAtPageCondition : collapseAtPage ≥ 2

structure VnPeriodicitySpectralSequenceEvidence (S : VnPeriodicitySpectralSequencePackage) where
  vnPeriodicityOnE2Closed : S.vnPeriodicityOnE2
  periodicityDifferentialClosed : S.periodicityDifferential
  collapseAtPageConditionClosed : S.collapseAtPageCondition

def VnPeriodicitySpectralSequenceClosed (S : VnPeriodicitySpectralSequencePackage) : Prop :=
  S.vnPeriodicityOnE2 ∧ S.periodicityDifferential ∧ S.collapseAtPageCondition

theorem vn_periodicity_spectral_sequence_closed_from_evidence
    (S : VnPeriodicitySpectralSequencePackage) (E : VnPeriodicitySpectralSequenceEvidence S) :
    VnPeriodicitySpectralSequenceClosed S := by
  exact And.intro E.vnPeriodicityOnE2Closed
    (And.intro E.periodicityDifferentialClosed E.collapseAtPageConditionClosed)

end VnPeriodicityCanonicalLaneLean
end HautevilleHouse
