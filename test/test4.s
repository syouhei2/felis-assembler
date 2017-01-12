_min_caml_start:
  halt
add:
  add r1 r2 r3
beq_hoge:
  beq r25 r0
  j add
  j beq_hoge
