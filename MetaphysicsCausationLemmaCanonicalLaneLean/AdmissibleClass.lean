import MetaphysicsCausationLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MetaphysicsCausationLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : CausationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CausationWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MetaphysicsCausationLemmaCanonicalLaneLean
end HautevilleHouse
