import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCausationLemmaCanonicalLaneLean

structure MetaphysicsAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  causalStructure : Prop
  causalStructureSatisfied : causalStructure
  conclusion : Prop

def MetaphysicsWitnessClosed (O : MetaphysicsAdmittedObject) : Prop :=
  O.causalStructure

end MetaphysicsCausationLemmaCanonicalLaneLean
end HautevilleHouse