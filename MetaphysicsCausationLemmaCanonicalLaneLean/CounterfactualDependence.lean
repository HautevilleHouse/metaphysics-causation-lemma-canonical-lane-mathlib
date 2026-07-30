import MetaphysicsCausationLemmaCanonicalLaneLean.CausalStructure

namespace HautevilleHouse
namespace MetaphysicsCausationLemmaCanonicalLaneLean

structure CounterfactualDependence (C : CausalStructure) where
  possibleWorlds : Type
  counterfactualRelation : C.events → C.events → Prop
  closestWorldCondition : Prop
  dependenceDefined : Prop

def CounterfactualDependenceClosed (D : CounterfactualDependence C) : Prop :=
  D.closestWorldCondition ∧ D.dependenceDefined

end MetaphysicsCausationLemmaCanonicalLaneLean
end HautevilleHouse
