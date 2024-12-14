~ "input.ua"

Concat         ← ⋕$"__"
TryOp          ← ⊂⊂⊃(+|×|≡(Concat):)
ForkFold       ← ⨬(TryOp|⊂)=₀:⊙⊸⧻
IsEquationTrue ← /↥ = ∧ForkFold :[] °□:°□°⊟

/◇+⊏₀⍉▽⊸≡IsEquationTrue
