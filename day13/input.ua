ReadButton ← ⊟⋕⋅⊙⋕ °$"Button _: X+_, Y+_"
ReadPrize  ← ⊟ ⊙⋕⋕ °$"Prize: X=_, Y=_"
ReadBlock  ← ⊂: ⊙(⊟:∩ReadButton) ReadPrize

⍥(&sc)3
[ReadBlock]
⇌⍢(⊂ ReadBlock ⍥(&sc)3|= □"" □&sc)
