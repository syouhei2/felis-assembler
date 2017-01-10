min_caml_create_array:

    addi r1 r3 0

    addi r1 r1 -1

    sll r1 r1 2

_create_array_loop:

    swo r2 r27 r1

    beq r1 r0 _create_array_return

    addi r1 r1 -4

    j _create_array_loop

_create_array_return:

    sll r3 r3 2

    addi r27 r1 0

    add r27 r3 r27

    jr r31

min_caml_create_float_array:

    addi r1 r3 0

    addi r1 r1 -1

    sll r1 r1 2

_create_float_array_loop:

    swoc1 f0 r27 r1

    beq r1 r0 _create_float_array_return

    addi r1 r1 -4

    j _create_float_array_loop

_create_float_array_return:

    sll r3 r3 2

    addi r27 r1 0

    add r27 r3 r27

    jr r31
