import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VnPeriodicityCanonicalLaneLean

structure EilenbergMoorePackage where
  algebrType : Type u
  moduleStructure : Prop
  spectralSequence : Prop
  collapseAtE2 : Prop
  periodicityCompatibility : Prop

structure EilenbergMooreEvidence (E : EilenbergMoorePackage) where
  moduleStructureClosed : E.moduleStructure
  spectralSequenceClosed : E.spectralSequence
  collapseAtE2Closed : E.collapseAtE2
  periodicityCompatibilityClosed : E.periodicityCompatibility

def EilenbergMooreClosed (E : EilenbergMoorePackage) : Prop :=
  E.moduleStructure ∧ E.spectralSequence ∧ E.collapseAtE2 ∧ E.periodicityCompatibility

theorem eilenberg_moore_closed_from_evidence (E : EilenbergMoorePackage)
    (Ev : EilenbergMooreEvidence E) : EilenbergMooreClosed E := by
  exact And.intro Ev.moduleStructureClosed (And.intro Ev.spectralSequenceClosed
    (And.intro Ev.collapseAtE2Closed Ev.periodicityCompatibilityClosed))

end VnPeriodicityCanonicalLaneLean
end HautevilleHouse
