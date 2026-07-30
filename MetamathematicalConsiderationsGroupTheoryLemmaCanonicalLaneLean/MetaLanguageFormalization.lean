import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryLemmaCanonicalLaneLean

structure MetaLanguageFormalization where
  signature : Type u
  formulas : Type v
  proofs : Type w
  deductionSystem : Prop
  soundness : Prop
  completeness : Prop
  deductionSystemTerm : deductionSystem
  soundnessTerm : soundness
  completenessTerm : completeness

structure MetaLanguageFormalizationEvidence (L : MetaLanguageFormalization) where
  deductionSystemClosed : L.deductionSystem
  soundnessClosed : L.soundness
  completenessClosed : L.completeness

def MetaLanguageFormalizationClosed (L : MetaLanguageFormalization) : Prop :=
  L.deductionSystem ∧ L.soundness ∧ L.completeness

theorem meta_language_formalization_closed_from_evidence
    (L : MetaLanguageFormalization) (E : MetaLanguageFormalizationEvidence L) :
    MetaLanguageFormalizationClosed L := by
  exact And.intro E.deductionSystemClosed (And.intro E.soundnessClosed E.completenessClosed)

end MetamathematicalConsiderationsGroupTheoryLemmaCanonicalLaneLean
end HautevilleHouse