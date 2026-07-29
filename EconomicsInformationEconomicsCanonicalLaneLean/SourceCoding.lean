import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsInformationEconomicsCanonicalLaneLean

structure SourceCodingPackage where
  sourceAlphabet : Type u
  sourceDistribution : sourceAlphabet → ℝ
  codeAlphabet : Type v
  codeLength : sourceAlphabet → ℕ
  expectedLength : ℝ
  entropy : ℝ
  optimalExpectedLength : ℝ
  encodingDecoding : Type w
  uniqueDecodability : Prop
  kraftInequality : Prop
  sourceCodingTheorem : Prop

structure SourceCodingEvidence (P : SourceCodingPackage) where
  uniqueDecodabilityClosed : P.uniqueDecodability
  kraftInequalityClosed : P.kraftInequality
  sourceCodingTheoremClosed : P.sourceCodingTheorem

def SourceCodingClosed (P : SourceCodingPackage) : Prop :=
  P.uniqueDecodability ∧ P.kraftInequality ∧ P.sourceCodingTheorem

theorem source_coding_closed_from_evidence (P : SourceCodingPackage)
    (E : SourceCodingEvidence P) : SourceCodingClosed P :=
  And.intro E.uniqueDecodabilityClosed
    (And.intro E.kraftInequalityClosed E.sourceCodingTheoremClosed)

end EconomicsInformationEconomicsCanonicalLaneLean
end HautevilleHouse