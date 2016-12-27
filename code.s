f.7:
	lw	r29 r2 4
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_tail_else.20
	addi	r0 r3 1
	sub	r1 r3 r1
	sw	r2 r30 0
	lw	r29 r23 0
	sw	r31 r30 4
	addi	r30 r30 8
	jal	r23
	addi	r30 r30 -8
	lw	r30 r31 4
	lw	r30 r2 0
	add	r2 r1 r1
	jr	r31
beq_tail_else.20:
	addi	r0 r1 0
	jr	r31
_min_caml_start:
	lui	r27 32
	addi	r0 r1 10
	mov	r29 r27
	addi	r27 r27 8
	addi	r0 r2 f.7
	sw	r2 r29 0
	sw	r1 r29 4
	addi	r0 r1 20
	lw	r29 r23 0
	sw	r31 r30 0
	addi	r30 r30 4
	jal	r23
	addi	r30 r30 -4
	lw	r30 r31 0
halt
