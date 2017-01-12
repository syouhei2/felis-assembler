min_caml_create_array: 
  addi r1 r3 0 
  addi r1 r1 -1 
  sll r1 r1 2 
(test/array.s)_create_array_loop: 
  swo r2 r27 r1 
  beq r1 r0 (test/array.s)_create_array_return 
  addi r1 r1 -4 
  j (test/array.s)_create_array_loop 
(test/array.s)_create_array_return: 
  sll r3 r3 2 
  addi r27 r1 0 
  add r27 r3 r27 
  jr r31 
min_caml_create_float_array: 
  addi r1 r3 0 
  addi r1 r1 -1 
  sll r1 r1 2 
(test/array.s)_create_float_array_loop: 
  swoc1 f0 r27 r1 
  beq r1 r0 (test/array.s)_create_float_array_return 
  addi r1 r1 -4 
  j (test/array.s)_create_float_array_loop 
(test/array.s)_create_float_array_return: 
  sll r3 r3 2 
  addi r27 r1 0 
  add r27 r3 r27 
  jr r31 

(test/extarray.s)f.10: 
  lw r29 r2 8 
  lw r29 r3 4 
  add r1 r3 r1 
  add r1 r2 r1 
  jr r31 
_min_caml_start: 
  lui r27 32 
  jal min_caml_globals 
  addi r0 r31 0 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_loadx 
  mov r1 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r2 0 
  sll r2 r2 2 
  lwo r1 r2 r1 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_loadx 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r3 1 
  sll r3 r3 2 
  lwo r2 r3 r2 
  mov r29 r27 
  addi r27 r27 16 
  addi r0 r3 (test/extarray.s)f.10 
  sw r3 r29 0 
  sw r2 r29 8 
  sw r1 r29 4 
  addi r0 r1 10 
  lw r29 r23 0 
  sw r31 r30 0 
  addi r30 r30 4 
  sll r23 r23 2 
  jal r23 
  addi r30 r30 -4 
  lw r30 r31 0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_print_int 
  addi r30 r30 -4 
  lw r30 r31 0 
  halt 

(test/extarray.s)f.10: 
  lw r29 r2 8 
  lw r29 r3 4 
  add r1 r3 r1 
  add r1 r2 r1 
  jr r31 
_min_caml_start: 
  lui r27 32 
  jal min_caml_globals 
  addi r0 r31 0 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_loadx 
  mov r1 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r2 0 
  sll r2 r2 2 
  lwo r1 r2 r1 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_loadx 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r3 1 
  sll r3 r3 2 
  lwo r2 r3 r2 
  mov r29 r27 
  addi r27 r27 16 
  addi r0 r3 (test/extarray.s)f.10 
  sw r3 r29 0 
  sw r2 r29 8 
  sw r1 r29 4 
  addi r0 r1 10 
  lw r29 r23 0 
  sw r31 r30 0 
  addi r30 r30 4 
  sll r23 r23 2 
  jal r23 
  addi r30 r30 -4 
  lw r30 r31 0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_print_int 
  addi r30 r30 -4 
  lw r30 r31 0 
  halt 

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

min_caml_print_char: 
  out r1 
  jr r31 
min_caml_print_int: 
  addi r1 r25 0 
  bgez r25 (test/extarray_io.s)_io_print_int_get_num_digits 
  sub r0 r1 r1 
  addi r0 r2 45 
  out r2 
  j min_caml_print_int 
(test/extarray_io.s)_io_print_int_get_num_digits: 
  addi r0 r2 10 
  addi r0 r3 1 
  sub r1 r2 r25 
  bltz r25 (test/extarray_io.s)_io_print_int_loop 
  multi r2 r2 10 
  addi r3 r3 1 
  j (test/extarray_io.s)_io_print_int_get_num_digits 
(test/extarray_io.s)_io_print_int_loop: 
  addi r3 r25 0 
  beq r25 r0 (test/extarray_io.s)_io_print_int_return 
  divi r2 r2 10 
  addi r3 r3 -1 
  div r1 r2 r4 
  addi r4 r4 48 
  out r4 
  j (test/extarray_io.s)_io_print_int_loop 
