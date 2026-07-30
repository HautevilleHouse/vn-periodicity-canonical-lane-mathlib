import canonicalLaneMathlib.AdmissibleClass

/-!
# Surgery Package for Vn Periodicity
-/

namespace HautevilleHouse
namespace VnPeriodicityCanonicalLaneLean

structure SurgeryPackage where
  surgeryTimesDiscrete : Prop
  surgeryRegionAdmissible : Prop
  postSurgeryMetricControlled : Prop
  monotonicitySurvivesSurgery : Prop
  topologyChangeAccounted : Prop

structure SurgeryEvidence (U : SurgeryPackage) where
  surgeryTimesDiscreteClosed : U.surgeryTimesDiscrete
  surgeryRegionAdmissibleClosed : U.surgeryRegionAdmissible
  postSurgeryMetricControlledClosed : U.postSurgeryMetricControlled
  monotonicitySurvivesSurgeryClosed : U.monotonicitySurvivesSurgery
  topologyChangeAccountedClosed : U.topologyChangeAccounted

def SurgeryClosed (U : SurgeryPackage) : Prop :=
  U.surgeryTimesDiscrete ∧ U.surgeryRegionAdmissible ∧
  U.postSurgeryMetricControlled ∧ U.monotonicitySurvivesSurgery ∧
  U.topologyChangeAccounted

theorem surgery_closed_from_evidence (U : SurgeryPackage) (E : SurgeryEvidence U) :
    SurgeryClosed U := by
  exact And.intro E.surgeryTimesDiscreteClosed
    (And.intro E.surgeryRegionAdmissibleClosed
      (And.intro E.postSurgeryMetricControlledClosed
        (And.intro E.monotonicitySurvivesSurgeryClosed E.topologyChangeAccountedClosed)))

end VnPeriodicityCanonicalLaneLean
end HautevilleHouse