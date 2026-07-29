import EconomicsInformationEconomicsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EconomicsInformationEconomicsCanonicalLaneLean

structure AdmissibleClass where
  object : InformationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  InformationWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EconomicsInformationEconomicsCanonicalLaneLean
end HautevilleHouse