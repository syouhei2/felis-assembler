
in r1
out r31

_min_caml_start:
beq r1 r2 label
bgezal r1 label


label:
addi r1 r0 111
addi r1 r0 _min_caml_start
halt

j label
j r1
