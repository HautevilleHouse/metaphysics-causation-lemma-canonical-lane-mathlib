import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCausationLemmaCanonicalLaneLean

structure MechanisticCausationPackage where
  componentType : Type u
  mechanismType : Type v
  causalMechanism : componentType → mechanismType → Prop
  productionChain : Prop
  stability : Prop

structure MechanisticCausationEvidence (M : MechanisticCausationPackage) where
  productionChainClosed : M.productionChain
  stabilityClosed : M.stability

def MechanisticCausationClosed (M : MechanisticCausationPackage) : Prop :=
  M.productionChain ∧ M.stability

theorem mechanistic_causation_closed_from_evidence
    (M : MechanisticCausationPackage)
    (E : MechanisticCausationEvidence M) : MechanisticCausationClosed M := by
  exact And.intro E.productionChainClosed E.stabilityClosed

end MetaphysicsCausationLemmaCanonicalLaneLean
end HautevilleHouse