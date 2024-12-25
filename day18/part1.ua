~ "input.ua"

⊙↙

# Generate Board
≡(⬚0↙ :[] ◌) ⬚0↙ :[]..
# Add Corrupted Regions
⍜⊡-₁ :⊙:
# Start position
0_0

# pos bound
InBounds ← ↧ ⊃(/↧≥₀|/↧ <:)

# pos board bound
Neighbors ← ▽: ⟜≡(⨬(0◌◌|=₀⊡)⊃(InBounds ⊙⋅∘|⊙⊙◌)) ⊙¤ +¤:A₂

# pos board size
AtEnd ← /↧=-₁:⊙◌
⊢path(Neighbors|AtEnd)
-₁⧻