(test/extarray_io.s)_io_print_int_return: 
  jr r31 
min_caml_read_int: 
  addi r0 r1 0 # res 
  addi r0 r2 0 # read? 
  addi r0 r3 0 # sgn 
(test/extarray_io.s)_io_read_int_loop: 
  in r4 
  addi r4 r25 -32 
  blez r25 (test/extarray_io.s)_io_read_int_check_end 
  addi r4 r25 -45 
  beq r25 r0 (test/extarray_io.s)_io_read_int_change_sgn 
  addi r4 r25 -43 
  beq r25 r0 (test/extarray_io.s)_io_read_int_loop 
  addi r4 r4 -48 
  multi r1 r1 10 
  add r1 r4 r1 
  addi r0 r2 1 
  j (test/extarray_io.s)_io_read_int_loop 
(test/extarray_io.s)_io_read_int_change_sgn: 
  addi r3 r3 1 
  j (test/extarray_io.s)_io_read_int_loop 
(test/extarray_io.s)_io_read_int_check_end: 
  add r2 r0 r25 
  beq r25 r0 (test/extarray_io.s)_io_read_int_loop 
  andi r3 r3 1 
  addi r3 r25 -1 
  bltz r25 (test/extarray_io.s)_io_read_int_return 
  sub r0 r1 r1 
(test/extarray_io.s)_io_read_int_return: 
  jr r31 
min_caml_read_float: 
  addi r0 r2 0 # read? 
  addi r0 r3 0 # sgn 
  addi r0 r5 0 # integer part 
  addi r0 r6 0 # decimal part 
  addi r0 r7 0 # #decimal digits 
  addi r0 r8 10 # ten 
  mtc1 r0 f0 
  mtc1 r0 f1 
  mtc1 r8 f31 
  cvt.s.w f31 f2 # f2 = 10.0 
(test/extarray_io.s)_io_read_float_integer_part: 
  in r4 
  addi r4 r25 -32 
  blez r25 (test/extarray_io.s)_io_read_float_check_end 
  addi r4 r25 -45 # '-' 
  beq r25 r0 (test/extarray_io.s)_io_read_float_change_sgn 
  addi r4 r25 -43 # '+' 
  beq r25 r0 (test/extarray_io.s)_io_read_float_integer_part 
  addi r4 r25 -46 # '.' 
  beq r25 r0 (test/extarray_io.s)_io_read_float_decimal_part 
  addi r4 r4 -48 
  multi r5 r5 10 
  add r5 r4 r5 
  addi r0 r2 1 
  j (test/extarray_io.s)_io_read_float_integer_part 
(test/extarray_io.s)_io_read_float_change_sgn: 
  addi r3 r3 1 
  j (test/extarray_io.s)_io_read_float_integer_part 
(test/extarray_io.s)_io_read_float_decimal_part: 
  in r4 
  addi r4 r25 -32 
  blez r25 (test/extarray_io.s)_io_read_float_check_end 
  addi r4 r4 -48 
  multi r6 r6 10 
  add r6 r4 r6 
  addi r7 r7 1 
  j (test/extarray_io.s)_io_read_float_decimal_part 
(test/extarray_io.s)_io_read_float_check_end: 
  addi r2 r25 0 
  beq r25 r0 (test/extarray_io.s)_io_read_float_integer_part 
  mtc1 r5 f31 
  cvt.s.w f31 f0 
  mtc1 r6 f31 
  cvt.s.w f31 f1 
(test/extarray_io.s)_io_read_float_divide_decimal: 
  addi r7 r25 0 
  beq r25 r0 (test/extarray_io.s)_io_read_float_adapt_sgn 
  addi r7 r7 -1 
  div.s f1 f2 f1 
  j (test/extarray_io.s)_io_read_float_divide_decimal 
(test/extarray_io.s)_io_read_float_adapt_sgn: 
  add.s f0 f1 f0 
  andi r3 r3 1 
  addi r3 r25 -1 
  bltz r25 (test/extarray_io.s)_io_read_float_return 
  neg.s f0 f0 
(test/extarray_io.s)_io_read_float_return: 
  jr r31 

