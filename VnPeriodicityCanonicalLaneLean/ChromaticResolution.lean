import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VnPeriodicityCanonicalLaneLean

structure ChromaticResolutionPackage where
  chromaticLayers : Nat → Type u
  resolutionChain : Prop
  steenrodModuleAction : Prop
  periodicityDetection : Prop

structure ChromaticResolutionEvidence (C : ChromaticResolutionPackage) where
  resolutionChainClosed : C.resolutionChain
  steenrodModuleActionClosed : C.steenrodModuleAction
  periodicityDetectionClosed : C.periodicityDetection

def ChromaticResolutionClosed (C : ChromaticResolutionPackage) : Prop :=
  C.resolutionChain ∧ C.steenrodModuleAction ∧ C.periodicityDetection

theorem chromatic_resolution_closed_from_evidence (C : ChromaticResolutionPackage)
    (E : ChromaticResolutionEvidence C) : ChromaticResolutionClosed C := by
  exact And.intro E.resolutionChainClosed (And.intro E.steenrodModuleActionClosed E.periodicityDetectionClosed)

end VnPeriodicityCanonicalLaneLean
end HautevilleHouse
