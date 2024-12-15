~ "input.ua"

AdvanceCell ← memo⍣(
  1 °0
| ≡⋕⊟⊃(↙|↘)÷₂ °1=₀⊸◿₂⊸⧻°⋕
| [×₂₀₂₄]
)
AdvanceList ← ∧(⊂: AdvanceCell) :[]
⧻⍥(AdvanceList)25
