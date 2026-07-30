import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCausationLemmaCanonicalLaneLean

structure RegularityPackage where
  eventType : Type u
  constantConjunction : eventType → eventType → Prop
  spuriousCorrelation : eventType → eventType → Prop
  necessaryConnection : eventType → eventType → Prop

def regularityClosed (R : RegularityPackage) : Prop :=
  ∀ (a b : R.eventType), R.constantConjunction a b → ¬ R.spuriousCorrelation a b ∧ R.necessaryConnection a b

structure RegularityEvidence (R : RegularityPackage) where
  noSpurious : ∀ (a b : R.eventType), R.constantConjunction a b → ¬ R.spuriousCorrelation a b
  necessaryConnectionHolds : ∀ (a b : R.eventType), R.constantConjunction a b → R.necessaryConnection a b

theorem regularity_closed_from_evidence (R : RegularityPackage) (E : RegularityEvidence R) : regularityClosed R := by
  intro a b h
  exact And.intro (E.noSpurious a b h) (E.necessaryConnectionHolds a b h)

end MetaphysicsCausationLemmaCanonicalLaneLean
end HautevilleHouse
