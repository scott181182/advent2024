~ "input.ua"

Target ← "XMAS"

Diagonal     ← ⍉⊟⊸⇌ ⇡ + 1
Triangle     ← ≡(□ ⊡ Diagonal) ⊙¤ °⊏
Tilt         ← ⊂ :⇌ Triangle↘1 ↻¯1 ≡⇌⍉≡⇌ ⟜Triangle
FindInTilt   ← °□/+ ⍚(/+⌕) ¤
FindInTiltBi ← +FindInTilt ⇌Target ⤙FindInTilt Target
FindIn       ← /+/+ ⌕
FindInBi     ← +FindIn ⇌Target ⤙FindIn Target

◡∩(Tilt)⊃(∘|⍉≡⇌)
+∩FindInTiltBi
+⊙(+∩FindInBi)
