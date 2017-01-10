f.10:

    lw  r29 r2 8

    lw  r29 r3 4

    add r1 r3 r1

    add r1 r2 r1

    jr  r31

_min_caml_start:

    lui r27 32

    jal min_caml_globals

    addi    r0 r31 0

    addi    r30 r30 0

    sw  r1 r30 0

    sw  r31 r30 4

    jal min_caml_loadx

    mov r1 r1

    lw  r30 r1 0

    lw  r30 r31 4

    addi    r30 r30 0

    addi    r0 r2 0

    sll r2 r2 2

    lwo r1 r2 r1

    addi    r30 r30 0

    sw  r1 r30 0

    sw  r31 r30 4

    jal min_caml_loadx

    mov r2 r1

    lw  r30 r1 0

    lw  r30 r31 4

    addi    r30 r30 0

    addi    r0 r3 1

    sll r3 r3 2

    lwo r2 r3 r2

    mov r29 r27

    addi    r27 r27 16

    addi    r0 r3 f.10

    sw  r3 r29 0

    sw  r2 r29 8

    sw  r1 r29 4

    addi    r0 r1 10

    lw  r29 r23 0

    sw  r31 r30 0

    addi    r30 r30 4

    sll r23 r23 2

    jal r23

    addi    r30 r30 -4

    lw  r30 r31 0

    sw  r31 r30 0

    addi    r30 r30 4

    jal min_caml_print_int

    addi    r30 r30 -4

    lw  r30 r31 0

halt


