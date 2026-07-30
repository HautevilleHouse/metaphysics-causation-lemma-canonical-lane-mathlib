import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MetaphysicsCausationLemmaCanonicalLaneLean.CausationStructure

namespace HautevilleHouse
namespace MetaphysicsCausationLemmaCanonicalLaneLean

structure ProbabilisticCausation (C : CausationStructure) where
  probabilitySpace : Type u
  causeEvent : Prop
  effectEvent : Prop
  probabilityRaised : Prop
  conditionalProbability : Prop

def ProbabilisticCausationClosed (C : CausationStructure) (P : ProbabilisticCausation C) : Prop :=
  P.causeEvent ∧ P.effectEvent ∧ P.probabilityRaised ∧ P.conditionalProbability

end MetaphysicsCausationLemmaCanonicalLaneLean
end HautevilleHouse