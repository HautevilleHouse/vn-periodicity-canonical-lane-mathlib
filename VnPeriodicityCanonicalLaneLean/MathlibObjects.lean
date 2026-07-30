import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VnPeriodicityCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure VnPeriodicitySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure VnPeriodicityAdmittedObject where
  space : VnPeriodicitySpace
  closedThreeManifold : Prop
  simplyConnected : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

structure VnPeriodicityEndgameState where
  object : VnPeriodicityAdmittedObject

def VnPeriodicityWitnessClosed (O : VnPeriodicityAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end VnPeriodicityCanonicalLaneLean
end HautevilleHouse