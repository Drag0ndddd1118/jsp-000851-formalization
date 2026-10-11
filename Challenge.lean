import Erdos926

namespace JSP000851

open Filter Asymptotics

/--
Formal statement for JSP-000851 (Erdős Problem #926):
How many edges can a graph have while excluding a complete graph with every edge subdivided once?

For k ≥ 4, let H_k be the graph formed by the first three levels of the Boolean lattice:
one center, k branch vertices, and one subdividing vertex for every pair of branches.
Affirmatively resolved by Zoltán Füredi (1991), establishing ex(n, H_k) = O_k(n^(3/2)).
-/
def jsp000851Statement : Prop :=
  ∀ k : ℕ, 4 ≤ k →
    (fun n : ℕ ↦ (SimpleGraph.extremalNumber n (Erdos926.Hk k) : ℝ)) =O[atTop]
      (fun n : ℕ ↦ (n : ℝ) ^ (3 / 2 : ℝ))

end JSP000851
