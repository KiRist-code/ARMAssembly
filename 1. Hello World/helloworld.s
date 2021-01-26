//
// "Hello World!" 를 출력하기 위한 어셈블리 프로그램입니다
// 그것도 표준 입출력을 이용해서요
//
// X0-X2 - 유닉스 시스템의 시스탬 콜 파라미터입니다.
// X16 - 시스템을 호출하는 기능을 지닌 March num
//

.global _start 	//프로그램에게 어느 주소에서 시작할지를 linker를 통해 알려줍니다
.align 2

_start: mov	x0, #1	//x0 <- 1(int) (1 = stdout)
	adr 	x1, helloworld	//x1 <-	helloworld(string func) 헬로월드 스트링 입력
	mov 	x2, #13 //x2 <- 13 (string의 글자수)
	mov	x16, #4 //x16 <- 4(Unix wirte system call)
	svc 	#0x80 // String 출력을 위한 Kernel을 Call
// 프로그램을 끝내기 위해 파라미터 값 수정
// 그리고 다시 커널을 불러내 끝낸다.
	mov	x0, #0 //x0 <- 0(int) (0 = return code)
	mov 	x16, #1 //x16 <- 1 (system code 1을 통해 이 프로그램을 종료시킨.)
	svc	#0x80 //system call

helloworld: 	.ascii "Hello World!\n"
