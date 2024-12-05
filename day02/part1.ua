~ "input.ua"

AllEqual       ← ≍ ⊸↻ 1
IsMonotonic    ← AllEqual ±
IsSafePositive ← AllEqual ↧ (≤3)⟜(>0) ⌵
IsSafe         ← ↧ IsSafePositive ⟜IsMonotonic ⧈-

°□ /+ ⍚(IsSafe)
