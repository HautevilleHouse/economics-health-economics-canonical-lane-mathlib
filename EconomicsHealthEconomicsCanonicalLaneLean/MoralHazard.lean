import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHealthEconomicsCanonicalLaneLean

structure MoralHazardPackage where
  agentEffort : Set ℝ
  effortCost : ℝ → ℝ
  healthOutcome : ℝ → ℝ
  insuranceContract : ℝ → ℝ
  incentiveCompatibility : ∀ e1 e2 : ℝ, agentEffort e1 → agentEffort e2 → insuranceContract (healthOutcome e1) - effortCost e1 ≥ insuranceContract (healthOutcome e2) - effortCost e2
  participationConstraint : ∀ e : ℝ, agentEffort e → insuranceContract (healthOutcome e) - effortCost e ≥ 0

structure MoralHazardEvidence (M : MoralHazardPackage) where
  incentiveCompatibilityClosed : ∀ e1 e2 : ℝ, M.agentEffort e1 → M.agentEffort e2 → M.insuranceContract (M.healthOutcome e1) - M.effortCost e1 ≥ M.insuranceContract (M.healthOutcome e2) - M.effortCost e2
  participationConstraintClosed : ∀ e : ℝ, M.agentEffort e → M.insuranceContract (M.healthOutcome e) - M.effortCost e ≥ 0

def MoralHazardClosed (M : MoralHazardPackage) : Prop :=
  (∀ e1 e2 : ℝ, M.agentEffort e1 → M.agentEffort e2 → M.insuranceContract (M.healthOutcome e1) - M.effortCost e1 ≥ M.insuranceContract (M.healthOutcome e2) - M.effortCost e2) ∧
  (∀ e : ℝ, M.agentEffort e → M.insuranceContract (M.healthOutcome e) - M.effortCost e ≥ 0)

theorem moral_hazard_closed_from_evidence (M : MoralHazardPackage) (E : MoralHazardEvidence M) : MoralHazardClosed M :=
  by
    exact And.intro E.incentiveCompatibilityClosed E.participationConstraintClosed

end EconomicsHealthEconomicsCanonicalLaneLean
end HautevilleHouse
