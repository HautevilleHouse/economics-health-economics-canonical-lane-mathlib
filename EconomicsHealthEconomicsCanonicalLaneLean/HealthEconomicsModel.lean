import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHealthEconomicsCanonicalLaneLean

structure HealthProductionFunction where
  healthInputs : Type u
  healthStatus : Type v
  productionFunction : healthInputs -> healthStatus -> ℝ
  efficiencyParameter : ℝ

def healthUtility {H : Type u} (health : H) (income : ℝ) : ℝ := 0

structure GrossmanHealthCapitalModel where
  healthStock : ℝ -> ℝ
  investment : ℝ -> ℝ
  depreciationRate : ℝ
  initialHealth : ℝ
  healthProductionFunction : HealthProductionFunction
  lawOfMotion : ∀ t : ℝ, derivative healthStock t = healthProductionFunction.efficiencyParameter *
    investment t - depreciationRate * healthStock t
  utilityFunction : ℝ -> ℝ -> ℝ
  objectiveFunctional : (ℝ -> ℝ) -> (ℝ -> ℝ) -> ℝ
  optimalityCondition : utilityFunction (healthStock 0) 0 ≤ objectiveFunctional healthStock investment

end EconomicsHealthEconomicsCanonicalLaneLean
end HautevilleHouse
