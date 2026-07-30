import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MetaphysicsCausationLemmaCanonicalLaneLean.CausationStructure

namespace HautevilleHouse
namespace MetaphysicsCausationLemmaCanonicalLaneLean

structure CounterfactualAnalysis (C : CausationStructure) where
  possibleWorlds : Type u
  closestWorldCondition : Prop
  counterfactualTruth : Prop
  counterfactualDependenceClosed : C.counterfactualDependence

def CounterfactualAnalysisClosed (C : CausationStructure) (A : CounterfactualAnalysis C) : Prop :=
  A.possibleWorlds ≠ Empty ∧ A.closestWorldCondition ∧ A.counterfactualTruth ∧ A.counterfactualDependenceClosed

end MetaphysicsCausationLemmaCanonicalLaneLean
end HautevilleHouse