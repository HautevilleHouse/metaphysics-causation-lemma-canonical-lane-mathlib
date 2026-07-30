import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCausationLemmaCanonicalLaneLean

structure CausalStructure where
  cause : Type u
  effect : Type v
  causalRelation : cause → effect → Prop
  temporalOrder : cause → effect → Prop
  counterfactualDependence : (cause → Prop) → (effect → Prop) → Prop
  regularityCondition : Prop
  temporalOrderTransitive : Transitive temporalOrder
  causalRelationImpliesTemporal : ∀ (c : cause) (e : effect), causalRelation c e → temporalOrder c e

structure CausalEvidence (C : CausalStructure) where
  regularityConditionClosed : C.regularityCondition
  counterfactualConsistent : ∀ (P : C.cause → Prop), C.counterfactualDependence P (λ e => False) → (∀ c, ¬ P c)
  temporalOrderTransitiveTerm : C.temporalOrderTransitive
  causalRelationImpliesTemporalTerm : C.causalRelationImpliesTemporal

def CausalClosed (C : CausalStructure) : Prop :=
  C.regularityCondition ∧
  (∀ (P : C.cause → Prop), C.counterfactualDependence P (λ e => False) → (∀ c, ¬ P c)) ∧
  C.temporalOrderTransitive ∧
  C.causalRelationImpliesTemporal

theorem causal_closed_from_evidence (C : CausalStructure) (E : CausalEvidence C) : CausalClosed C := by
  exact And.intro E.regularityConditionClosed
    (And.intro E.counterfactualConsistent
      (And.intro E.temporalOrderTransitiveTerm E.causalRelationImpliesTemporalTerm))

end MetaphysicsCausationLemmaCanonicalLaneLean
end HautevilleHouse
