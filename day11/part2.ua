~ "input.ua"

# Create map from cells to count (all 1's)
map: ≠¯1 °⊏

# key inc map
IncInsert ← ⍣(insert:+ ⊙◡get:|insert)

# value
AdvanceCell ← memo⍣(
  [1] °0
| ≡⋕⊟⊃(↙|↘)÷₂ °1=₀⊸◿₂⊸⧻°⋕
| [×₂₀₂₄]
)
# [cell count] map
AdvanceMapEntry ← ⨬(IncInsert°¤|IncInsert⊙⊃(⋅⊙◌|IncInsert)°⊟)-₁⊸⧻ AdvanceCell °⊟
AdvanceMap      ← ∧(AdvanceMapEntry) :[] ⍉⊟°map

/+⍥(AdvanceMap)75
