~ "input.ua"

CostA ← 3
CostB ← 1

# posX = Xa * a + Xb * b
# posY = Ya * a + Yb * b
# Cost = a * A + b * B

# b = (posY - Ya * a) / Yb
# posX = Xa * a + Xb * (posY - Ya * a) / Yb
# posX = Xa * a + (posY - Ya * a) * (Xb / Yb)
# posX = Xa * a + posY * (Xb / Yb) - Ya * a * (Xb / Yb)
# posX - posY * (Xb / Yb) = Xa * a - Ya * a * (Xb / Yb)
# posX - posY * (Xb / Yb) = a * (Xa - Ya * (Xb / Yb))
# a = [posX - posY * (Xb / Yb)] / [Xa - Ya * (Xb / Yb)]

IsInteger ← ≤×100ε⌵-⊸⁅
SolveA    ← ÷⊃(-:⊙× °⊟ ⊙⊙◌|-:⊙× °⊟ :◌) ⊙(÷°⊟⇌) °[⊙⊙⊙]
SolveB    ← ÷:-× ⊙(°[⊙⊙⊙] ⊡ [0_1 2_1 1_1])
SolveOne  ← ÷⊃(-:⊙× °⊟ ⊙⊙◌|-:⊙× °⊟ :◌) ⊙(÷°⊟⇌) °[⊙⊙⊙]

▽≡(IsInteger⊸SolveA)

≡(⁅⊸SolveA)
⟜≡(SolveB)
/++ ×CostA⊙(×CostB)
