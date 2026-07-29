import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsInformationEconomicsCanonicalLaneLean

structure ChannelCapacityPackage where
  inputAlphabet : Type u
  outputAlphabet : Type v
  channelMatrix : inputAlphabet → outputAlphabet → ℝ
  inputDistribution : inputAlphabet → ℝ
  mutualInformation : ℝ
  capacity : ℝ
  capacityAchievingDistribution : Prop
  channelCodingTheorem : Prop
  converseTheorem : Prop

structure ChannelCapacityEvidence (C : ChannelCapacityPackage) where
  capacityAchievingDistributionClosed : C.capacityAchievingDistribution
  channelCodingTheoremClosed : C.channelCodingTheorem
  converseTheoremClosed : C.converseTheorem

def ChannelCapacityClosed (C : ChannelCapacityPackage) : Prop :=
  C.capacityAchievingDistribution ∧ C.channelCodingTheorem ∧ C.converseTheorem

theorem channel_capacity_closed_from_evidence (C : ChannelCapacityPackage)
    (E : ChannelCapacityEvidence C) : ChannelCapacityClosed C :=
  And.intro E.capacityAchievingDistributionClosed
    (And.intro E.channelCodingTheoremClosed E.converseTheoremClosed)

end EconomicsInformationEconomicsCanonicalLaneLean
end HautevilleHouse