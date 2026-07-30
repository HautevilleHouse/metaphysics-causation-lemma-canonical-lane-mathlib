import MetaphysicsCausationLemmaCanonicalLaneLean.ManiacalLemma

namespace HautevilleHouse
namespace MetaphysicsCausationLemmaCanonicalLaneLean

structure MetaphysicsLemmasPackage {C : CausalStructurePackage}
    {D : CounterfactualDependencePackage C}
    (M : ManiacalLemmaPackage C D) where
  causalPowerLemma : Prop
  determinismLemma : Prop
  reductionLemma : Prop
  causalPowerLemmaTerm : causalPowerLemma
  determinismLemmaTerm : determinismLemma
  reductionLemmaTerm : reductionLemma

structure MetaphysicsLemmasEvidence {C : CausalStructurePackage}
    {D : CounterfactualDependencePackage C}
    {M : ManiacalLemmaPackage C D}
    (L : MetaphysicsLemmasPackage M) where
  causalPowerLemmaClosed : L.causalPowerLemma
  determinismLemmaClosed : L.determinismLemma
  reductionLemmaClosed : L.reductionLemma

def MetaphysicsLemmasClosed {C : CausalStructurePackage}
    {D : CounterfactualDependencePackage C}
    {M : ManiacalLemmaPackage C D}
    (L : MetaphysicsLemmasPackage M) : Prop :=
  L.causalPowerLemma ∧ L.determinismLemma ∧ L.reductionLemma

theorem metaphysics_lemmas_closed_from_evidence
    {C : CausalStructurePackage} {D : CounterfactualDependencePackage C}
    {M : ManiacalLemmaPackage C D} (L : MetaphysicsLemmasPackage M)
    (E : MetaphysicsLemmasEvidence L) : MetaphysicsLemmasClosed L := by
  exact And.intro E.causalPowerLemmaClosed
    (And.intro E.determinismLemmaClosed E.reductionLemmaClosed)

end MetaphysicsCausationLemmaCanonicalLaneLean
end HautevilleHouse