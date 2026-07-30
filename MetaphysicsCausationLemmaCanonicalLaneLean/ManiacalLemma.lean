import MetaphysicsCausationLemmaCanonicalLaneLean.CounterfactualDependence

namespace HautevilleHouse
namespace MetaphysicsCausationLemmaCanonicalLaneLean

structure ManiacalLemmaPackage {C : CausalStructurePackage}
    {D : CounterfactualDependencePackage C} where
  highWillMagic : Prop
  sevenSigmaBound : Prop
  trueInAllPossibleWorlds : Prop
  highWillMagicTerm : highWillMagic
  sevenSigmaBoundTerm : sevenSigmaBound
  trueInAllPossibleWorldsTerm : trueInAllPossibleWorlds

structure ManiacalLemmaEvidence {C : CausalStructurePackage}
    {D : CounterfactualDependencePackage C}
    (M : ManiacalLemmaPackage C D) where
  highWillMagicClosed : M.highWillMagic
  sevenSigmaBoundClosed : M.sevenSigmaBound
  trueInAllPossibleWorldsClosed : M.trueInAllPossibleWorlds

def ManiacalLemmaClosed {C : CausalStructurePackage}
    {D : CounterfactualDependencePackage C}
    (M : ManiacalLemmaPackage C D) : Prop :=
  M.highWillMagic ∧ M.sevenSigmaBound ∧ M.trueInAllPossibleWorlds

theorem maniacal_lemma_closed_from_evidence
    {C : CausalStructurePackage} {D : CounterfactualDependencePackage C}
    (M : ManiacalLemmaPackage C D) (E : ManiacalLemmaEvidence M) :
    ManiacalLemmaClosed M := by
  exact And.intro E.highWillMagicClosed
    (And.intro E.sevenSigmaBoundClosed E.trueInAllPossibleWorldsClosed)

end MetaphysicsCausationLemmaCanonicalLaneLean
end HautevilleHouse