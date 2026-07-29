import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHealthEconomicsCanonicalLaneLean

structure HealthEconomicsMoralHazardPackage where
  principalAgentModel : Type u
  healthStateSpace : Type v
  effortChoice : healthStateSpace → Prop
  insuranceContract : healthStateSpace → ℝ
  incentiveCompatibility : Prop
  participationConstraint : Prop
  optimalContractExists : Prop

structure HealthEconomicsMoralHazardEvidence (H : HealthEconomicsMoralHazardPackage) where
  incentiveCompatibilityClosed : H.incentiveCompatibility
  participationConstraintClosed : H.participationConstraint
  optimalContractExistsClosed : H.optimalContractExists

def HealthEconomicsMoralHazardClosed (H : HealthEconomicsMoralHazardPackage) : Prop :=
  H.incentiveCompatibility ∧ H.participationConstraint ∧ H.optimalContractExists

theorem health_economics_moral_hazard_closed_from_evidence
    (H : HealthEconomicsMoralHazardPackage) (E : HealthEconomicsMoralHazardEvidence H) :
    HealthEconomicsMoralHazardClosed H := by
  exact And.intro E.incentiveCompatibilityClosed
    (And.intro E.participationConstraintClosed E.optimalContractExistsClosed)

end HautevilleHouse.EconomicsHealthEconomicsCanonicalLaneLean
end HautevilleHouse