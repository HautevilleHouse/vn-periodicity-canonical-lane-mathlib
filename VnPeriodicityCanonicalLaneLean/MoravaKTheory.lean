import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VnPeriodicityCanonicalLaneLean

structure MoravaKTheoryPackage where
  fieldCharacteristic : Nat
  formalGroupLaw : Type u
  homologyOfPoint : Prop
  coefficientRing : Prop
  periodicityOperator : Prop

structure MoravaKTheoryEvidence (M : MoravaKTheoryPackage) where
  homologyOfPointClosed : M.homologyOfPoint
  coefficientRingClosed : M.coefficientRing
  periodicityOperatorClosed : M.periodicityOperator

def MoravaKTheoryClosed (M : MoravaKTheoryPackage) : Prop :=
  M.homologyOfPoint ∧ M.coefficientRing ∧ M.periodicityOperator

theorem morava_k_theory_closed_from_evidence (M : MoravaKTheoryPackage)
    (E : MoravaKTheoryEvidence M) : MoravaKTheoryClosed M := by
  exact And.intro E.homologyOfPointClosed (And.intro E.coefficientRingClosed E.periodicityOperatorClosed)

end VnPeriodicityCanonicalLaneLean
end HautevilleHouse
