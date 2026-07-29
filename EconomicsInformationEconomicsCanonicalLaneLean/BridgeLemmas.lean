import EconomicsInformationEconomicsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace EconomicsInformationEconomicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  InformationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EconomicsInformationEconomicsCanonicalLaneLean
end HautevilleHouse