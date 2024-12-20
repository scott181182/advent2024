~ "input.ua"

VerticalWalls   ← ⧈(≠°[[⊙⊙]]) 1_2
HorizontalWalls ← ≡₂°¤ ⧈(≠°[⊙⊙]) 2_1

TopBottomWalls ← ⊟ ⊃(⊂|⊂:) ⬚1↙ :[] ⊡₁⊸△ HorizontalWalls
LeftRightWalls ← ⊟ ⊃(≡(⊂1)|≡(⊂:1)) VerticalWalls
WallTensor     ← ⊂ LeftRightWalls⟜TopBottomWalls

GetRegionCoords ← ⊜□ :⇡△. +₁-@A

GetRegionCoords.
⊙(¤WallTensor)
/+≡◇(× ⊃(⧻|/+≡(/+⊡:) :¤))
