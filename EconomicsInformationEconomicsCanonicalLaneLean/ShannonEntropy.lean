import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsInformationEconomicsCanonicalLaneLean

structure ShannonEntropyPackage where
  probabilityDistribution : (Type u → ℝ) → Prop
  entropy : (Type u → ℝ) → ℝ
  entropyNonnegativity : Prop
  entropyConcavity : Prop

structure ShannonEntropyEvidence (E : ShannonEntropyPackage) where
  entropyNonnegativityClosed : E.entropyNonnegativity
  entropyConcavityClosed : E.entropyConcavity

def ShannonEntropyClosed (E : ShannonEntropyPackage) : Prop :=
  E.entropyNonnegativity ∧ E.entropyConcavity

theorem shannon_entropy_closed_from_evidence (E : ShannonEntropyPackage)
    (Ev : ShannonEntropyEvidence E) : ShannonEntropyClosed E :=
  And.intro Ev.entropyNonnegativityClosed Ev.entropyConcavityClosed

end EconomicsInformationEconomicsCanonicalLaneLean
end HautevilleHouse