min_caml_int_of_float:

# float -> int

    cvt.w.s f0 f1

    mfc1 f0 r1

    jr r31

min_caml_float_of_int:

#int -> float

    mtc1 r1 f1

    cvt.s.w f1 f0

    jr r31

min_caml_fabs:

    abs.s f0 f0

    jr r31

min_caml_fneg:

    neg.s f0 f0

    jr r31

fless.104:

    sub.s   f1 f0 f30

    mfc1    f30 r25

    blez    r25 bfle_tail_else.323

    addi    r0 r1 1

    jr  r31

bfle_tail_else.323:

    addi    r0 r1 0

    jr  r31

fact.130:

    addi    r0 r2 0

    sub r1 r2 r25

    beq r25 r0 beq_tail_else.324

    sw  r1 r30 0

    sw  r31 r30 4

    addi    r30 r30 8

    jal min_caml_float_of_int

    addi    r30 r30 -8

    lw  r30 r31 4

    addi    r0 r1 1

    lw  r30 r2 0

    sub r2 r1 r1

    swc1    f0 r30 4

    sw  r31 r30 8

    addi    r30 r30 12

    jal fact.130

    addi    r30 r30 -12

    lw  r30 r31 8

    lwc1     r30 f1 4

    mul.s   f1 f0 f0

    jr  r31

beq_tail_else.324:

    lui r24 16256

    ori r24 r24 0

    mtc1    r24 f0

    jr  r31

normalize.134:

    lwc1    r29 f1 8

    lwc1    r29 f2 4

    lui r24 49225

    ori r24 r24 4059

    mtc1    r24 f3

    sw  r29 r30 0

    swc1    f1 r30 4

    swc1    f2 r30 8

    swc1    f0 r30 12

    sw  r31 r30 16

    addi    r30 r30 20

    mov.s   f3 f1

    jal fless.104

    addi    r30 r30 -20

    lw  r30 r31 16

    addi    r0 r2 0

    sub r1 r2 r25

    beq r25 r0 beq_tail_else.325

    lwc1     r30 f0 4

    lwc1     r30 f1 12

    add.s   f1 f0 f0

    lw  r30 r29 0

    lw  r29 r23 0

    sll r23 r23 2

    j r23

beq_tail_else.325:

    lwc1     r30 f0 12

    lwc1     r30 f1 8

    sw  r31 r30 16

    addi    r30 r30 20

    jal fless.104

    addi    r30 r30 -20

    lw  r30 r31 16

    addi    r0 r2 0

    sub r1 r2 r25

    beq r25 r0 beq_tail_else.326

    lwc1     r30 f0 12

    jr  r31

beq_tail_else.326:

    lwc1     r30 f0 4

    lwc1     r30 f1 12

    sub.s   f1 f0 f0

    lw  r30 r29 0

    lw  r29 r23 0

    sll r23 r23 2

    j r23

cos_coe.136:

    addi    r0 r2 2

    div r1 r2 r2

    addi    r0 r3 2

    mult    r2 r3 r2

    sub r2 r1 r25

    beq r25 r0 beq_tail_else.327

    lui r24 0

    ori r24 r24 0

    mtc1    r24 f0

    jr  r31

beq_tail_else.327:

    addi    r0 r2 2

    div r1 r2 r2

    lui r24 16256

    ori r24 r24 0

    mtc1    r24 f0

    sw  r2 r30 0

    swc1    f0 r30 4

    sw  r31 r30 8

    addi    r30 r30 12

    jal fact.130

    addi    r30 r30 -12

    lw  r30 r31 8

    lwc1     r30 f1 4

    div.s   f1 f0 f0

    addi    r0 r1 2

    lw  r30 r2 0

    div r2 r1 r1

    addi    r0 r3 2

    mult    r1 r3 r1

    sub r1 r2 r25

    beq r25 r0 beq_tail_else.328

    j   min_caml_fneg

beq_tail_else.328:

    jr  r31

cos_sub.138:

    mul.s   f1 f0 f1

    swc1    f0 r30 0

    sw  r1 r30 4

    swc1    f1 r30 8

    sw  r31 r30 12

    addi    r30 r30 16

    jal cos_coe.136

    addi    r30 r30 -16

    lw  r30 r31 12

    lwc1     r30 f1 8

    add.s   f1 f0 f0

    addi    r0 r1 0

    lw  r30 r2 4

    sub r2 r1 r25

    beq r25 r0 beq_tail_else.329

    addi    r0 r1 1

    sub r2 r1 r1

    lwc1     r30 f1 0

    mov.s   f1 f31

    mov.s   f0 f1

    mov.s   f31 f0

    j   cos_sub.138

beq_tail_else.329:

    jr  r31

cos.142:

    lw  r29 r29 4

    lw  r29 r23 0

    sw  r31 r30 0

    addi    r30 r30 4

    sll r23 r23 2

    jal r23

    addi    r30 r30 -4

    lw  r30 r31 0

    addi    r0 r1 20

    lui r24 0

    ori r24 r24 0

    mtc1    r24 f1

    j   cos_sub.138

sin_coe.144:

    addi    r0 r2 2

    div r1 r2 r2

    addi    r0 r3 2

    mult    r2 r3 r2

    sub r2 r1 r25

    beq r25 r0 beq_tail_else.330

    lui r24 16256

    ori r24 r24 0

    mtc1    r24 f0

    sw  r1 r30 0

    swc1    f0 r30 4

    sw  r31 r30 8

    addi    r30 r30 12

    jal fact.130

    addi    r30 r30 -12

    lw  r30 r31 8

    lwc1     r30 f1 4

    div.s   f1 f0 f0

    addi    r0 r1 1

    lw  r30 r2 0

    sub r2 r1 r1

    addi    r0 r2 2

    div r1 r2 r1

    addi    r0 r2 2

    div r1 r2 r2

    addi    r0 r3 2

    mult    r2 r3 r2

    sub r2 r1 r25

    beq r25 r0 beq_tail_else.331

    j   min_caml_fneg

