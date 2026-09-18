# JSP-000851: Formalization of Erdős Problem 926 in Lean 4

This repository contains a complete, verified standalone Lean 4 formalization for **JSP-000851** (Erdős Problem #926), addressing:
> *Extremal number of subdivisions of complete graphs: How many edges can an $n$-vertex graph have while excluding a complete graph with every edge subdivided once?*

---

## 1. Problem Background & Mathematical Result

Erdős Problem #926 asks for the extremal number $\mathrm{ex}(n, \mathrm{sub}(K_k))$ of complete graphs where each edge has been subdivided with a new vertex. For $k \ge 4$, let $H_k$ be the graph formed by the first three levels of the Boolean lattice: one center, $k$ branch vertices, and one subdividing vertex for every pair of branches.

Zoltán Füredi proved that any finite $H_k$-free graph satisfies an explicit upper bound on its edge count, yielding:
$$\mathrm{ex}(n, H_k) = O_k(n^{3/2})$$

- **Reference:** Zoltán Füredi, works on extremal numbers of subdivisions and bipartite graphs.
- **Problem link:** [Erdős Problem #926](https://www.erdosproblems.com/forum/thread/926)

---

## 2. Formalization Details

- **Informal Authors:** Zoltán Füredi
- **Formal Authors:** OpenAI Codex, GPT-5.6 Sol (upstream in `plby/lean-proofs`)
- **Verification & Standalone Packaging:** Qin Zhao ([@Drag0ndddd1118](https://github.com/Drag0ndddd1118))
- **Lean Toolchain:** `leanprover/lean4:v4.33.0`
- **Mathlib Version:** `v4.33.0`

### Main Theorems:

In `Erdos926.lean`:
```lean
theorem erdos_926 :
    ∀ k : ℕ, 4 ≤ k →
      (fun n : ℕ ↦ (SimpleGraph.extremalNumber n (Hk k) : ℝ)) =O[atTop]
        (fun n : ℕ ↦ (n : ℝ) ^ (3 / 2 : ℝ))
```

In `JSP_000851.lean`:
```lean
theorem jsp_000851_solved :
    ∀ k : ℕ, 4 ≤ k →
      (fun n : ℕ ↦ (SimpleGraph.extremalNumber n (Erdos926.Hk k) : ℝ)) =O[Filter.atTop]
        (fun n : ℕ ↦ (n : ℝ) ^ (3 / 2 : ℝ)) :=
  Erdos926.erdos_926
```

### Axiom Audit:
```lean
#print axioms jsp_000851_solved
-- 'jsp_000851_solved' depends on axioms: [propext, Classical.choice, Quot.sound]
```
Zero `sorry`, zero `admit`, zero custom axioms.

---

## 3. Building and Verifying

To build and verify locally using `elan`:

```bash
lake update
lake exe cache get
lake build
```
