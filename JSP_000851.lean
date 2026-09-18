import Erdos926

theorem jsp_000851_solved :
    ∀ k : ℕ, 4 ≤ k →
      (fun n : ℕ ↦ (SimpleGraph.extremalNumber n (Erdos926.Hk k) : ℝ)) =O[Filter.atTop]
        (fun n : ℕ ↦ (n : ℝ) ^ (3 / 2 : ℝ)) :=
  Erdos926.erdos_926

#print axioms jsp_000851_solved
-- 'jsp_000851_solved' depends on axioms: [propext, Classical.choice, Quot.sound]
