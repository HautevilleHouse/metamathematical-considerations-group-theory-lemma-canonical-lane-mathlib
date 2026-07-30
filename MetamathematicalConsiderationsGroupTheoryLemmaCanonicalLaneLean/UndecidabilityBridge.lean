import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MetamathematicalConsiderationsGroupTheoryLemmaCanonicalLaneLean.AdmissibleClassExtensions

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryLemmaCanonicalLaneLean

structure UndecidabilityBridge (A : AdmissibleGroupTheoryClass) where
  groupWordProblem : Prop
  uniformWordProblem : Prop
  booneNovikovTheorem : Prop
  booneNovikovTheoremTerm : booneNovikovTheorem
  groupWordProblemTerm : groupWordProblem
  uniformWordProblemTerm : uniformWordProblem

def UndecidabilityBridgeClosed (A : AdmissibleGroupTheoryClass) (U : UndecidabilityBridge A) : Prop :=
  U.groupWordProblem ∧ U.uniformWordProblem ∧ U.booneNovikovTheorem

theorem undecidability_bridge_closed (A : AdmissibleGroupTheoryClass) (U : UndecidabilityBridge A) : UndecidabilityBridgeClosed A U :=
  And.intro U.groupWordProblemTerm (And.intro U.uniformWordProblemTerm U.booneNovikovTheoremTerm)

theorem undecidability_bridge_yields_closure (A : AdmissibleGroupTheoryClass) (U : UndecidabilityBridge A) : bridgeClosed A ∧ gateClosed A :=
  And.intro (bridge_from_admissible A) (gate_from_admissible A)

end MetamathematicalConsiderationsGroupTheoryLemmaCanonicalLaneLean
end HautevilleHouse