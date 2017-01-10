min_caml_globals:

min_caml_generatex:

addi r0 r1 3

addi r0 r2 5

sw r31 r30 0

addi r30 r30 4

jal min_caml_create_array

addi r30 r30 -4

lw r30 r31 0

j min_caml_return

min_caml_loadx:

lui r1 32

addi r1 r1 12

jr r31

min_caml_return:

jr r31
