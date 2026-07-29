import EconomicsInformationEconomicsCanonicalLaneLean.SourceCoding

namespace HautevilleHouse
namespace EconomicsInformationEconomicsCanonicalLaneLean

structure EntropyMeasurePackage (S : SourcePackage) where
  entropyFunction : S.symbolType → ℝ
  entropyRate : Prop
  entropyNonneg : Prop
  chainRule : Prop

structure EntropyMeasureEvidence (E : EntropyMeasurePackage S) where
  entropyRateClosed : E.entropyRate
  entropyNonnegClosed : E.entropyNonneg
  chainRuleClosed : E.chainRule

def EntropyMeasureClosed (E : EntropyMeasurePackage S) : Prop :=
  E.entropyRate ∧ E.entropyNonneg ∧ E.chainRule

theorem entropy_measure_closed_from_evidence (E : EntropyMeasurePackage S) (E' : EntropyMeasureEvidence E) : EntropyMeasureClosed E :=
  And.intro E'.entropyRateClosed (And.intro E'.entropyNonnegClosed E'.chainRuleClosed)

end EconomicsInformationEconomicsCanonicalLaneLean
end HautevilleHouse