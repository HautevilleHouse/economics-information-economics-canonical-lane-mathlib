import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsInformationEconomicsCanonicalLaneLean

structure DataProcessingInequalityPackage where
  randomVariables : Type u → Type v → Type w
  mutualInformation : (Type u → Type v → ℝ) → Prop
  dpiStatement : Prop

structure DataProcessingInequalityEvidence (D : DataProcessingInequalityPackage) where
  dpiStatementClosed : D.dpiStatement

def DataProcessingInequalityClosed (D : DataProcessingInequalityPackage) : Prop :=
  D.dpiStatement

theorem dpi_closed_from_evidence (D : DataProcessingInequalityPackage)
    (E : DataProcessingInequalityEvidence D) : DataProcessingInequalityClosed D :=
  E.dpiStatementClosed

end EconomicsInformationEconomicsCanonicalLaneLean
end HautevilleHouse