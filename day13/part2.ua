~ "input.ua"

CostA ← 3
CostB ← 1

Offset ← 10000000000000

IsInteger ← ≤0.001⌵-⊸⁅
SolveA    ← ÷⊃(-:⊙× °⊟ ⊙⊙◌|-:⊙× °⊟ :◌) ⊙(÷°⊟⇌) °[⊙⊙⊙]
SolveB    ← ÷:-× ⊙(°[⊙⊙⊙] ⊡ [0_1 2_1 1_1])
SolveOne  ← ÷⊃(-:⊙× °⊟ ⊙⊙◌|-:⊙× °⊟ :◌) ⊙(÷°⊟⇌) °[⊙⊙⊙]

≡(⍜⊡(+Offset) [2_0 2_1])
≡(⟜SolveB⊸SolveA)
⍉⊟
▽≡(/↧)⊸IsInteger
/+≡(/+×[CostA CostB]⁅)
