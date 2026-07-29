import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHealthEconomicsCanonicalLaneLean

structure AssetPricingCAPMPackage where
  assetUniverse : Type u
  riskFreeRate : Type v
  marketPortfolio : assetUniverse → Prop
  betaCoefficient : assetUniverse → ℝ
  expectedReturn : assetUniverse → ℝ
  securityMarketLine : Prop
  equilibriumReturns : Prop

structure AssetPricingCAPMEvidence (A : AssetPricingCAPMPackage) where
  securityMarketLineClosed : A.securityMarketLine
  equilibriumReturnsClosed : A.equilibriumReturns

def AssetPricingCAPMClosed (A : AssetPricingCAPMPackage) : Prop :=
  A.securityMarketLine ∧ A.equilibriumReturns

theorem asset_pricing_capm_closed_from_evidence
    (A : AssetPricingCAPMPackage) (E : AssetPricingCAPMEvidence A) :
    AssetPricingCAPMClosed A := by
  exact And.intro E.securityMarketLineClosed E.equilibriumReturnsClosed

end HautevilleHouse.EconomicsHealthEconomicsCanonicalLaneLean
end HautevilleHouse