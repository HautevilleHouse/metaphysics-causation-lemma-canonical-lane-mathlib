import MetaphysicsCausationLemmaCanonicalLaneLean.CausalModel

namespace HautevilleHouse
namespace MetaphysicsCausationLemmaCanonicalLaneLean

structure CausalEffectEstimation {C : CausalStructure} {D : CounterfactualDependence C} (M : CausalModel D) where
  estimator : Type
  consistencyCondition : Prop
  asymptoticNormality : Prop

def CausalEffectEstimationClosed (E : CausalEffectEstimation M) : Prop :=
  E.consistencyCondition ∧ E.asymptoticNormality

end MetaphysicsCausationLemmaCanonicalLaneLean
end HautevilleHouse
