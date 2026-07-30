import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VnPeriodicityCanonicalLaneLean

structure AdamsSpectralSequencePackage where
  E2Page : Type u
  differentials : List (Nat × Nat → Nat × Nat)
  vanishingLine : Prop
  periodicityPattern : Prop
  convergenceTheorem : Prop

structure AdamsSpectralSequenceEvidence (A : AdamsSpectralSequencePackage) where
  vanishingLineClosed : A.vanishingLine
  periodicityPatternClosed : A.periodicityPattern
  convergenceTheoremClosed : A.convergenceTheorem

def AdamsSpectralSequenceClosed (A : AdamsSpectralSequencePackage) : Prop :=
  A.vanishingLine ∧ A.periodicityPattern ∧ A.convergenceTheorem

theorem adams_spectral_sequence_closed_from_evidence (A : AdamsSpectralSequencePackage)
    (E : AdamsSpectralSequenceEvidence A) : AdamsSpectralSequenceClosed A := by
  exact And.intro E.vanishingLineClosed (And.intro E.periodicityPatternClosed E.convergenceTheoremClosed)

end VnPeriodicityCanonicalLaneLean
end HautevilleHouse
