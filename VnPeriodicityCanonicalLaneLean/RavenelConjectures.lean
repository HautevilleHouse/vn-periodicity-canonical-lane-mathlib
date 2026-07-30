import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VnPeriodicityCanonicalLaneLean

structure RavenelConjecturesPackage where
  nilpotenceConjecture : Prop
  telescopeConjecture : Prop
  chromaticTelescope : Prop
  periodicityAtAllLevels : Prop

structure RavenelConjecturesEvidence (R : RavenelConjecturesPackage) where
  nilpotenceConjectureClosed : R.nilpotenceConjecture
  telescopeConjectureClosed : R.telescopeConjecture
  chromaticTelescopeClosed : R.chromaticTelescope
  periodicityAtAllLevelsClosed : R.periodicityAtAllLevels

def RavenelConjecturesClosed (R : RavenelConjecturesPackage) : Prop :=
  R.nilpotenceConjecture ∧ R.telescopeConjecture ∧ R.chromaticTelescope ∧ R.periodicityAtAllLevels

theorem ravenel_conjectures_closed_from_evidence (R : RavenelConjecturesPackage)
    (E : RavenelConjecturesEvidence R) : RavenelConjecturesClosed R := by
  exact And.intro E.nilpotenceConjectureClosed (And.intro E.telescopeConjectureClosed
    (And.intro E.chromaticTelescopeClosed E.periodicityAtAllLevelsClosed))

end VnPeriodicityCanonicalLaneLean
end HautevilleHouse
