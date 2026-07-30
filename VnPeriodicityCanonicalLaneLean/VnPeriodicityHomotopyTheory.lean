import canonicalLaneMathlib.AdmissibleClass

/-!
# Vn Periodicity Homotopy Theory Package
-/

namespace HautevilleHouse
namespace VnPeriodicityCanonicalLaneLean

structure VnPeriodicityHomotopyTheoryPackage where
  vnSpectrum : Type u
  spectrumStructure : Spectrum vnSpectrum
  homotopyGroups : (k : ℤ) → AbelianGroup
  periodicityIsomorphism : (k : ℤ) → homotopyGroups k ≅ homotopyGroups (k + n)
  periodicityIsomorphismNatural : Prop
  coefficientRing : Type v
  coefficientRingStructure : Ring coefficientRing
  periodicityMapOnCoefficients : coefficientRing → coefficientRing
  periodicityMapRingHom : RingHom coefficientRing coefficientRing
  periodicityMapN : (periodicityMapOnCoefficients ^ n) = id

structure VnPeriodicityHomotopyTheoryEvidence (H : VnPeriodicityHomotopyTheoryPackage) where
  periodicityIsomorphismNaturalClosed : H.periodicityIsomorphismNatural
  periodicityMapRingHomClosed : H.periodicityMapRingHom
  periodicityMapNClosed : H.periodicityMapN

def VnPeriodicityHomotopyTheoryClosed (H : VnPeriodicityHomotopyTheoryPackage) : Prop :=
  H.periodicityIsomorphismNatural ∧ H.periodicityMapRingHom ∧ H.periodicityMapN

theorem vn_periodicity_homotopy_theory_closed_from_evidence
    (H : VnPeriodicityHomotopyTheoryPackage) (E : VnPeriodicityHomotopyTheoryEvidence H) :
    VnPeriodicityHomotopyTheoryClosed H := by
  exact And.intro E.periodicityIsomorphismNaturalClosed
    (And.intro E.periodicityMapRingHomClosed E.periodicityMapNClosed)

end VnPeriodicityCanonicalLaneLean
end HautevilleHouse
