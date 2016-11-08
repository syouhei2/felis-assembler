main:
  addi $r2, $r0, 2
  jal fib
  halt


fib:
  addi $r30, $r30, 16

  sw $ra, $r30, -12
  sw $r2, $r30, -8
  sw $r4, $r30, -4

  beq $r2, $r0, 12

  addi $r3, $r2, -1
  bgtz $r3, 8
  j    rtn1

  addi $r2, $r2, -1
  jal fib
  sw $r1, $r30, -16

  addi $r2, $r2, -1
  jal fib

  lw $r4, $r30, -16
  add $r1, $r1, $r4


  lw $ra, $r30, -12
  lw $r2, $r30, -8
  lw $r4, $r30, -4
  addi $r30, $r30, -16
  jr $ra 

rtn1:
  addi $r1, $r0, 1
  addi $r30, $r30, -16
  jr $ra

