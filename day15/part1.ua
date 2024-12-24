~ "input.ua"

FindRobot ← °¤⊚=@@

# elem arr
LastIndexOf ← -₁-⊙⧻ ⊸⊗⊙⇌
# pos board
CanMoveLeft ← /↥=@. ↘⊸LastIndexOf @# ↙:⊏ ⊙: °⊟
# pos board
MoveLeft ← ⊸-0_1 ⊙(⊸LastIndexOf @.)

# instruction board
Advance ← ⍣(
  ⨬(|) ◡CanMoveLeft °@<
| °@^
| °@>
| °@v
) ⊙⊸FindRobot

# ∧Advance
⊢
Advance
# FindRobot
