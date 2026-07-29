import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsInformationEconomicsCanonicalLaneLean

structure RateDistortionPackage where
  sourceAlphabet : Type u
  sourceDistribution : sourceAlphabet → ℝ
  reconstructionAlphabet : Type v
  distortionMeasure : sourceAlphabet → reconstructionAlphabet → ℝ
  rate : ℝ
  distortion : ℝ
  rateDistortionFunction : ℝ → ℝ
  rateDistortionTheorem : Prop
  converseTheorem : Prop

structure RateDistortionEvidence (R : RateDistortionPackage) where
  rateDistortionTheoremClosed : R.rateDistortionTheorem
  converseTheoremClosed : R.converseTheorem

def RateDistortionClosed (R : RateDistortionPackage) : Prop :=
  R.rateDistortionTheorem ∧ R.converseTheorem

theorem rate_distortion_closed_from_evidence (R : RateDistortionPackage)
    (E : RateDistortionEvidence R) : RateDistortionClosed R :=
  And.intro E.rateDistortionTheoremClosed E.converseTheoremClosed

end EconomicsInformationEconomicsCanonicalLaneLean
end HautevilleHouse