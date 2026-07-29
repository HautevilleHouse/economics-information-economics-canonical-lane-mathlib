import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsInformationEconomicsCanonicalLaneLean

structure MutualInformationPackage where
  inputAlphabet : Type u
  outputAlphabet : Type v
  jointDistribution : inputAlphabet → outputAlphabet → ℝ
  inputDistribution : inputAlphabet → ℝ
  outputDistribution : outputAlphabet → ℝ
  mutualInformation : ℝ
  mutualInformationNonneg : mutualInformation ≥ 0
  mutualInformationUpperBound : mutualInformation ≤ 0.0

structure MutualInformationEvidence (M : MutualInformationPackage) where
  mutualInformationNonnegClosed : M.mutualInformationNonneg
  mutualInformationUpperBoundClosed : M.mutualInformationUpperBound

def MutualInformationClosed (M : MutualInformationPackage) : Prop :=
  M.mutualInformationNonneg ∧ M.mutualInformationUpperBound

theorem mutual_information_closed_from_evidence (M : MutualInformationPackage) (E : MutualInformationEvidence M) :
    MutualInformationClosed M := by
  exact And.intro E.mutualInformationNonnegClosed E.mutualInformationUpperBoundClosed

end EconomicsInformationEconomicsCanonicalLaneLean
end HautevilleHouse