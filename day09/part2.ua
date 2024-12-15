~ "input.ua"

GetIdSizes ← ≡(⊂ ⊙⊗ ⟜⊡₀) ⊜(⊟⊃(⊢|⧻)) ⊸+₁ ⟜¤
Checksum   ← /+≡/× ⍉⊟ ⊙▽▽:°⊏ .⊸≥₀

⇌⊸GetIdSizes

FindInsertIndex ← $insidx ⊗1⌕ ⬚¯1↙:[]
# idx length arr
DropSlice ← ⍜⊏≡⋅[] +⊙⇡
# idx slice arr
WriteSlice ← ⍜⊏≡◌ ⊙: +⊙(°⊏)
# idx value length arr
WriteFillSlice ← WriteSlice ⊙(+⬚0↙:[]:)

# from to id size arr
MoveFile ← WriteFillSlice ⊃(⋅⊙⊙⊙◌|WriteFillSlice :¯1 ⊙⋅⋅⊙∘)
# id size idx arr
DefragFile ← ⨬(MoveFile|⋅⋅⋅⋅∘)◡≥ ⊃(
  ⋅⋅∘
| FindInsertIndex ⋅⊙⋅∘
| ⊙⊙⋅∘
)

◌ ⍢(⊃(⋅⊙◌|DefragFile °⊟₃ ⊙◌)°⊂|>₀⊸⧻)
Checksum
