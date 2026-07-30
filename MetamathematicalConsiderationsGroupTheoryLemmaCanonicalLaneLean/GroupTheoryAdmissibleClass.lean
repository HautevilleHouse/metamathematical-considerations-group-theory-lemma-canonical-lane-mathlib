import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetamathematicalConsiderationsGroupTheoryLemmaCanonicalLaneLean

structure GroupTheoryAdmittedObject where
  group : Type u
  groupOp : group → group → group
  groupUnit : group
  groupInv : group → group
  groupAssoc : ∀ a b c : group, groupOp (groupOp a b) c = groupOp a (groupOp b c)
  groupUnitLeft : ∀ a : group, groupOp groupUnit a = a
  groupUnitRight : ∀ a : group, groupOp a groupUnit = a
  groupInvLeft : ∀ a : group, groupOp (groupInv a) a = groupUnit
  groupInvRight : ∀ a : group, groupOp a (groupInv a) = groupUnit
  admissibleProperty : Prop
  propertyProof : admissibleProperty

structure MetamathematicalAdmissibleClass where
  object : GroupTheoryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : MetamathematicalAdmissibleClass) : Prop :=
  A.object.admissibleProperty ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MetamathematicalConsiderationsGroupTheoryLemmaCanonicalLaneLean
end HautevilleHouse