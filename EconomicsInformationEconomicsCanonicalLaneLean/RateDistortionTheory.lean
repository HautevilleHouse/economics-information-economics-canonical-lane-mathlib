import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsInformationEconomicsCanonicalLaneLean

structure RateDistortionPackage where
  sourceAlphabet : Type u
  reproductionAlphabet : Type v
  distortionMeasure : sourceAlphabet → reproductionAlphabet → ℝ
  rateDistortionFunction : ℝ → ℝ
  achievableRate : Prop

structure RateDistortionEvidence (R : RateDistortionPackage) where
  rateDistortionFunctionDefined : ∀ d : ℝ, R.rateDistortionFunction d ≥ 0
  achievableRateClosed : R.achievableRate

def RateDistortionClosed (R : RateDistortionPackage) : Prop :=
  (∀ d : ℝ, R.rateDistortionFunction d ≥ 0) ∧ R.achievableRate

theorem rate_distortion_closed_from_evidence (R : RateDistortionPackage) (E : RateDistortionEvidence R) :
    RateDistortionClosed R := by
  exact And.intro E.rateDistortionFunctionDefined E.achievableRateClosed

end EconomicsInformationEconomicsCanonicalLaneLean
end HautevilleHouse