import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MetamathematicalConsiderationsGroupTheoryLemmaCanonicalLaneLean.MetamathematicalFoundation

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryLemmaCanonicalLaneLean

structure AdmissibleGroupTheoryClass where
  metaPackage : MetamathematicalPackage
  theorem : GroupTheoryTheorem metaPackage
  bridgeClosed : Prop
  gateClosed : Prop
  bridgeClosedTerm : bridgeClosed
  gateClosedTerm : gateClosed

def bridgeClosed (A : AdmissibleGroupTheoryClass) : Prop := A.bridgeClosed

def gateClosed (A : AdmissibleGroupTheoryClass) : Prop := A.gateClosed

theorem bridge_from_admissible (A : AdmissibleGroupTheoryClass) : bridgeClosed A :=
  A.bridgeClosedTerm

theorem gate_from_admissible (A : AdmissibleGroupTheoryClass) : gateClosed A :=
  A.gateClosedTerm

end MetamathematicalConsiderationsGroupTheoryLemmaCanonicalLaneLean
end HautevilleHouse