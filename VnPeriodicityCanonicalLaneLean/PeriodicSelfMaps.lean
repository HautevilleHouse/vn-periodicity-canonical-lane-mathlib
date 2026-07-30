import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VnPeriodicityCanonicalLaneLean

structure PeriodicSelfMapsPackage where
  mapType : Type u → Type u
  stableMapType : Type u → Type u
  degree : ℤ
  periodicityOrder : Nat
  detectionTheorem : Prop

structure PeriodicSelfMapsEvidence (P : PeriodicSelfMapsPackage) where
  detectionTheoremClosed : P.detectionTheorem
  periodicityOrderFinite : P.periodicityOrder > 0

def PeriodicSelfMapsClosed (P : PeriodicSelfMapsPackage) : Prop :=
  P.detectionTheorem ∧ (P.periodicityOrder > 0)

theorem periodic_self_maps_closed_from_evidence (P : PeriodicSelfMapsPackage)
    (E : PeriodicSelfMapsEvidence P) : PeriodicSelfMapsClosed P := by
  exact And.intro E.detectionTheoremClosed E.periodicityOrderFinite

end VnPeriodicityCanonicalLaneLean
end HautevilleHouse
