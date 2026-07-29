import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHealthEconomicsCanonicalLaneLean

structure HealthTechnologyAssessmentPackage where
  treatmentOption : Type u
  costEffectivenessRatio : Type v
  patientOutcomeMeasure : Type w
  technologyEvaluation : Prop
  costEffectivenessAcceptability : Prop
  policyRecommendation : Prop

structure HealthTechnologyAssessmentEvidence (H : HealthTechnologyAssessmentPackage) where
  technologyEvaluationClosed : H.technologyEvaluation
  costEffectivenessAcceptabilityClosed : H.costEffectivenessAcceptability
  policyRecommendationClosed : H.policyRecommendation

def HealthTechnologyAssessmentClosed (H : HealthTechnologyAssessmentPackage) : Prop :=
  H.technologyEvaluation ∧ H.costEffectivenessAcceptability ∧
  H.policyRecommendation

theorem health_technology_assessment_closed_from_evidence
    (H : HealthTechnologyAssessmentPackage)
    (E : HealthTechnologyAssessmentEvidence H) :
    HealthTechnologyAssessmentClosed H := by
  exact And.intro E.technologyEvaluationClosed
    (And.intro E.costEffectivenessAcceptabilityClosed E.policyRecommendationClosed)

end EconomicsHealthEconomicsCanonicalLaneLean
end HautevilleHouse