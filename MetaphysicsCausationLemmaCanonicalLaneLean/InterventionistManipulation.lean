import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCausationLemmaCanonicalLaneLean

structure InterventionistManipPackage (τ : Type u) where
  possibleIntervention : τ → Prop
  manipulationYieldsEffect : τ → Prop
  modularity : Prop
  invariance : Prop

structure InterventionistManipEvidence (τ : Type u) (I : InterventionistManipPackage τ) where
  possibleInterventionClosed : ∀ x : τ, I.possibleIntervention x
  manipulationYieldsEffectClosed : ∀ x : τ, I.manipulationYieldsEffect x
  modularityClosed : I.modularity
  invarianceClosed : I.invariance

def InterventionistManipClosed (τ : Type u) (I : InterventionistManipPackage τ) : Prop :=
  (∀ x : τ, I.possibleIntervention x) ∧ (∀ x : τ, I.manipulationYieldsEffect x) ∧
  I.modularity ∧ I.invariance

theorem interventionist_manip_closed_from_evidence (τ : Type u) (I : InterventionistManipPackage τ)
    (E : InterventionistManipEvidence τ I) : InterventionistManipClosed τ I := by
  exact And.intro E.possibleInterventionClosed
    (And.intro E.manipulationYieldsEffectClosed
      (And.intro E.modularityClosed E.invarianceClosed))

end MetaphysicsCausationLemmaCanonicalLaneLean
end HautevilleHouse