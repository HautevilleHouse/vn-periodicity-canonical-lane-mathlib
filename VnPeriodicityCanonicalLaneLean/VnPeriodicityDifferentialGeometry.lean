import canonicalLaneMathlib.AdmissibleClass

/-!
# Vn Periodicity Differential Geometry Package
-/

namespace HautevilleHouse
namespace VnPeriodicityCanonicalLaneLean

structure VnPeriodicityDifferentialGeometryPackage where
  vnManifold : Type u
  smoothStructure : SmoothManifold vnManifold
  riemannianMetric : RiemannianMetric vnManifold
  periodicIsometry : Isometry vnManifold vnManifold
  periodicIsometryN : (periodicIsometry ^ n) = id
  curvaturePeriodicity : Prop
  volumeFormPreservation : Prop

structure VnPeriodicityDifferentialGeometryEvidence (D : VnPeriodicityDifferentialGeometryPackage) where
  periodicIsometryNClosed : D.periodicIsometryN
  curvaturePeriodicityClosed : D.curvaturePeriodicity
  volumeFormPreservationClosed : D.volumeFormPreservation

def VnPeriodicityDifferentialGeometryClosed (D : VnPeriodicityDifferentialGeometryPackage) : Prop :=
  D.periodicIsometryN ∧ D.curvaturePeriodicity ∧ D.volumeFormPreservation

theorem vn_periodicity_differential_geometry_closed_from_evidence
    (D : VnPeriodicityDifferentialGeometryPackage) (E : VnPeriodicityDifferentialGeometryEvidence D) :
    VnPeriodicityDifferentialGeometryClosed D := by
  exact And.intro E.periodicIsometryNClosed
    (And.intro E.curvaturePeriodicityClosed E.volumeFormPreservationClosed)

end VnPeriodicityCanonicalLaneLean
end HautevilleHouse
