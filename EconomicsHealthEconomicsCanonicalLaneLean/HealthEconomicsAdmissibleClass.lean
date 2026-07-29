import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHealthEconomicsCanonicalLaneLean

structure HealthEconomicsAdmittedObject where
  agentType : Type
  preferenceRelation : agentType → agentType → Prop
  utilityFunction : agentType → ℝ
  budgetConstraint : ℝ
  demandFunction : agentType → ℝ → ℝ
  equilibriumPrice : ℝ
  marketClearingCondition : Prop

structure AdmissibleClass where
  object : HealthEconomicsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (bridgeClosed A) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EconomicsHealthEconomicsCanonicalLaneLean
end HautevilleHouse