import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHealthEconomicsCanonicalLaneLean

structure PreferenceRelation (X : Type u) where
  relation : X -> X -> Prop
  totalPreorder : TotalPreorder X relation

def utilityRepresentation {X : Type u} (pref : PreferenceRelation X) (u : X -> ℝ) : Prop :=
  ∀ x y : X, pref.relation x y ↔ u x ≤ u y

structure VonNeumannMorgensternUtility (outcomeSet : Type u) (lotterySpace : Type v) where
  utilityVector : outcomeSet -> ℝ
  expectedUtility : lotterySpace -> ℝ
  expectedUtilityConsistency : ∀ l : lotterySpace,
    expectedUtility l = ∑ o : outcomeSet, (probMass l o) * utilityVector o
  probMass : lotterySpace -> outcomeSet -> ℝ
  probMassPositive : ∀ (l : lotterySpace) (o : outcomeSet), probMass l o ≥ 0
  probMassSumOne : ∀ l : lotterySpace, ∑ o : outcomeSet, probMass l o = 1
  preferenceConsistency : PreferenceRelation lotterySpace
  representationHolds : utilityRepresentation preferenceConsistency expectedUtility

end EconomicsHealthEconomicsCanonicalLaneLean
end HautevilleHouse
