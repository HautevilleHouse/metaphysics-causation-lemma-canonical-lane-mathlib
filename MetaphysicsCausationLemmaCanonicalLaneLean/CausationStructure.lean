import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCausationLemmaCanonicalLaneLean

structure CausationStructure where
  causeType : Type u
  effectType : Type v
  causalRelation : Prop
  necessaryCondition : Prop
  sufficientCondition : Prop
  regularity : Prop
  counterfactualDependence : Prop

structure CausationEvidence (C : CausationStructure) where
  causalRelationClosed : C.causalRelation
  necessaryConditionClosed : C.necessaryCondition
  sufficientConditionClosed : C.sufficientCondition
  regularityClosed : C.regularity
  counterfactualDependenceClosed : C.counterfactualDependence

def CausationClosed (C : CausationStructure) : Prop :=
  C.causalRelation ∧ C.necessaryCondition ∧ C.sufficientCondition ∧
  C.regularity ∧ C.counterfactualDependence

theorem causation_closed_from_evidence (C : CausationStructure) (E : CausationEvidence C) : CausationClosed C := by
  exact And.intro E.causalRelationClosed
    (And.intro E.necessaryConditionClosed
      (And.intro E.sufficientConditionClosed
        (And.intro E.regularityClosed E.counterfactualDependenceClosed)))

end MetaphysicsCausationLemmaCanonicalLaneLean
end HautevilleHouse