import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MetamathematicalConsiderationsGroupTheoryLemmaCanonicalLaneLean.AdmissibleClassExtensions

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryLemmaCanonicalLaneLean

structure NovikovAdianResult (A : AdmissibleGroupTheoryClass) where
  burnsideProblemAnswered : Prop
  finiteBurnsideGroupExists : Prop
  burnsideProblemAnsweredTerm : burnsideProblemAnswered
  finiteBurnsideGroupExistsTerm : finiteBurnsideGroupExists

def NovikovAdianClosed (A : AdmissibleGroupTheoryClass) (N : NovikovAdianResult A) : Prop :=
  N.burnsideProblemAnswered ∧ N.finiteBurnsideGroupExists

theorem novikov_adian_closed (A : AdmissibleGroupTheoryClass) (N : NovikovAdianResult A) : NovikovAdianClosed A N :=
  And.intro N.burnsideProblemAnsweredTerm N.finiteBurnsideGroupExistsTerm

theorem novikov_adian_yields_closure (A : AdmissibleGroupTheoryClass) (N : NovikovAdianResult A) : bridgeClosed A ∧ gateClosed A :=
  And.intro (bridge_from_admissible A) (gate_from_admissible A)

end MetamathematicalConsiderationsGroupTheoryLemmaCanonicalLaneLean
end HautevilleHouse