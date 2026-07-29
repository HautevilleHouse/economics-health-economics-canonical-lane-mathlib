import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHealthEconomicsCanonicalLaneLean

structure SolowGrowthModel where
  outputPerCapita : ℝ -> ℝ
  capitalPerCapita : ℝ -> ℝ
  savingsRate : ℝ
  depreciationRate : ℝ
  populationGrowthRate : ℝ
  technologyLevel : ℝ -> ℝ
  productionFunction : ℝ -> ℝ -> ℝ
  lawOfMotion : ∀ t : ℝ, derivative capitalPerCapita t =
    savingsRate * outputPerCapita t - (depreciationRate + populationGrowthRate) * capitalPerCapita t
  steadyStateCapital : ℝ
  steadyStateCondition : savingsRate * productionFunction steadyStateCapital technologyLevel 0 =
    (depreciationRate + populationGrowthRate) * steadyStateCapital
  convergenceToSteadyState : Asymptotics.Tendsto capitalPerCapita (Filter.atTop) (Filter.cocompact ℝ) (steadyStateCapital)

end EconomicsHealthEconomicsCanonicalLaneLean
end HautevilleHouse
