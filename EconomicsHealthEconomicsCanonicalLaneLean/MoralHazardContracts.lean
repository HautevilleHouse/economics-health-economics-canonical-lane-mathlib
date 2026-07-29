import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHealthEconomicsCanonicalLaneLean

structure MoralHazardContractsPackage where
  principalActionSpace : Type u
  agentActionSpace : Type v
  outputDistribution : Type w
  moralHazardEnvironment : Prop
  incentiveCompatibleContract : Prop
  optimalContractUnderMoralHazard : Prop

structure MoralHazardContractsEvidence (M : MoralHazardContractsPackage) where
  moralHazardEnvironmentClosed : M.moralHazardEnvironment
  incentiveCompatibleContractClosed : M.incentiveCompatibleContract
  optimalContractUnderMoralHazardClosed : M.optimalContractUnderMoralHazard

def MoralHazardContractsClosed (M : MoralHazardContractsPackage) : Prop :=
  M.moralHazardEnvironment ∧ M.incentiveCompatibleContract ∧
  M.optimalContractUnderMoralHazard

theorem moral_hazard_contracts_closed_from_evidence
    (M : MoralHazardContractsPackage)
    (E : MoralHazardContractsEvidence M) :
    MoralHazardContractsClosed M := by
  exact And.intro E.moralHazardEnvironmentClosed
    (And.intro E.incentiveCompatibleContractClosed E.optimalContractUnderMoralHazardClosed)

end EconomicsHealthEconomicsCanonicalLaneLean
end HautevilleHouse