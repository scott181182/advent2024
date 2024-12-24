~ "input.ua"

# Registers: [A B C PC]
⊙(⊂ :0)
# Put output at the back of the stack.
⊙⊙[]

# op regs
GetCombo ← ⨬(0|1|2|3|⊡₀|⊡₁|⊡₂|⍤"Invalid combo operand" 7)
# dest op regs
Div ← ⍜⊡◌ ⊙(:⌊÷⊙⊸⊡₀ ⁿ:2 ⊸GetCombo)
# a b
Xor ← °⋯≠∩(⬚0↙₄₈⋯)

# insts regs
Step ← ⊃(
  ⊙◌
| ⍣(⍩(Div 0) ⊙⊙∘°0
  | ⍩(⍜⊡₁Xor:) ⊙⊙∘°1
  | ⍩(⍜⊡₁◌: ◿₈⊸GetCombo) ⊙⊙∘°2
  | ⍩(⨬(⍜⊡₃◌:|◌)=₀:⊙⊸⊡₀) ⊙⊙∘°3
  | ⍩(⍜⊡₁◌ :Xor°⊟ ⊸⊏1_2) ⋅⊙∘°4
  | ⍩(⊙(⊂:): ◿₈⊸GetCombo) ⊙⊙∘°5
  | ⍩(Div 1) ⊙⊙∘°6
  | ⍩(Div 2) ⊙⊙∘°7
  ) °⊟⊏+0_1 :⊙⊃(⊡₃|⍜⊡₃+₂)
)
# insts regs output
RunProgram ← ⍢(Step|↧ ⊃(≥₀⋅⊡₃|<⧻⊙⊡₃))

┌─╴test
  # Given test cases
  ⍤. =1⊡₁ ⋅⊙◌Step [2 6] [0 0 9 0] []
  ⍤. =□[0 1 2] ⋅⋅□RunProgram [5 0 5 1 5 4] [10 0 0 0] []
  ⍤. =□[4 2 5 6 7 7 7 7 3 1 0] ⍤. =₀⊡₀ ⋅⊙□RunProgram [0 1 5 4 3 0] [2024 0 0 0] []
  ⍤. =26⊡₁ ⋅⊙◌Step [1 7] [0 29 0 0] []
  ⍤. =44354⊡₁ ⋅⊙◌Step [4 0] [0 2024 43690 0] []

  # Extra test cases
  ⍤. =4⊡₁ ⋅⊙◌Step [6 6] [17 0 2 0] []
└─╴

RunProgram
&p/$"_,_" ◌◌
