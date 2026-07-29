import EconomicsInformationEconomicsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace EconomicsInformationEconomicsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure InformationSpace where
  carrier : Type
  sigmaAlgebra : Set (Set carrier)

structure InformationAdmittedObject where
  space : InformationSpace
  sourceCodingTheorem : Prop
  channelCapacityTheorem : Prop
  rateDistortionTheorem : Prop
  conclusion : sourceCodingTheorem ∧ channelCapacityTheorem ∧ rateDistortionTheorem

structure InformationEndgameState where
  object : InformationAdmittedObject

def InformationWitnessClosed (O : InformationAdmittedObject) : Prop :=
  O.sourceCodingTheorem ∧ O.channelCapacityTheorem ∧ O.rateDistortionTheorem

end EconomicsInformationEconomicsCanonicalLaneLean
end HautevilleHouse