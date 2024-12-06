~ "input.ua"

AllEqual       ← ≍ ⊸↻ 1
AllTrue        ← =0/+¬
IsMonotonic    ← AllEqual ±
IsSafePositive ← AllTrue ↧ (≤3)⟜(>0) ⌵
IsSafe         ← ↧ IsSafePositive ⟜IsMonotonic ⧈-

Perms     ← ≡(▽) ⊙¤ ¬⊞=.⇡ ⊸⧻
IsSafeTwo ← /↥ ≡(IsSafe) Perms

°□ /+ ⍚(IsSafeTwo)
