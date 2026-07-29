import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHealthEconomicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HealthEconomicsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EconomicsHealthEconomicsCanonicalLaneLean
end HautevilleHouse
