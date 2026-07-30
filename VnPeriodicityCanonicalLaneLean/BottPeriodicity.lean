import VnPeriodicityCanonicalLaneLean.ThomSpectrum

namespace HautevilleHouse
namespace VnPeriodicityCanonicalLaneLean

structure BottPeriodicityPackage {P : ThomSpectrumPackage} (Q : VnAdmittedObject) where
  periodicityMap : Type
  homotopyEquivalence : Prop
  loopSpaceEquivalence : Prop
  stableEquivalence : Prop

structure BottPeriodicityEvidence {P : ThomSpectrumPackage} {Q : VnAdmittedObject} (B : BottPeriodicityPackage Q) where
  homotopyEquivalenceClosed : B.homotopyEquivalence
  loopSpaceEquivalenceClosed : B.loopSpaceEquivalence
  stableEquivalenceClosed : B.stableEquivalence

def BottPeriodicityClosed {P : ThomSpectrumPackage} {Q : VnAdmittedObject} (B : BottPeriodicityPackage Q) : Prop :=
  B.homotopyEquivalence ∧ B.loopSpaceEquivalence ∧ B.stableEquivalence

theorem bott_periodicity_closed_from_evidence {P : ThomSpectrumPackage} {Q : VnAdmittedObject} (B : BottPeriodicityPackage Q) (E : BottPeriodicityEvidence B) : BottPeriodicityClosed B := by
  exact And.intro E.homotopyEquivalenceClosed (And.intro E.loopSpaceEquivalenceClosed E.stableEquivalenceClosed)

end VnPeriodicityCanonicalLaneLean
end HautevilleHouse