import EconomicsHealthEconomicsCanonicalLaneLean.HealthEconomicsAdmissibleClass

namespace HautevilleHouse
namespace EconomicsHealthEconomicsCanonicalLaneLean

structure HealthInput where
  medicalCareQuantity : ℝ
  timeAllocation : ℝ
  lifestyleFactors : ℝ

structure HealthProductionFunction where
  outputHealth : ℝ
  elasticityOfSubstitution : ℝ
  marginalProducts : ℝ → ℝ

theorem health_production_convex (h : HealthProductionFunction) : convexOn ℝ Set.univ h.marginalProducts := by
  intro x y t hx hy ht
  have : x ∈ Set.univ := Set.mem_univ x
  have : y ∈ Set.univ := Set.mem_univ y
  sorry

structure HealthInvestmentPackage where
  healthCapital : ℝ
  depreciationRate : ℝ
  investmentEfficiency : ℝ
  healthProduction : HealthProductionFunction

def healthInvestmentClosed (H : HealthInvestmentPackage) : Prop :=
  H.healthCapital ≥ 0 ∧ H.depreciationRate ≥ 0 ∧ H.investmentEfficiency > 0

theorem health_investment_closed (H : HealthInvestmentPackage) (hcap : H.healthCapital ≥ 0) (hdep : H.depreciationRate ≥ 0) (heff : H.investmentEfficiency > 0) : healthInvestmentClosed H := by
  exact And.intro hcap (And.intro hdep heff)

end EconomicsHealthEconomicsCanonicalLaneLean
end HautevilleHouse