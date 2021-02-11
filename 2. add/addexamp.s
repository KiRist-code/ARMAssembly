// ADD/ADC 예제
.global _start

// mvn으로 2와 -1을 곱하고 1을 더해준다.
_start: mvn	r0, #2
	add	r0, #1
	
// Linux Kernel Call (exit)
	mov 	r0, #0
	mov	r7, #0
	svc	0
