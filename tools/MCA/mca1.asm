;
;  mca1.asm
;  (11.22.99)
;
; --------------------------------------
;  light controller
; --------------------------------------
;
const     turn_on   01        ; turns light on
const     turn_off  00        ; turns light off
const     loops     f3        ; number of cycles
;
          org  00             ; 
                              ;
          mov  r1,#loops      ; initialize loop counter
                              ;
loop      mov  a,#turn_on     ; turn light on
          outl p1,a           ;
                              ;
          call d025s          ;
                              ;
          mov  a,#turn_off    ; turn light off
          outl p1,a           ;
                              ;
          call d025s          ;
                              ;
          djnz r1,#loop       ; decrement and check loop counter
                              ;
end       jmp  end            ;
;
          neworg 020          ;
                              ; look-up table example
00
01
02
03
04
05
06
07
08
09
;
; ----------------------------
;  d025s subroutine
; ----------------------------
;
;    approximately 1/4 second
;    uses a, r2 and r3
;
d025s     mov r2,#ff          ; 
          mov r3,#ff          ;
          mov a,r2            ; store lower count
d025s1    mov r2,a            ; restore lower count to r2
d025s2    djnz r2,#d025s2     ; loop for standard delay
          djnz r3,#d025s1     ; after first loop completes,
          ret                 ;   will continue

