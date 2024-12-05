~ "input.ua"

Diff           ← - ⊙(↙ -1 ⊸⧻) ↘1 .
AllEqual       ← =/↥⟜/↧
IsMonotonic    ← AllEqual ±
TakeMonotonic  ← ▽ ≡(/= ± Diff).
IsSafePositive ← AllEqual ↧ (≤3)⟜(>0) ⌵
IsSafe         ← ↧ IsSafePositive ⟜IsMonotonic Diff

°□ /+ ⍚(IsSafe)
