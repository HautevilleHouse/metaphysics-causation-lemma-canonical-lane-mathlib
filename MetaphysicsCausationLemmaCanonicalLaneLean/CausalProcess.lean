import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCausationLemmaCanonicalLaneLean

structure CausalProcessPackage where
  stateType : Type u
  timeType : Type v
  causalChain : stateType → stateType → Prop
  continuity : Prop
  locality : Prop

structure CausalProcessEvidence (C : CausalProcessPackage) where
  continuityClosed : C.continuity
  localityClosed : C.locality

def CausalProcessClosed (C : CausalProcessPackage) : Prop :=
  C.continuity ∧ C.locality

theorem causal_process_closed_from_evidence (C : CausalProcessPackage)
    (E : CausalProcessEvidence C) : CausalProcessClosed C := by
  exact And.intro E.continuityClosed E.localityClosed

end MetaphysicsCausationLemmaCanonicalLaneLean
end HautevilleHouse