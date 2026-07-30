import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCausationLemmaCanonicalLaneLean

structure ProductionLawPackage where
  causeType : Type u
  effectType : Type v
  productionRelation : causeType → effectType → Prop
  lawlike : Prop
  regularity : Prop

structure ProductionLawEvidence (P : ProductionLawPackage) where
  lawlikeClosed : P.lawlike
  regularityClosed : P.regularity

def ProductionLawClosed (P : ProductionLawPackage) : Prop :=
  P.lawlike ∧ P.regularity

theorem production_law_closed_from_evidence (P : ProductionLawPackage)
    (E : ProductionLawEvidence P) : ProductionLawClosed P := by
  exact And.intro E.lawlikeClosed E.regularityClosed

end MetaphysicsCausationLemmaCanonicalLaneLean
end HautevilleHouse