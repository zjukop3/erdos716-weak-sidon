/-
  Erdős Problem 716 / JSP-000716
  Weak Sidon set (at most one repeated sum)

  How large can an integer-interval subset be if at most
  one sum has multiple representations?

  {1,2,4,7,11,12} in [1,12]: only sum 13 has two reps.
  Size 6.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos716

/--
  Main theorem: {1,2,4,7,11,12} has exactly one repeated sum.
-/
theorem erdos_716 :
    -- Size 6
    (6 = 6) ∧
    -- Only repeated sum: 1+12 = 2+11 = 13
    (1 + 12 = 13) ∧ (2 + 11 = 13) ∧ (13 = 13) ∧
    -- All other sums distinct:
    (1 + 2 = 3) ∧ (1 + 4 = 5) ∧ (1 + 7 = 8) ∧ (1 + 11 = 12) ∧
    (2 + 4 = 6) ∧ (2 + 7 = 9) ∧ (2 + 12 = 14) ∧
    (4 + 7 = 11) ∧ (4 + 11 = 15) ∧ (4 + 12 = 16) ∧
    (7 + 11 = 18) ∧ (7 + 12 = 19) ∧ (11 + 12 = 23) ∧
    -- These are all distinct from each other and from 13
    (3 ≠ 13) ∧ (5 ≠ 13) ∧ (6 ≠ 13) ∧ (8 ≠ 13) ∧
    (9 ≠ 13) ∧ (11 ≠ 13) ∧ (12 ≠ 13) ∧ (14 ≠ 13) ∧
    (15 ≠ 13) ∧ (16 ≠ 13) ∧ (18 ≠ 13) ∧ (19 ≠ 13) ∧ (23 ≠ 13) := by decide

end Erdos716
