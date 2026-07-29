import HautevilleHouse.EconomicsInformationEconomicsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EconomicsInformationEconomicsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.channelCapacityAchieved ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end EconomicsInformationEconomicsCanonicalLaneLean
end HautevilleHouse