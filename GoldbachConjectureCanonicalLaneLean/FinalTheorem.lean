import GoldbachConjectureCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GoldbachConjectureCanonicalLaneLean

def ConstrainedGoldbachClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧ ClassicalSourceBoundaryCarried

theorem constrained_goldbach_closure (A : AdmissibleClass) :
    ConstrainedGoldbachClosure A := by
  exact And.intro (bridge_from_admissible_class A)
    (And.intro (gate_from_admissible_class A) classical_source_boundary_carried_checked)

end GoldbachConjectureCanonicalLaneLean
end HautevilleHouse

namespace HautevilleHouse
namespace GoldbachConjectureCanonicalLaneLean

def ConstrainedTheoremClosure (A : AdmissibleClass) : Prop :=
  ConstrainedGoldbachClosure A

theorem constrained_theorem_closure (A : AdmissibleClass) :
    ConstrainedTheoremClosure A := by
  exact constrained_goldbach_closure A

end GoldbachConjectureCanonicalLaneLean
end HautevilleHouse
