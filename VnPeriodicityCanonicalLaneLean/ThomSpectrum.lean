import VnPeriodicityCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace VnPeriodicityCanonicalLaneLean

structure ThomSpectrumPackage where
  thomSpace : Type
  orientation : Prop
  eulerClass : Prop
  coherenceWithPeriodicity : Prop

structure ThomSpectrumEvidence (P : ThomSpectrumPackage) where
  orientationClosed : P.orientation
  eulerClassClosed : P.eulerClass
  coherenceWithPeriodicityClosed : P.coherenceWithPeriodicity

def ThomSpectrumClosed (P : ThomSpectrumPackage) : Prop :=
  P.orientation ∧ P.eulerClass ∧ P.coherenceWithPeriodicity

theorem thom_spectrum_closed_from_evidence (P : ThomSpectrumPackage) (E : ThomSpectrumEvidence P) : ThomSpectrumClosed P := by
  exact And.intro E.orientationClosed (And.intro E.eulerClassClosed E.coherenceWithPeriodicityClosed)

end VnPeriodicityCanonicalLaneLean
end HautevilleHouse