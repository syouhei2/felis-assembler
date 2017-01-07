_min_caml_test:
  add r1 r2 r3

label:
  j label

_min_caml_start:
  add r2 r2 r2
  addi r1 r2 label

end:
  halt
