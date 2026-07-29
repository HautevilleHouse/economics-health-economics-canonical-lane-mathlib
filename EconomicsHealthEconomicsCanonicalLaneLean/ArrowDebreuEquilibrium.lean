import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHealthEconomicsCanonicalLaneLean

structure ArrowDebreuEquilibriumPackage where
  commoditySpace : Type u
  priceSystem : Type v
  endowments : commoditySpace → commoditySpace
  preferences : commoditySpace → Prop
  utilityFunctions : Prop
  excessDemandFunction : Prop
  walrasLaw : Prop
  equilibriumPricesExist : Prop

structure ArrowDebreuEquilibriumEvidence (A : ArrowDebreuEquilibriumPackage) where
  utilityFunctionsClosed : A.utilityFunctions
  excessDemandFunctionClosed : A.excessDemandFunction
  walrasLawClosed : A.walrasLaw
  equilibriumPricesExistClosed : A.equilibriumPricesExist

def ArrowDebreuEquilibriumClosed (A : ArrowDebreuEquilibriumPackage) : Prop :=
  A.utilityFunctions ∧ A.excessDemandFunction ∧ A.walrasLaw ∧ A.equilibriumPricesExist

theorem arrow_debreu_equilibrium_closed_from_evidence
    (A : ArrowDebreuEquilibriumPackage) (E : ArrowDebreuEquilibriumEvidence A) :
    ArrowDebreuEquilibriumClosed A := by
  exact And.intro E.utilityFunctionsClosed
    (And.intro E.excessDemandFunctionClosed
      (And.intro E.walrasLawClosed E.equilibriumPricesExistClosed))

end HautevilleHouse.EconomicsHealthEconomicsCanonicalLaneLean
end HautevilleHouse