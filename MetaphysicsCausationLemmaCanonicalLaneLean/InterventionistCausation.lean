import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCausationLemmaCanonicalLaneLean

structure InterventionistCausationPackage where
  variableType : Type u
  interventionType : Type v
  causalEffect : variableType → interventionType → variableType → Prop
  modularity : Prop
  invariance : Prop

structure InterventionistCausationEvidence (I : InterventionistCausationPackage) where
  modularityClosed : I.modularity
  invarianceClosed : I.invariance

def InterventionistCausationClosed (I : InterventionistCausationPackage) : Prop :=
  I.modularity ∧ I.invariance

theorem interventionist_causation_closed_from_evidence
    (I : InterventionistCausationPackage)
    (E : InterventionistCausationEvidence I) : InterventionistCausationClosed I := by
  exact And.intro E.modularityClosed E.invarianceClosed

end MetaphysicsCausationLemmaCanonicalLaneLean
end HautevilleHouse