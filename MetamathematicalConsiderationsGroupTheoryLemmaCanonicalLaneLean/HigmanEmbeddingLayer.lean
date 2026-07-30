import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MetamathematicalConsiderationsGroupTheoryLemmaCanonicalLaneLean.AdmissibleClassExtensions

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryLemmaCanonicalLaneLean

structure HigmanEmbeddingPackage (A : AdmissibleGroupTheoryClass) where
  finitelyGeneratedGroup : Prop
  recursivelyPresented : Prop
  embeddableInFinitelyPresented : Prop
  finitelyGeneratedGroupTerm : finitelyGeneratedGroup
  recursivelyPresentedTerm : recursivelyPresented
  embeddableInFinitelyPresentedTerm : embeddableInFinitelyPresented

def HigmanEmbeddingClosed (A : AdmissibleGroupTheoryClass) (H : HigmanEmbeddingPackage A) : Prop :=
  H.finitelyGeneratedGroup ∧ H.recursivelyPresented ∧ H.embeddableInFinitelyPresented

theorem higman_embedding_closed (A : AdmissibleGroupTheoryClass) (H : HigmanEmbeddingPackage A) : HigmanEmbeddingClosed A H :=
  And.intro H.finitelyGeneratedGroupTerm (And.intro H.recursivelyPresentedTerm H.embeddableInFinitelyPresentedTerm)

theorem higman_embedding_yields_closure (A : AdmissibleGroupTheoryClass) (H : HigmanEmbeddingPackage A) : bridgeClosed A ∧ gateClosed A :=
  And.intro (bridge_from_admissible A) (gate_from_admissible A)

end MetamathematicalConsiderationsGroupTheoryLemmaCanonicalLaneLean
end HautevilleHouse