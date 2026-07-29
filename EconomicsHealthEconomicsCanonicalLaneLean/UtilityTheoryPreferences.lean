import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHealthEconomicsCanonicalLaneLean

structure UtilityTheoryPreferencesPackage where
  consumptionSet : Type u
  preferenceRelation : consumptionSet → consumptionSet → Prop
  completeness : Prop
  transitivity : Prop
  continuity : Prop
  utilityFunctionExists : Prop

structure UtilityTheoryPreferencesEvidence (U : UtilityTheoryPreferencesPackage) where
  completenessClosed : U.completeness
  transitivityClosed : U.transitivity
  continuityClosed : U.continuity
  utilityFunctionExistsClosed : U.utilityFunctionExists

def UtilityTheoryPreferencesClosed (U : UtilityTheoryPreferencesPackage) : Prop :=
  U.completeness ∧ U.transitivity ∧ U.continuity ∧ U.utilityFunctionExists

theorem utility_theory_preferences_closed_from_evidence
    (U : UtilityTheoryPreferencesPackage) (E : UtilityTheoryPreferencesEvidence U) :
    UtilityTheoryPreferencesClosed U := by
  exact And.intro E.completenessClosed
    (And.intro E.transitivityClosed
      (And.intro E.continuityClosed E.utilityFunctionExistsClosed))

end HautevilleHouse.EconomicsHealthEconomicsCanonicalLaneLean
end HautevilleHouse