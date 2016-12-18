fib.9:

    addi    r2 r0 1

    sub r25 r1 r2

    blez    r25 ble_tail_else.23

    addi    r2 r0 1

    sub r2 r1 r2

    sw  r1 r30 0

    sw  r31 r30 4

    addi    r30 r30 8

    mov r1 r2

    jal fib.9

    addi    r30 r30 -8

    lw  r31 r30 4

    addi    r2 r0 2

    lw r3 r30 0

    sub r2 r3 r2

    sw  r1 r30 4

    sw  r31 r30 8

    addi    r30 r30 12

    mov r1 r2

    jal fib.9

    addi    r30 r30 -12

    lw  r31 r30 8

    lw r2 r30 4

    add r1 r2 r1

    jr  r31

ble_tail_else.23:

    addi    r1 r0 1

    jr  r31

_min_caml_start:

    addi    r1 r0 10

    sw  r31 r30 0

    addi    r30 r30 4

    jal fib.9

    addi    r30 r30 -4

    lw  r31 r30 0

halt
