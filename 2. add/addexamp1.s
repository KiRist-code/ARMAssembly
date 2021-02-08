.global _start
.align 2

_start: movn	w0, #2
	add	w0, w0, #1

	mov	x16, #1
	svc	#0x80

