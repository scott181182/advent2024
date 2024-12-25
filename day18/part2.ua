~ "input.ua"

# pos bound
InBounds ← ↧ ⊃(/↧≥₀|/↧ <:)
# pos board bound
Neighbors ← ▽: ⟜≡(⨬(0◌◌|=₀⊡)⊃(InBounds ⊙⋅∘|⊙⊙◌)) ⊙¤ +¤:A₂
# pos board size
AtEnd ← /↧=-₁:⊙◌

CanEscape ← (
  ⊙↙

  # Generate Board
  ≡(⬚0↙ :[] ◌) ⬚0↙ :[]..
  # Add Corrupted Regions
  ⍜⊡-₁ :⊙:
  # Start position
  0_0

  ⍣(⋅1 ⊢path(Neighbors|AtEnd)|0)
)
⍢(⊙+₁?|CanEscape)
&p$"_,_"°⊟⊡⋅-₁
