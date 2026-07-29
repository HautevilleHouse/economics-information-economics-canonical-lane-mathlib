import canonicalLaneMathlib.AdmissibleClass
import EconomicsInformationEconomicsCanonicalLaneLean.SourceCoding
import EconomicsInformationEconomicsCanonicalLaneLean.ChannelCapacity
import EconomicsInformationEconomicsCanonicalLaneLean.RateDistortion

namespace HautevilleHouse
namespace EconomicsInformationEconomicsCanonicalLaneLean

def ConstrainedInformationEconomicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_information_economics_endgame (A : AdmissibleClass) :
    ConstrainedInformationEconomicsClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EconomicsInformationEconomicsCanonicalLaneLean
end HautevilleHouse