main:
  addi $r2, $r0, 10
  jal fib
  halt


fib:
  addi $r30, $r30, -12

  sw $ra, $r30, 12
  sw $r2, $r30, 8

  addi $r3, $r2, -1
  bgtz $r3, 8
  j    rtn1

  addi $r2, $r2, -1
  jal fib
  move $r3, $r1

  addi $r2, $r2, -1
  jal fib

  add $r1, $r1, $r3


  lw $ra, $r30, 12
  lw $r2, $r30, 8
  addi $r30, $r30, 12
  jr $ra 

rtn1:
  addi $r1, $r0, 1
  addi $r30, $r30, 12
  jr $ra

