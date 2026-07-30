import canonicalLaneMathlib.AdmissibleClass
import MetamathematicalConsiderationsGroupTheoryLemmaCanonicalLaneLean.GroupTheoryAdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryLemmaCanonicalLaneLean

structure ProofTheoryCorePackage where
  formulaLanguage : Type u
  deductionRules : Type v
  consistency : Prop
  completeness : Prop
  groupActionOnFormulas : Prop

def proofTheoryCoreEvidence (P : ProofTheoryCorePackage) : Prop :=
  P.consistency ∧ P.completeness ∧ P.groupActionOnFormulas

theorem proof_theory_core_closed (P : ProofTheoryCorePackage) (h : proofTheoryCoreEvidence P) :
    P.consistency ∧ P.completeness ∧ P.groupActionOnFormulas :=
  h

end MetamathematicalConsiderationsGroupTheoryLemmaCanonicalLaneLean
end HautevilleHouse