beq_tail_else.331:

    jr  r31

beq_tail_else.330:

    lui r24 0

    ori r24 r24 0

    mtc1    r24 f0

    jr  r31

sin_sub.146:

    mul.s   f1 f0 f1

    swc1    f0 r30 0

    sw  r1 r30 4

    swc1    f1 r30 8

    sw  r31 r30 12

    addi    r30 r30 16

    jal sin_coe.144

    addi    r30 r30 -16

    lw  r30 r31 12

    lwc1     r30 f1 8

    add.s   f1 f0 f0

    addi    r0 r1 0

    lw  r30 r2 4

    sub r2 r1 r25

    beq r25 r0 beq_tail_else.332

    addi    r0 r1 1

    sub r2 r1 r1

    lwc1     r30 f1 0

    mov.s   f1 f31

    mov.s   f0 f1

    mov.s   f31 f0

    j   sin_sub.146

beq_tail_else.332:

    jr  r31

sin.150:

    lw  r29 r29 4

    lw  r29 r23 0

    sw  r31 r30 0

    addi    r30 r30 4

    sll r23 r23 2

    jal r23

    addi    r30 r30 -4

    lw  r30 r31 0

    addi    r0 r1 20

    lui r24 0

    ori r24 r24 0

    mtc1    r24 f1

    j   sin_sub.146

atan_sub.152:

    lw  r29 r2 8

    lw  r29 r3 4

    addi    r0 r4 100

    sub r1 r4 r25

    beq r25 r0 beq_tail_else.333

    add.s   f1 f2 f3

    lui r24 16384

    ori r24 r24 0

    mtc1    r24 f4

    div.s   f3 f4 f3

    swc1    f2 r30 0

    swc1    f1 r30 4

    sw  r29 r30 8

    sw  r1 r30 12

    swc1    f0 r30 16

    swc1    f3 r30 20

    sw  r3 r30 24

    mov r29 r2

    mov.s   f3 f0

    lw  r29 r23 0

    sw  r31 r30 28

    addi    r30 r30 32

    sll r23 r23 2

    jal r23

    addi    r30 r30 -32

    lw  r30 r31 28

    lwc1     r30 f1 20

    lw  r30 r29 24

    swc1    f0 r30 28

    mov.s   f1 f0

    lw  r29 r23 0

    sw  r31 r30 32

    addi    r30 r30 36

    sll r23 r23 2

    jal r23

    addi    r30 r30 -36

    lw  r30 r31 32

    lwc1     r30 f1 28

    div.s   f1 f0 f0

    lwc1     r30 f1 16

    sw  r31 r30 32

    addi    r30 r30 36

    jal fless.104

    addi    r30 r30 -36

    lw  r30 r31 32

    addi    r0 r2 0

    sub r1 r2 r25

    beq r25 r0 beq_tail_else.334

    addi    r0 r1 1

    lw  r30 r2 12

    add r2 r1 r1

    lwc1     r30 f0 16

    lwc1     r30 f1 20

    lwc1     r30 f2 0

    lw  r30 r29 8

    lw  r29 r23 0

    sll r23 r23 2

    j r23

beq_tail_else.334:

    addi    r0 r1 1

    lw  r30 r2 12

    add r2 r1 r1

    lwc1     r30 f0 16

    lwc1     r30 f1 4

    lwc1     r30 f2 20

    lw  r30 r29 8

    lw  r29 r23 0

    sll r23 r23 2

    j r23

beq_tail_else.333:

    mov.s   f1 f0

    jr  r31

atan.157:

    lw  r29 r1 4

    addi    r0 r2 0

    lui r24 16329

    ori r24 r24 4059

    mtc1    r24 f1

    swc1    f0 r30 0

    sw  r2 r30 4

    sw  r1 r30 8

    sw  r31 r30 12

    addi    r30 r30 16

    mov.s   f1 f0

    jal min_caml_fneg

    addi    r30 r30 -16

    lw  r30 r31 12

    mov.s   f0 f1

    lui r24 16329

    ori r24 r24 4059

    mtc1    r24 f2

    lwc1     r30 f0 0

    lw  r30 r1 4

    lw  r30 r29 8

    lw  r29 r23 0

    sll r23 r23 2

    j r23

_min_caml_start:

    lui r27 32

    lui r24 16457

    ori r24 r24 4059

    mtc1    r24 f0

    lui r24 16585

    ori r24 r24 4059

    mtc1    r24 f1

    mov r1 r27

    addi    r27 r27 16

    addi    r0 r2 normalize.134

    sw  r2 r1 0

    swc1    f1 r1 8

    swc1    f0 r1 4

    mov r2 r27

    addi    r27 r27 8

    addi    r0 r3 cos.142

    sw  r3 r2 0

    sw  r1 r2 4

    mov r3 r27

    addi    r27 r27 8

    addi    r0 r4 sin.150

    sw  r4 r3 0

    sw  r1 r3 4

    mov r1 r27

    addi    r27 r27 16

    addi    r0 r4 atan_sub.152

    sw  r4 r1 0

    sw  r3 r1 8

    sw  r2 r1 4

    mov r29 r27

    addi    r27 r27 8

    addi    r0 r2 atan.157

    sw  r2 r29 0

    sw  r1 r29 4

    lui r24 16256

    ori r24 r24 0

    mtc1    r24 f0

    lw  r29 r23 0

    sw  r31 r30 0

    addi    r30 r30 4

    sll r23 r23 2

    jal r23

    addi    r30 r30 -4

    lw  r30 r31 0

halt
