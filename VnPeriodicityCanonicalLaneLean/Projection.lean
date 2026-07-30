import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VnPeriodicityCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def vnPeriodicityProjection : Projection VnPeriodicityEndgameState := {
  toFun := fun x => x
  idempotent := by intro x; rfl
}

theorem vn_periodicity_projection_idempotent (x : VnPeriodicityEndgameState) :
    vnPeriodicityProjection.toFun (vnPeriodicityProjection.toFun x) =
    vnPeriodicityProjection.toFun x := by
  exact vnPeriodicityProjection.idempotent x

end VnPeriodicityCanonicalLaneLean
end HautevilleHouse