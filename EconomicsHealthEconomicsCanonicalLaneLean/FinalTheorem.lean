import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHealthEconomicsCanonicalLaneLean

def ConstrainedEconomicsHealthEconomicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_economics_health_economics_endgame (A : AdmissibleClass) :
    ConstrainedEconomicsHealthEconomicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HautevilleHouse.EconomicsHealthEconomicsCanonicalLaneLean
end HautevilleHouse