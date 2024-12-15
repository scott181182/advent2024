≡⋕ &sc
°⊟⬚0⊕∘◿₂°⊏
°⊏

# id length freespace
GetInsertIndex ← ⬚¯1⊢ ⊚≥ ⊡⊗
◡GetInsertIndex 9

# idx array
DropIndex ← ▽≠ ⊙°⊏
# idx amt array
AddIndex ← ⍜⊡+ ⊙:

# to from length freespace
UpdateFreeSpace ← (
  ⊃(⊙⊙⊙◌|DropIndex ⋅⊙⋅∘)
  ⊃(⊙⋅⊙◌|AddIndex -₁◌)
  ⊃(⊙⊙◌|AddIndex⊙¯) ?
  ⊃(⊙⊙◌|⍜⊏≡(⊂0) ? ⊙⋅∘) ?
  ⊃(⋅⋅◌|⋅⋅∘)
)
⨬(◌◌|⊃(⋅⋅⊙⊙◌|UpdateFreeSpace⊙(⟜⊡⊗)))⊸≥₀

Checksum ← /+≡/× ⍉⊟°⊏
