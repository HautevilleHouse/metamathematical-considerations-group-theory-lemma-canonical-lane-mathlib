import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr

def sourceRepository : String :=
  "MetamathematicalConsiderationsGroupTheoryLemmaCanonicalLaneLean"

def sourceDescription : String :=
  "Metamathematical Considerations Group Theory Lemma"

def baselineCertificateLane : String :=
  "group_constrained"

def classicalBoundaryDescription : String :=
  "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen"

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := sourceRepository
  , theoremName := sourceRepository
  , theoremObject := sourceDescription
  , classicalBoundary := classicalBoundaryDescription
  , manifoldConstrainedStatement := "group-constrained theorem certificate internalized through admissible class closure"
  , certificateLane := baselineCertificateLane
  , carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen"
  }

end MetamathematicalConsiderationsGroupTheoryLemmaCanonicalLaneLean
end HautevilleHouse