~ "input.ua"

ToggleSolve ← ⍣(
  ⨬(+|⊙◌)⊸<0:×∩⋕ °$"mul(_,_)"
| ⌵ °"do()"
| ¯⌵ °"don't()"
) °□⊏0
regex "(mul\\(\\d{1,3},\\d{1,3}\\)|do\\(\\)|don't\\(\\))"

⌵ ∧ToggleSolve :0
