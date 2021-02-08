.global _start
.align 2

_start: mov	x2, #0x6E3A
	movk	x2, #0x4F5D, LSL #16
	movk	x2, #0xFEDC, LSL #32
	movk	x2, #0x1234, LSL #48
	
	mov	w1, w2

//	mov	x1, x2, LSL #1 <- Logical shift left
//	mov	x1, x2, LSR #1 <- Logicla shift right
//	mov	x1, x2, ASR #1 <- Arithmetic shift right
//	mov	x1, x2, ROR #1 <- Rotate right


	LSL	x1, x2, #1
	LSR	x1, x2, #1
	asr	x1, x2, #1
	ror	x1, x2, #1


	mov	x1, #0xAB00000


//	mov	x1, #0xABCDEF11 <- #imm16에는 너무 큼, 그리고 표현 불가능

	movn	w1, #45
	
	mov w1, #0xFFFFFFFE	// (-2)

	mov 	x0, #0
	mov 	x16, #1
	svc 	#0x80

