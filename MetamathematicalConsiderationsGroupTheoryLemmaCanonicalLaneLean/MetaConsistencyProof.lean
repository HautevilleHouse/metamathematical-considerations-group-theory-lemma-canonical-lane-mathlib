import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryLemmaCanonicalLaneLean

structure MetaConsistencyProof where
  metaTheory : Type u
  internalization : Prop
  proofOfConsistency : Prop
  internalizationTerm : internalization
  proofOfConsistencyTerm : proofOfConsistency

structure MetaConsistencyProofEvidence (M : MetaConsistencyProof) where
  internalizationClosed : M.internalization
  proofOfConsistencyClosed : M.proofOfConsistency

def MetaConsistencyProofClosed (M : MetaConsistencyProof) : Prop :=
  M.internalization ∧ M.proofOfConsistency

theorem meta_consistency_proof_closed_from_evidence
    (M : MetaConsistencyProof) (E : MetaConsistencyProofEvidence M) :
    MetaConsistencyProofClosed M := by
  exact And.intro E.internalizationClosed E.proofOfConsistencyClosed

end MetamathematicalConsiderationsGroupTheoryLemmaCanonicalLaneLean
end HautevilleHouse