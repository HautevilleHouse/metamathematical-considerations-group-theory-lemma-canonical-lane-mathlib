import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryLemmaCanonicalLaneLean

structure GroupTheoryLemmaProof where
  groupType : Type u
  multiplication : groupType → groupType → groupType
  identity : groupType
  inverse : groupType → groupType
  associativity : Prop
  identityLaw : Prop
  inverseLaw : Prop
  lemmaConclusion : Prop
  associativityTerm : associativity
  identityLawTerm : identityLaw
  inverseLawTerm : inverseLaw
  lemmaConclusionTerm : lemmaConclusion

structure GroupTheoryLemmaProofEvidence (P : GroupTheoryLemmaProof) where
  associativityClosed : P.associativity
  identityLawClosed : P.identityLaw
  inverseLawClosed : P.inverseLaw
  lemmaConclusionClosed : P.lemmaConclusion

def GroupTheoryLemmaProofClosed (P : GroupTheoryLemmaProof) : Prop :=
  P.associativity ∧ P.identityLaw ∧ P.inverseLaw ∧ P.lemmaConclusion

theorem group_theory_lemma_proof_closed_from_evidence
    (P : GroupTheoryLemmaProof) (E : GroupTheoryLemmaProofEvidence P) :
    GroupTheoryLemmaProofClosed P := by
  exact And.intro E.associativityClosed
    (And.intro E.identityLawClosed
      (And.intro E.inverseLawClosed E.lemmaConclusionClosed))

end MetamathematicalConsiderationsGroupTheoryLemmaCanonicalLaneLean
end HautevilleHouse