~ "input.ua"

# Get Starting Point
⊸(°¤⊚≡₂↥₀)

NextPosition ← ⍣(
  +¯1_0°1
| +0_1°2
| +1_0°3
| +0_¯1°4
):⟜⊡

# Check for Finish
HasHitEdge ← ⍣(
  =₀⊡₀⊙◌°1
| =₁⊡₁-⊙△°2
| =₁⊡₀-⊙△°3
| =₀⊡₁⊙◌°4
)◡⊡
HasHitLoop ← = ⊃(⊡⊙⋅∘|⊡⋅⊙∘) ◡NextPosition
IsFinished ← ⨬(HasHitLoop|1)◡HasHitEdge

Advance ← ⨬(
  ⊃(⊙⋅◌|⍜⊡◌⊙(:⊸⊡))
| ⊃(⋅⊙◌|⍜⊡◌ ⊙::) +₁◿₄ ◡⊡ ◌
)<₀ ⊃(⊡⊙⋅∘|⊙⊙∘) ◡NextPosition

⍢(Advance|¬◡IsFinished)
/+/+>₀◌
