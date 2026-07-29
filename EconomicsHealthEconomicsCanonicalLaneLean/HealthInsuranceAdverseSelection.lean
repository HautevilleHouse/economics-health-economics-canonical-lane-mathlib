import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHealthEconomicsCanonicalLaneLean

structure HealthInsuranceAdverseSelectionPackage where
  healthStatusType : Type u
  contractType : Type v
  insuranceMarketStructure : Prop
  asymmetricInformation : Prop
  riskPoolingEquilibrium : Prop
  adverseSelectionOutcome : Prop

structure HealthInsuranceAdverseSelectionEvidence (H : HealthInsuranceAdverseSelectionPackage) where
  insuranceMarketStructureClosed : H.insuranceMarketStructure
  asymmetricInformationClosed : H.asymmetricInformation
  riskPoolingEquilibriumClosed : H.riskPoolingEquilibrium
  adverseSelectionOutcomeClosed : H.adverseSelectionOutcome

def HealthInsuranceAdverseSelectionClosed (H : HealthInsuranceAdverseSelectionPackage) : Prop :=
  H.insuranceMarketStructure ∧ H.asymmetricInformation ∧
  H.riskPoolingEquilibrium ∧ H.adverseSelectionOutcome

theorem health_insurance_adverse_selection_closed_from_evidence
    (H : HealthInsuranceAdverseSelectionPackage)
    (E : HealthInsuranceAdverseSelectionEvidence H) :
    HealthInsuranceAdverseSelectionClosed H := by
  exact And.intro E.insuranceMarketStructureClosed
    (And.intro E.asymmetricInformationClosed
      (And.intro E.riskPoolingEquilibriumClosed E.adverseSelectionOutcomeClosed))

end EconomicsHealthEconomicsCanonicalLaneLean
end HautevilleHouse