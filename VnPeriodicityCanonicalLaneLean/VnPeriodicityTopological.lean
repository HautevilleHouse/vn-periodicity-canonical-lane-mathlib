import canonicalLaneMathlib.AdmissibleClass

/-!
# Vn Periodicity Topological Package
-/

namespace HautevilleHouse
namespace VnPeriodicityCanonicalLaneLean

structure VnPeriodicityTopologicalPackage where
  vnManifold : Type u
  vnTopology : TopologicalSpace vnManifold
  vnDimension : Nat
  vnDimensionEqN : vnDimension = n
  classifySpace : Type v
  classifyTopology : TopologicalSpace classifySpace
  periodicityMap : classifySpace → classifySpace
  periodicityMapHomeo : Homeomorph classifySpace classifySpace
  periodicityMapN : (periodicityMap ^ n) = id

structure VnPeriodicityTopologicalEvidence (P : VnPeriodicityTopologicalPackage) where
  vnManifoldClassifiedClosed : P.vnDimensionEqN
  periodicityMapHomeoClosed : P.periodicityMapHomeo
  periodicityMapNClosed : P.periodicityMapN

def VnPeriodicityTopologicalClosed (P : VnPeriodicityTopologicalPackage) : Prop :=
  P.vnDimensionEqN ∧ periodicityMapHomeo P ∧ periodicityMapN P

theorem vn_periodicity_topological_closed_from_evidence
    (P : VnPeriodicityTopologicalPackage) (E : VnPeriodicityTopologicalEvidence P) :
    VnPeriodicityTopologicalClosed P := by
  exact And.intro E.vnManifoldClassifiedClosed
    (And.intro E.periodicityMapHomeoClosed E.periodicityMapNClosed)

end VnPeriodicityCanonicalLaneLean
end HautevilleHouse
