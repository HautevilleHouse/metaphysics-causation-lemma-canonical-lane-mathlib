import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCausationLemmaCanonicalLaneLean

structure ManiacalRegularityPackage (τ : Type u) where
  constantConjunction : Prop
  exceptionless : Prop
  regularityConditional : Prop
  coveringLaw : Prop

structure ManiacalRegularityEvidence (τ : Type u) (M : ManiacalRegularityPackage τ) where
  constantConjunctionClosed : M.constantConjunction
  exceptionlessClosed : M.exceptionless
  regularityConditionalClosed : M.regularityConditional
  coveringLawClosed : M.coveringLaw

def ManiacalRegularityClosed (τ : Type u) (M : ManiacalRegularityPackage τ) : Prop :=
  M.constantConjunction ∧ M.exceptionless ∧ M.regularityConditional ∧ M.coveringLaw

theorem maniacal_regularity_closed_from_evidence (τ : Type u) (M : ManiacalRegularityPackage τ)
    (E : ManiacalRegularityEvidence τ M) : ManiacalRegularityClosed τ M := by
  exact And.intro E.constantConjunctionClosed
    (And.intro E.exceptionlessClosed
      (And.intro E.regularityConditionalClosed E.coveringLawClosed))

end MetaphysicsCausationLemmaCanonicalLaneLean
end HautevilleHouse