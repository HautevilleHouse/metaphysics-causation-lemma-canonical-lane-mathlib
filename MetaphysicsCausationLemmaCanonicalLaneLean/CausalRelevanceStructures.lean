import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCausationLemmaCanonicalLaneLean

structure CausalRelevancePackage where
  causeType : Type u
  effectType : Type v
  relevanceRelation : causeType → effectType → Prop
  transitivity : Prop
  reflexivity : Prop

structure CausalRelevanceEvidence (C : CausalRelevancePackage) where
  transitivityClosed : C.transitivity
  reflexivityClosed : C.reflexivity

def CausalRelevanceClosed (C : CausalRelevancePackage) : Prop :=
  C.transitivity ∧ C.reflexivity

theorem causal_relevance_closed_from_evidence (C : CausalRelevancePackage)
    (E : CausalRelevanceEvidence C) : CausalRelevanceClosed C := by
  exact And.intro E.transitivityClosed E.reflexivityClosed

end MetaphysicsCausationLemmaCanonicalLaneLean
end HautevilleHouse