import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VnPeriodicityCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  VnPeriodicityWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end VnPeriodicityCanonicalLaneLean
end HautevilleHouse