import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VnPeriodicityCanonicalLaneLean

def ConstrainedVnPeriodicityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_vn_periodicity_endgame (A : AdmissibleClass) :
    ConstrainedVnPeriodicityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end VnPeriodicityCanonicalLaneLean
end HautevilleHouse
