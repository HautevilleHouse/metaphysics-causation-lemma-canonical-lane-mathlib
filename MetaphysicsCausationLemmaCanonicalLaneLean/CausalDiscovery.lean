import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MetaphysicsCausationLemmaCanonicalLaneLean.CausationStructure

namespace HautevilleHouse
namespace MetaphysicsCausationLemmaCanonicalLaneLean

structure CausalDiscovery (C : CausationStructure) where
  observedData : Type u
  causalGraph : Type v
  algorithm : Prop
  identifiability : Prop
  faithfulness : Prop

def CausalDiscoveryClosed (C : CausationStructure) (D : CausalDiscovery C) : Prop :=
  D.algorithm ∧ D.identifiability ∧ D.faithfulness

end MetaphysicsCausationLemmaCanonicalLaneLean
end HautevilleHouse