
; Turn Port 2 on and off a couple of times a second

        .org    $0000

        jmp     start

        .org    $0007

start   clr     a
        outl    p2,a
        call    delay
        cpl     a
        outl    p2,a
        call    delay
        jmp     start

delay   mov     r0,#0
        mov     r1,#0
pt1     nop
        djnz    r0,pt1
        djnz    r1,pt1
        ret

        .end

