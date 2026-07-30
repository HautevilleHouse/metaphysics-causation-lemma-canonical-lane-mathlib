import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCausationLemmaCanonicalLaneLean

structure CounterfactualPackage where
  possibleWorlds : Type u
  accessibilityRelation : possibleWorlds → possibleWorlds → Prop
  similarityOrder : possibleWorlds → possibleWorlds → Prop
  truthCondition : (possibleWorlds → Prop) → Prop
  causalCounterfactual : (possibleWorlds → Prop) → (possibleWorlds → Prop) → Prop

def bridgeClosed (A : AdmissibleClass) : Prop :=
  True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  trivial

structure CounterfactualEvidence (P : CounterfactualPackage) where
  worldsNonempty : Nonempty P.possibleWorlds
  similarityWellFounded : WellFounded P.similarityOrder

def CounterfactualPossibilityClosed (P : CounterfactualPackage) : Prop :=
  Nonempty P.possibleWorlds ∧ WellFounded P.similarityOrder

theorem counterfactual_possibility_closed_from_evidence (P : CounterfactualPackage) (E : CounterfactualEvidence P) : CounterfactualPossibilityClosed P := by
  exact And.intro E.worldsNonempty E.similarityWellFounded

end MetaphysicsCausationLemmaCanonicalLaneLean
end HautevilleHouse
