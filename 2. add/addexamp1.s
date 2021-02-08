// add/movn 구조의 예제입니다.

.global _start //프로그램을 실행하기 위해 linker에게 starting주소를 넘깁니다.
.align 2

// movn을 이용해 2를 -1로 곱하고 1을 더합니다.
_start: movn	w0, #2
	add	w0, w0, #1

// 1강에서 그랬듯 프로그램 종료를 위한 파라미터를 불러오고 커널을 호출합니다.
	mov	x16, #1
	svc	#0x80

