import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHealthEconomicsCanonicalLaneLean

structure AssetPricingModel where
  asset : Type u
  stateSpace : Type v
  price : asset -> ℝ
  payoff : asset -> stateSpace -> ℝ
  probabilityMeasure : stateSpace -> ℝ
  discountFactor : ℝ
  expectedPayoff : asset -> ℝ
  expectedPayoffFormula : ∀ a : asset,
    expectedPayoff a = ∑ s : stateSpace, probabilityMeasure s * payoff a s
  priceFormula : ∀ a : asset,
    price a = discountFactor * expectedPayoff a
  positiveDiscountFactor : discountFactor > 0
  probabilityMeasurePositive : ∀ s : stateSpace, probabilityMeasure s > 0
  probabilityMeasureSumOne : ∑ s : stateSpace, probabilityMeasure s = 1

structure CapitalAssetPricingModel extends AssetPricingModel where
  riskFreeRate : ℝ
  marketPortfolio : asset -> ℝ
  marketReturn : ℝ
  beta : asset -> ℝ
  betaFormula : ∀ a : asset,
    beta a = (covariance (payoff a) marketReturn) / variance marketReturn
  expectedReturn : asset -> ℝ
  expectedReturnFormula : ∀ a : asset,
    expectedReturn a = riskFreeRate + beta a * (marketReturn - riskFreeRate)
  covariance : (stateSpace -> ℝ) -> (stateSpace -> ℝ) -> ℝ
  variance : (stateSpace -> ℝ) -> ℝ

end EconomicsHealthEconomicsCanonicalLaneLean
end HautevilleHouse
