~ "input.ua"

TopWalls    ← ≡₂°¤ ⧈(>°[⊙⊙]) 2_1
BottomWalls ← ≡₂°¤ ⧈(<°[⊙⊙]) 2_1
LeftWalls   ← ⧈(>°[[⊙⊙]]) 1_2
RightWalls  ← ⧈(<°[[⊙⊙]]) 1_2

GetRegionCoords ← ⊜□ :⇡△. +₁-@A
# coords
UpperLeft ← ≡(/↧)⍉
# coords
RegionMask ← ⬚0⌝⊡ :⬚1↙:[]⊸⧻ -¤⊸UpperLeft
# matrix
AddMargin ← ⊂:⟜⊂ ⬚0↙:[]⊡₁⊸△ ≡(⊂⊂ 0:0)

GetRegionCoords

/+≡◇(
  ⟜⧻
  AddMargin RegionMask
  ⊃(TopWalls|BottomWalls|⍉LeftWalls|⍉RightWalls)
  +++∩∩(/+≡(⧻⊜□.))
  ×
)
