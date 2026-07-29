import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHealthEconomicsCanonicalLaneLean

structure GrowthModelRamseyPackage where
  capitalStock : Type u
  productionFunction : capitalStock → capitalStock
  consumptionPath : capitalStock → Prop
  intertemporalUtility : Prop
  eulerEquation : Prop
  steadyStateExists : Prop

structure GrowthModelRamseyEvidence (G : GrowthModelRamseyPackage) where
  intertemporalUtilityClosed : G.intertemporalUtility
  eulerEquationClosed : G.eulerEquation
  steadyStateExistsClosed : G.steadyStateExists

def GrowthModelRamseyClosed (G : GrowthModelRamseyPackage) : Prop :=
  G.intertemporalUtility ∧ G.eulerEquation ∧ G.steadyStateExists

theorem growth_model_ramsey_closed_from_evidence
    (G : GrowthModelRamseyPackage) (E : GrowthModelRamseyEvidence G) :
    GrowthModelRamseyClosed G := by
  exact And.intro E.intertemporalUtilityClosed
    (And.intro E.eulerEquationClosed E.steadyStateExistsClosed)

end HautevilleHouse.EconomicsHealthEconomicsCanonicalLaneLean
end HautevilleHouse