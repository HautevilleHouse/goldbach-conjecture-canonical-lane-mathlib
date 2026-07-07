import GoldbachConjectureCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace GoldbachConjectureCanonicalLaneLean

structure AdmissibleClass where
  object : GoldbachAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GoldbachPatternSubstrateClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GoldbachConjectureCanonicalLaneLean
end HautevilleHouse
