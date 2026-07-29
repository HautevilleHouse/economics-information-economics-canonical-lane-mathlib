import HautevilleHouse.EconomicsInformationEconomicsCanonicalLaneLean.ReviewerBridge
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsInformationEconomicsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure InformationSource where
  alphabet : Type
  probability : alphabet → ℝ
  entropy : ℝ

structure InformationChannel where
  input : InformationSource
  output : InformationSource
  transition : input.alphabet → output.alphabet → ℝ
  capacity : ℝ

structure InformationAdmittedObject where
  source : InformationSource
  channel : InformationChannel
  rateDistortionFunction : ℝ → ℝ
  sourceCodingTheoremHolds : Prop
  channelCodingTheoremHolds : channel.capacity > 0 → Prop
  conclusion : sourceCodingTheoremHolds ∧ (channel.capacity > 0 → channelCodingTheoremHolds channel)

def InformationWitnessClosed (O : InformationAdmittedObject) : Prop :=
  O.sourceCodingTheoremHolds ∧ (O.channel.capacity > 0 → O.channelCodingTheoremHolds O.channel)

end EconomicsInformationEconomicsCanonicalLaneLean
end HautevilleHouse