import GoldbachConjectureCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace GoldbachConjectureCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GoldbachPatternSubstrateClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact ⟨(Exists.intro A.object.leftPrime (Exists.intro A.object.rightPrime A.object.primeSum)),
    A.object.admissibleWindowWitness,
    A.object.localObstructionsWitness,
    A.object.obstructionRemainderWitness,
    A.object.analyticCountingSurfaceWitness,
    A.object.classicalRemainderCarried⟩

end GoldbachConjectureCanonicalLaneLean
end HautevilleHouse
