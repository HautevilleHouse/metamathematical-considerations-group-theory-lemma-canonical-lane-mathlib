import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryLemmaCanonicalLaneLean

structure MetamathematicalGroupTheoryPackage where
  metaLanguage : Type u
  groupAxioms : Prop
  lemmaStatement : Prop
  metaConsistency : Prop
  groupAxiomsTerm : groupAxioms
  lemmaStatementTerm : lemmaStatement
  metaConsistencyTerm : metaConsistency

structure MetamathematicalGroupTheoryEvidence (P : MetamathematicalGroupTheoryPackage) where
  groupAxiomsClosed : P.groupAxioms
  lemmaStatementClosed : P.lemmaStatement
  metaConsistencyClosed : P.metaConsistency

def MetamathematicalGroupTheoryClosed (P : MetamathematicalGroupTheoryPackage) : Prop :=
  P.groupAxioms ∧ P.lemmaStatement ∧ P.metaConsistency

theorem metamathematical_group_theory_closed_from_evidence
    (P : MetamathematicalGroupTheoryPackage) (E : MetamathematicalGroupTheoryEvidence P) :
    MetamathematicalGroupTheoryClosed P := by
  exact And.intro E.groupAxiomsClosed (And.intro E.lemmaStatementClosed E.metaConsistencyClosed)

end MetamathematicalConsiderationsGroupTheoryLemmaCanonicalLaneLean
end HautevilleHouse