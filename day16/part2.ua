~ "input.ua"

# State: [orientation row col]
# Orientation: (0 = right, 1 = down, 2 = left, 3 = up)

GetStartState ← ⊂0 °¤⊚=@S

# state
TurnedStates ← ≡(⍜⊡◿₄ 0) +[1_0_0 ¯1_0_0] ¤
# state
ForwardState ← +⊂0 ⊡:A₂⊸⊡₀
# state board
FacingCell ← ⊡+⊡:A₂°⊂
# state board
CanMoveForward ← ≠@#FacingCell

# state board
Neighbors ← ∩⊂ ⊙: ⊃(
  ⨬([] []
  | [1] ForwardState ⊙◌
  ) ◡CanMoveForward
| 1000_1000 TurnedStates
)

# state board
IsDone ← =@E⊡↘₁

⊸GetStartState
path(Neighbors|IsDone)
⍚≡↘₁
⧻◴/◇⊂
⊙◌
