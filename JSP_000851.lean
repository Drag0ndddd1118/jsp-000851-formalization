import Challenge
import Submission

open Filter Asymptotics

/-- Formal Lean 4 bridge theorem for JSP-000851 (Erdős Problem #926). -/
theorem jsp_000851_solved :
    ∀ k : ℕ, 4 ≤ k →
      (fun n : ℕ ↦ (SimpleGraph.extremalNumber n (Erdos926.Hk k) : ℝ)) =O[Filter.atTop]
        (fun n : ℕ ↦ (n : ℝ) ^ (3 / 2 : ℝ)) :=
  JSP000851.jsp_000851_solved

#print axioms jsp_000851_solved
-- 'jsp_000851_solved' depends on axioms: [propext, Classical.choice, Quot.sound]
