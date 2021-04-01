.global _start
.align 4

_start: mov    x0, #1
        adr    x1, helloworld
        mov    x2, #13
        mov    x16, #4
        svc    #0x80

        mov    x0, #0
        mov    x16, #1
        svc    #0x80

helloworld: .ascii  "Hello World!\n"

