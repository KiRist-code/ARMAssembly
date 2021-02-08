.global _start
.align 4

_start:
l1:		add		x0,	xzr, x1
		mov		x0, x1
		orr		x0, xzr, x1

l2:		mov		x2, #0x6E3A
		movk	x2, #0x4F5D, LSL #16
		movk	x2,	#0xFEDC, LSL #32
		movk	x2, #0x1234, LSL #48

l3:		LSL		x1, x2, #1
		LSR		x1, x2, #1
		ASR		x1, x2, #1
		ROR		x1, x2, #1

l4:		LSL		x1, x2, #1
		LSR		x1, x2, #1
		ASR		x1, x2, #1
		ROR		x1, x2, #1

l5:
		mov		x1, #0xAB000000

l6:
		add		x2, x1, #4000
		add		x2 ,x1, #0x20, LSL 12
		add		x2, x1, x0
		add		x2, x1, x0, LSL 2
		add		x2, x1, w0, SXTB
		add		x2, x1, w0, UXTH 2

l8:		adds	x0, x0, #1

l9:		adds	x1, x3, x5
		adc		x0, x3, x4

.data
helloworld:		.ascii "Hello World!"
