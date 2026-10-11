# Formalization of JSP-000851 (Erdős Problem #926)

## Problem Overview

**Catalog ID:** [JSP-000851](https://github.com/TheJustinSunPrize/awards/blob/main/problems/catalog-0801-0900.md#JSP-000851)  
**Erdős Problem:** [#926](https://www.erdosproblems.com/926)  
**Mathematical Area:** Graph Theory / Subdivisions  

### Problem Statement

How many edges can a graph have while excluding a complete graph with every edge subdivided once?

For $k \ge 4$, let $H_k$ be the graph formed by the first three levels of the Boolean lattice: one center, $k$ branch vertices, and one subdividing vertex for every pair of branches. Erdős asked for the growth rate of $\mathrm{ex}(n, H_k)$.

### Resolution

Affirmatively resolved by Zoltán Füredi (1991):

- **Reference:** Z. Füredi, *On a Turán type problem of Erdős*, Combinatorica 11 (1991), 75–79. [doi:10.1007/BF01375474](https://doi.org/10.1007/BF01375474).
- Proved that for each $k \ge 4$, $\mathrm{ex}(n, H_k) = O_k(n^{3/2})$.

## Formalization Details

- **Contract Statement:** `Challenge.lean` defines `JSP000851.jsp000851Statement`
- **Solution Theorem:** `Submission.lean` proves `JSP000851.jsp_000851_solved : jsp000851Statement`
- **Underlying Formalization:** `Erdos926.lean` provides complete, fully closed proofs.
- **Axioms Check:**
  `#print axioms JSP000851.jsp_000851_solved` yields strictly:
  ```lean
  [propext, Classical.choice, Quot.sound]
  ```
  **Zero** unproved hypotheses, zero `sorry`, zero `admit`, zero custom axioms.

## Build & Verification Instructions

```bash
lake exe cache get
lake build
python3 check.py
```
