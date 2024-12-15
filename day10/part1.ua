~ "input.ua"

StartingPoints ← ⊚⊸=0
# pos bounds
InBounds ← /↧ ⊂⊃(≥₀⊙◌|>)

# pos map
NeighborCoords ← ▽:⟜≡(InBounds) ⊙(¤⊸△) +⊙¤ ⊂⟜¯⋯1_2
Neighbors      ← ▽= ⊃(+₁⊡|◡≡(⊡) ⊙¤ NeighborCoords)

StartingPoints

# Find all paths to summits
≡(□⊙◌ path(≡⋅1. ⊙◌ Neighbors|=₉⊡)) ⊙¤
# Find number of summits reached
/+≡(⧻◴◇≡(◇⊣))
