import canonicalLaneMathlib.AdmissibleClass

/-!
# Vn Periodicity Algebraic Package
-/

namespace HautevilleHouse
namespace VnPeriodicityCanonicalLaneLean

structure VnPeriodicityAlgebraicPackage where
  coefficientRing : Type u
  ringStructure : CommRing coefficientRing
  vnModule : Module coefficientRing (Fin n → coefficientRing)
  periodicityOperator : (Fin n → coefficientRing) → (Fin n → coefficientRing)
  operatorLinear : IsLinearMap periodicityOperator
  periodicityEquation : periodicityOperator ^ n = 1

structure VnPeriodicityAlgebraicEvidence (A : VnPeriodicityAlgebraicPackage) where
  operatorLinearClosed : A.operatorLinear
  periodicityEquationClosed : A.periodicityEquation

def VnPeriodicityAlgebraicClosed (A : VnPeriodicityAlgebraicPackage) : Prop :=
  A.operatorLinear ∧ A.periodicityEquation

theorem vn_periodicity_algebraic_closed_from_evidence
    (A : VnPeriodicityAlgebraicPackage) (E : VnPeriodicityAlgebraicEvidence A) :
    VnPeriodicityAlgebraicClosed A := by
  exact And.intro E.operatorLinearClosed E.periodicityEquationClosed

end VnPeriodicityCanonicalLaneLean
end HautevilleHouse
