~ "input.ua"

TriangleMatrix ← ⊞> .⇡

GetFrequencies  ← ▽⊸≠@.◴/⊂
GetCombinations ← ≡(≡°□°□) /◇⊂ ≡(□▽) TriangleMatrix⊸⧻ ⊞(□⊂⊙□□).
InBounds        ← /↧ ⊂⊃(≥₀⊙◌|>)

BackwardAntiNodes ← ↘₁⋅⊙◌ ⍢(⊙⊂:⊃(-⊙⊢|⊙∘)|⊃(⋅(InBounds⊢)|⊙⊙∘)) ⊙¤
ForwardAntiNodes  ← ↘₁⋅⊙◌ ⍢(⊙⊂:⊃(+⊙⊢|⊙∘)|⊃(⋅(InBounds⊢)|⊙⊙∘)) ⊙¤
AntiNodes ← ⊂⊃(
  BackwardAntiNodes ⊙⊙◌
| ForwardAntiNodes ⊙⋅∘
) ◡- °⊟

⟜(¤△)
⊙¤⊸GetFrequencies

/◇⊂ ≡(
  ⊚⌕
  GetCombinations
  □/◇⊂ ≡(□AntiNodes)⊙¤
)
⧻◴
