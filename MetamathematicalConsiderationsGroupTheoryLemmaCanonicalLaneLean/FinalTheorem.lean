import canonicalLaneMathlib.AdmissibleClass
import MetamathematicalConsiderationsGroupTheoryLemmaCanonicalLaneLean.ConsistencyBridge
import MetamathematicalConsiderationsGroupTheoryLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryLemmaCanonicalLaneLean

def ConstrainedMetamathematicalGroupTheoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_metamathematical_group_theory_endgame (A : AdmissibleClass) :
    ConstrainedMetamathematicalGroupTheoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MetamathematicalConsiderationsGroupTheoryLemmaCanonicalLaneLean
end HautevilleHouse