import GoldbachConjectureCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Set.Basic
import Mathlib.NumberTheory.LSeries.Basic

namespace HautevilleHouse
namespace GoldbachConjectureCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

noncomputable def PrimePatternLSeriesValue (coeffs : Nat -> ℂ) (s : ℂ) : ℂ :=
  LSeries coeffs s

def PrimePatternLSeriesAdmissible (coeffs : Nat -> ℂ) (s : ℂ) : Prop :=
  LSeriesSummable coeffs s

theorem prime_pattern_lseries_zero_admissible (s : ℂ) :
    PrimePatternLSeriesAdmissible 0 s := by
  exact LSeriesSummable_zero

def GoldbachEvenTarget (n : Nat) : Prop :=
  2 < n ∧ 2 ∣ n

def GoldbachPrimeSum (n p q : Nat) : Prop :=
  Nat.Prime p ∧ Nat.Prime q ∧ p + q = n

structure GoldbachWindow where
  target : Nat
  lowerPrimeBound : Nat
  upperPrimeBound : Nat
  targetEven : GoldbachEvenTarget target

structure GoldbachAdmittedObject where
  window : GoldbachWindow
  leftPrime : Nat
  rightPrime : Nat
  primeSum : GoldbachPrimeSum window.target leftPrime rightPrime
  leftInWindow : window.lowerPrimeBound <= leftPrime
  rightInWindow : rightPrime <= window.upperPrimeBound
  admissibleWindow : Prop
  admissibleWindowWitness : admissibleWindow
  localObstructionsCleared : Prop
  localObstructionsWitness : localObstructionsCleared
  obstructionRemainderRecorded : Prop
  obstructionRemainderWitness : obstructionRemainderRecorded
  analyticCountingSurfaceRecorded : Prop
  analyticCountingSurfaceWitness : analyticCountingSurfaceRecorded
  classicalRemainderCarried : formalizationCertificate.sourceConjectureClosureClaimed = false

structure GoldbachClosureState where
  object : GoldbachAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop

def GoldbachWitnessClosed (O : GoldbachAdmittedObject) : Prop :=
  exists p q : Nat, GoldbachPrimeSum O.window.target p q

def GoldbachPatternSubstrateClosed (O : GoldbachAdmittedObject) : Prop :=
  GoldbachWitnessClosed O ∧
  O.admissibleWindow ∧
  O.localObstructionsCleared ∧
  O.obstructionRemainderRecorded ∧
  O.analyticCountingSurfaceRecorded ∧
  (formalizationCertificate.sourceConjectureClosureClaimed = false)

end GoldbachConjectureCanonicalLaneLean
end HautevilleHouse
