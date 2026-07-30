import HautevilleHouse.VnPeriodicityCanonicalLaneLean.VnPeriodicity

/-!
# Adams Operations Package
-/

namespace HautevilleHouse
namespace VnPeriodicityCanonicalLaneLean

structure AdamsOperationsPackage {P : VnPeriodicityPackage} where
  psi_k : Type
  psi_p : Type
  commutation : Prop
  eigenstructure : Prop
  frobeniusRelation : Prop

structure AdamsOperationsEvidence {P : VnPeriodicityPackage} (A : AdamsOperationsPackage P) where
  commutationClosed : A.commutation
  eigenstructureClosed : A.eigenstructure
  frobeniusRelationClosed : A.frobeniusRelation

def AdamsOperationsClosed {P : VnPeriodicityPackage} (A : AdamsOperationsPackage P) : Prop :=
  A.commutation ∧ A.eigenstructure ∧ A.frobeniusRelation

theorem adams_operations_closed_from_evidence {P : VnPeriodicityPackage} (A : AdamsOperationsPackage P) (E : AdamsOperationsEvidence A) : AdamsOperationsClosed A :=
  And.intro E.commutationClosed (And.intro E.eigenstructureClosed E.frobeniusRelationClosed)

end VnPeriodicityCanonicalLaneLean
end HautevilleHouse