import MetaphysicsCausationLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCausationLemmaCanonicalLaneLean

structure CausalStructure where
  agents : Type
  events : Type
  causationRelation : events → events → Prop
  transitivity : Prop
  asymmetry : Prop

def CausalStructureClosed (C : CausalStructure) : Prop :=
  C.transitivity ∧ C.asymmetry

end MetaphysicsCausationLemmaCanonicalLaneLean
end HautevilleHouse
