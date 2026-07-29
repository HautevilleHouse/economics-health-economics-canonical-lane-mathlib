import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHealthEconomicsCanonicalLaneLean

structure ConsumerChoicePackage (A : AdmissibleClass) where
  preferenceRelation : Type
  utilityFunction : Type
  budgetSet : Type
  demandCorrespondence : Type
  preferenceComplete : Prop
  preferenceTransitive : Prop
  utilityContinuous : Prop
  budgetNonempty : Prop
  demandNonempty : Prop
  demandUpperHemiffffContinuity : Prop
  demandAgreesWithMaximization : Prop

def consumerChoiceClosed (A : AdmissibleClass) (P : ConsumerChoicePackage A) : Prop :=
  P.preferenceComplete ∧ P.preferenceTransitive ∧ P.utilityContinuous ∧
  P.budgetNonempty ∧ P.demandNonempty ∧ P.demandUpperHemiffffContinuity ∧
  P.demandAgreesWithMaximization

theorem consumer_choice_closure (A : AdmissibleClass) (P : ConsumerChoicePackage A)
    (evidence : consumerChoiceClosed A P) : bridgeClosed A ∧ consumerChoiceClosed A P := by
  refine And.intro (bridge_from_admissible_class A) evidence

end EconomicsHealthEconomicsCanonicalLaneLean
end HautevilleHouse
