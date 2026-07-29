import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace EconomicsHealthEconomicsCanonicalLaneLean

structure HealthEconomicsAdmittedObject where
  healthMarket : Type
  equilibrium : Prop
  efficiency : Prop
  equity : Prop
  conclusion : equilibrium ∧ efficiency ∧ equity

def HealthEconomicsWitnessClosed (O : HealthEconomicsAdmittedObject) : Prop :=
  O.equilibrium ∧ O.efficiency ∧ O.equity

end EconomicsHealthEconomicsCanonicalLaneLean
end HautevilleHouse
