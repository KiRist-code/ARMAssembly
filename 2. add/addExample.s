.global _start

_start: mvn	r0, #2
	add	r0, #1

	mov	r7, #0
	svc	0
