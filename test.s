addi $r31, $r0, 32
addi $r2, $r0, 128
addi $r3, $r0, 256


addi $r30, $r30, 16
sw $r0, $r30, -16
sw $r31, $r30, -12
sw $r2, $r30, -8
sw $r3, $r30, -4
lw $r5, $r30, -16
lw $r6, $r30, -12
lw $r7, $r30, -8
lw $r8, $r30, -4
halt
