import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MetaphysicsCausationLemmaCanonicalLaneLean.CausationStructure

namespace HautevilleHouse
namespace MetaphysicsCausationLemmaCanonicalLaneLean

structure CausalModelLayer (C : CausationStructure) where
  structuralEquations : Prop
  interventionDefinition : Prop
  doCalculus : Prop
  identificationCondition : Prop

def CausalModelLayerClosed (C : CausationStructure) (M : CausalModelLayer C) : Prop :=
  M.structuralEquations ∧ M.interventionDefinition ∧ M.doCalculus ∧ M.identificationCondition

end MetaphysicsCausationLemmaCanonicalLaneLean
end HautevilleHouse