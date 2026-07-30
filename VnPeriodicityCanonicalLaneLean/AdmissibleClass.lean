import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VnPeriodicityCanonicalLaneLean

structure AdmissibleClass where
  object : VnPeriodicityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  VnPeriodicityWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end VnPeriodicityCanonicalLaneLean
end HautevilleHouse