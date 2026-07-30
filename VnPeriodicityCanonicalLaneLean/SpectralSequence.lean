import HautevilleHouse.VnPeriodicityCanonicalLaneLean.AdamsOperations

/-!
# Spectral Sequence Package
-/

namespace HautevilleHouse
namespace VnPeriodicityCanonicalLaneLean

structure SpectralSequencePackage {P : VnPeriodicityPackage} {A : AdamsOperationsPackage P} where
  E2_page : Type
  differentials : Type
  abutment : Type
  convergence : Prop
  multiplicativeStructure : Prop
  adamsAction : Prop

structure SpectralSequenceEvidence {P : VnPeriodicityPackage} {A : AdamsOperationsPackage P} (S : SpectralSequencePackage A) where
  convergenceClosed : S.convergence
  multiplicativeStructureClosed : S.multiplicativeStructure
  adamsActionClosed : S.adamsAction

def SpectralSequenceClosed {P : VnPeriodicityPackage} {A : AdamsOperationsPackage P} (S : SpectralSequencePackage A) : Prop :=
  S.convergence ∧ S.multiplicativeStructure ∧ S.adamsAction

theorem spectral_sequence_closed_from_evidence {P : VnPeriodicityPackage} {A : AdamsOperationsPackage P} (S : SpectralSequencePackage A) (E : SpectralSequenceEvidence S) : SpectralSequenceClosed S :=
  And.intro E.convergenceClosed (And.intro E.multiplicativeStructureClosed E.adamsActionClosed)

end VnPeriodicityCanonicalLaneLean
end HautevilleHouse