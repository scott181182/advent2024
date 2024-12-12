~ "input.ua"

# Get Starting Point
⊸(°¤⊚≡₂↥₀)

GetDirection ← +₁◿₄-₁
NextPosition ← ⍣(
  +¯1_0°1
| +0_1°2
| +1_0°3
| +0_¯1°4
)GetDirection:⟜⊡

# Check for Finish
HasHitEdge ← ⍣(
  =₀⊡₀⊙◌°1
| =₁⊡₁-⊙△°2
| =₁⊡₀-⊙△°3
| =₀⊡₁⊙◌°4
)GetDirection◡⊡
HasHitLoop ← ↥ ⊙(>₁₆⊡) = ⊃(⊡⊙⋅∘|⊡⋅⊙∘|⋅⊙∘) ◡NextPosition
IsFinished ← ⨬(HasHitLoop|1)◡HasHitEdge

Advance ← ⨬(
  ⊃(⋅⊙◌|⍜⊡◌ ⊙::) +₁ ◡⊡ ◌
| ⊃(⊙⋅◌|⍜⊡◌⊙(:GetDirection⊸⊡))
| ⊃(⊙⋅◌|⍜⊡◌⊙(:⊸⊡))
)+₁± ⊃(⊡⊙⋅∘|⊙⊙∘) ◡NextPosition

CanPlaceBlocker   ← =₀ ⊡ ⊸NextPosition
PlaceBlocker      ← ⍜⊡◌ ⊙⊙¯1
TryBlockIteration ← ⊃(⋅⊙∘|+⊙⋅⋅∘) ¬HasHitEdge ⍢(Advance|¬◡IsFinished) ⊃(⊙PlaceBlocker|⊙⋅∘) :◡NextPosition

⊙⊙0
⍢(Advance⨬(|TryBlockIteration) ◡CanPlaceBlocker|¬◡IsFinished)
◌◌
