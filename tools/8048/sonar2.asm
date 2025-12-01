
; BUS bit 0     = Polaroid 6500 INIT
; BUS bit 1     = Polaroid 6500 BLNK
; BUS bit 2     = Polaroid 6500 BINH

; Port 1 bit 3  = Polaroid 6500 ECHO

; Port 2 bit 0  = RS-232 in
; Port 2 bit 1  = RS-232 out
; Port 2 bit 2
; Port 2 bit 3  = Sonar stepper reset sensor (1 = sensor is zeroed)
; Port 2 bit 4  = Sonar stepper coil 1 direction 1
; Port 2 bit 5  = Sonar stepper coil 1 direction 2
; Port 2 bit 6  = Sonar stepper coil 2 direction 1
; Port 2 bit 7  = Sonar stepper coil 2 direction 2

; RS-232 is 2400 bps, 1 start, 2 stop, no parity
; Assumes a 4 MHz clock

data    .equ    64              ; start of the data area
echos   .equ    5               ; maximum # echos to record
step    .equ    126             ; current stepper motor control output
blanki  .equ    127             ; internal blanking interval location

        .org    0
        jmp     main            ; reset

        .org    7
        jmp     ovrflw          ; timer overflow

; Wait for stuff to stabilize, initialize the ports, wait for valid command

main    mov     a,#$0f          ; turn off stepper switched first
        outl    p2,a
        mov     a,#$f8          ; initialize ports
        outl    bus,a           ; make sure INIT is low
        mov     a,#$ff
        outl    p1,a
        mov     r0,#blanki      ; store default blanking interval
        mov     @r0,a
        clr     a               ; store initial stepper motor sequence
        mov     r0,#step
        mov     @r0,a

; do not use r2 in any routines called from here!

        mov     r5,#stmsg       ; startup message
        call    prtmsg          ; print it
mainlp  call    datain          ; read a byte from serial port
        orl     a,#$20          ; make lower case letter
        mov     r2,a            ; save the byte

        add     a,#-'p          ; is it the ping command?
        jnz     m2
        mov     r0,#blanki      ; set internal blanking interval
        mov     a,@r0
        mov     r0,a
        call    ping            ; ping the sonar
        call    dump            ; print the data
        jmp     mainlp

m2      mov     a,r2            ; retrieved saved command
        add     a,#-'b          ; blanking interval command?
        jnz     m3
        call    blank           ; set blanking interval
        jmp     mainlp

m3      mov     a,r2            ; retrieve saved command
        add     a,#-'l          ; move stepper left command?
        jnz     m4
        call    stepl           ; step left
        mov     r5,#donmsg      ; print "Done."
        call    prtmsg
        mov     a,#$0f          ; turn motor off
        outl    p2,a
        jmp     mainlp

m4      mov     a,r2            ; retrieve saved command
        add     a,#-'r          ; move stepper right command?
        jnz     m5
        call    stepr           ; step right
        mov     r5,#donmsg      ; print "Done."
        call    prtmsg
        mov     a,#$0f          ; turn motor off
        outl    p2,a
        jmp     mainlp

m5      mov     a,r2            ; retrieve saved command
        add     a,#-'z          ; zero stepper position?
        jnz     m6
        call    zero            ; step left
        mov     r5,#donmsg      ; print "Done."
        call    prtmsg
        mov     a,#$0f          ; turn motor off
        outl    p2,a
        jmp     mainlp

m6      jmp     mainlp

; Read a hex constant from the serial port. Not case sensitive.
; Must be in the form of: FF (no spaces, no $). Returns value in A
; Uses r0, r1, r5, r6, r7
; MUST NOT use r2!

gethex  call    hexchr          ; get first hex character
        jf0     gh1             ; error, exit
        rl      a               ; multiply by 16
        rl      a
        rl      a
        rl      a
        mov     r1,a
        call    hexchr          ; get second character
        add     a,r1            ; add to first nybble * 16
gh1     ret

; Read a hex character from serial port and perform error checking
; Uses r0. Sets f0 if error.

; NOTE: when adding a two's complement number to the accumulator the carry
;       will be set if the accumulator is >= the positive two's complement
;       number

hexchr  call    datain          ; read first data byte
        clr     f0              ; no errors, yet
        mov     r0,a            ; save A while validating the character
        
        add     a,#-'0          ; is character >= '0'?
        jnc     error           ; no, < '0', error!
        mov     a,r0
        add     a,#-':          ; is character <= '9'? (':' is after '9')
        jnc     numeral         ; yes, character is a numeral
        mov     a,r0
        anl     a,#$df          ; make upper case
        mov     r0,a
        add     a,#-'A          ; is character >= 'A'?
        jnc     error           ; no, < 'A" ^ > '9', error!
        mov     a,r0
        add     a,#-'G          ; is character <= 'F'?
        jc      error           ; no, > 'F', error!

        mov     a,r0            ; valid alpha character
        add     a,#-'A+10       ; A = 10, B = 11, etc.

hc1     ret

numeral mov     a,r0            ; valid numeric character
        add     a,#-'0          ; '0' = 0, '1' = 1, etc
        jmp     hc1
                        
; Output an error message

error   mov     r5,#errmsg
        cpl     f0
        jmp     prtmsg

; Send a message to the terminal - uses r5, r6, r7 and A
; r5 points to the zero-terminated message in page 3 to send

prtmsg  mov     a,r5            ; next character index
        movp3   a,@a            ; get character
        jz      stm2            ; zero terminates
        call    dataout         ; send the character
        inc     r5              ; point to next one
        jmp     prtmsg          ; keep printing
stm2    ret

; Set a new blanking interval and store at blanki
; uses r0, r1, r5, r6, r7
; MUST NOT use r2!

blank   call    gethex          ; read the blanking interval
        mov     r0,#blanki      ; store it
        mov     @r0,a

        mov     r5,#bnkmsg      ; print "Blanking interval set to $??"
        call    prtmsg
        mov     r1,#blanki
        call    byteout
        mov     a,#13
        call    dataout
        mov     a,#10
        jmp     dataout

; Send the "Pinging..." message
; Reset timer
; Use r0 to determine internal blanking interval
; Record up to 5 return pulses and print them

; BUS bit 0 = Polaroid 6500 INIT
; BUS bit 1 = Polaroid 6500 BLNK
; BUS bit 2 = Polaroid 6500 BINH

; Port 1 bit 3 = Polaroid 6500 ECHO

ping    clr     a
        mov     t,a             ; clear the timer
        mov     r5,#pngmsg      ; print the pinging message
        call    prtmsg

        mov     a,#$f9
        outl    bus,a           ; BINH=Low, BLNK=Low, INIT=Hi
        strt    t               ; start timing the echo
        en      tcnti           ; allow updating of r5 when overflow
plp3    djnz    r0,plp3         ; wait for internal blanking
        mov     a,#$fd
        outl    bus,a           ; BINH=Hi, BLNK=Low, INIT=Hi

        mov     r0,#data        ; start of data storage area
        mov     r5,#0           ; timer MSB = 0
        mov     r6,#echos       ; maximum number of echos to store

; Has the pulse had time to make the 35' loop? (r5=2, t=6)
plp1    dis     tcnti           ; don't update timer while checking time
        mov     a,r5
        add     a,#-2
        jnz     ppt1
        mov     a,t
        add     a,#-6
        jnc     ppt1

; Time's up, turn everything off and return
        mov     a,#$f8          ; BINH=Low, BLNK=Low, INIT=Low
        outl    bus,a
        stop    tcnt            ; stop counting echo time
        ret

; Check if an echo has returned
ppt1    en      tcnti           ; allow r5 to be updated for overflow
        in      a,p1            ; is ECHO hi?
        anl     a,#$08
        jz      plp1            ; no, check to see if time's up

; Reset ECHO and wait for the entire pulse to come through
ppt2    mov     a,#$fb          ; BINH = Low, BLNK = Hi, INIT = Hi
        outl    bus,a
        mov     a,#80           ; was 60
plp2    dec     a
        jnz     plp2
        mov     a,#$f9          ; BINH = Low, BLNK = Low, INIT = Hi
        outl    bus,a

; Record the time and continue looking for more echos
        mov     a,r6            ; maximum number of echos stored?
        jz      plp1
        dec     r6
        dis     tcnti           ; no, store another
        mov     a,r5            ; r5 holds MSB of timer
        mov     @r0,a           ; store the MSB of the time
        inc     r0
        mov     a,t
        mov     @r0,a           ; store the LSB of the time
        inc     r0              ; point to next location
        jmp     plp1

        .org    $100

; Send data out from the serial port. Data is grouped in 16-bit
; words with a carriage return/line feed at the
; end. For example: $FFFF[CR][LF]

dump    mov     r5,#scanmsg     ; print the "scan data" message
        call    prtmsg
        mov     r1,#data       ; point to begining of data
tlp     mov     a,r1            ; compare r1 and r0, if same then done
        cpl     a
        add     a,r0
        cpl     a
        jz      tdone           ; all data sent

        mov     a,#'$
        call    dataout
        call    byteout         ; output the byte at r1
        call    byteout         ; and the next one
        mov     a,#13           ; CR LF
        call    dataout
        mov     a,#10
        call    dataout

        jmp     tlp             ; get next byte

tdone   mov     r5,#donmsg      ; print "Done."
        jmp     prtmsg

; Convert an eight bit word stored at the location pointed by r1 to a
; hex string and send to serial port. Increment R1

byteout mov     a,@r1           ; get the byte
        swap    a               ; use the top nybble first
        anl     a,#$0f
        add     a,#hexcon       ; point to the hex conversion table
        movp3   a,@a            ; get the hex number
        call    dataout         ; print it
        mov     a,@r1           ; do the same thing with the lower nybble
        anl     a,#$0f
        add     a,#hexcon
        movp3   a,@a
        call    dataout
        inc     r1              ; point to next byte
        ret

; When the timer overflows a call is made here to increment the most
; significant byte (MSB) of the echo time stored in r5.

ovrflw  inc     r5              ; increment MSB of timer
        retr

; read data from serial port into A
; uses r7, r6, and r5

datain  in      a,p2            ; wait for reset of start bit
        rrc     a
        jnc     datain          ; hold while data line is low
in2     in      a,p2            ; read port 2 bit 0
        rrc     a               ; shift serial data into carry
        jc      in2             ; wait for start bit
        call    hdelay          ; get into middle of start bit
        clr     a               ; clear current byte
        mov     r7,#8           ; 8 data bits
in1     rr      a               ; shift data byte right 1 byte (1)
        mov     r5,a            ; (1)
        call    hdelay          ; delay to middle of next bit (4)
        call    hdelay
        nop
        in      a,p2            ; read data bit (2)
        anl     a,#$01          ; keep only the serial bit (2)
        orl     a,r5            ; put with rest of data byte (1)
        djnz    r7,in1          ; read all 8 bits (2)
        rr      a               ; set proper bit placement
        ret

; send the data in A with one start bit and ~two stop bits
; uses r7, r6

dataout anl     p2,#$fd         ; send start bit
        call    hdelay          ; delay 1/2 baud
        call    hdelay          ; delay 1 baud

        nop
        call    rsout           ; send data byte

        orl     p2,#$02         ; send stop bits
        call    hdelay
        call    hdelay
        call    hdelay
        mov     r7,#9
do1     djnz    r7,do1
        jmp     hdelay

; send the byte in A out the RS-232 port at 2400 baud
; uses r7,r6

rsout   mov     r7,#8           ; send 8 bits
send2   rrc     a               ; shift out LSB
        jnc     send1           ; send carry to p2b7
        orl     p2,#$02         ; send a 1
        jmp     send
send1   anl     p2,#$fd         ; send a 0
        nop
        nop
send    call    hdelay          ; delay 1/2 baud
        call    hdelay          ; delay 1 baud
        nop                     ; timing
        djnz    r7,send2        ; send all 8 bits
        rrc     a               ; restore A
        ret

; delay for 1/2 baud time for 2400 baud at 4MHz (55 total cycles per
; half delay; 14 per full-bit delay, 7 per half-bit delay from caller)
; uses r6

hdelay  mov     r6,#22          ; 2 cycles
delay1  djnz    r6,delay1       ; 2 cycle2 x r6 = 44
        ret                     ; 2 cycles

        .org    $200

; Step the sonar motor one step to the left
; Uses A, R0, R1
; Step sequence:
;       1110
;       1010
;       1011
;       1001
;       1101
;       0101
;       0111
;       0110

stepl   mov     r0,#step        ; step cycle variable
        mov     a,@r0           ; get the step cycle number
        inc     a               ; next cycle number
        mov     r1,a            ; if cycle number = 8 then cycle number = 0
        add     a,#-8
        jnz     sl1
        mov     r1,#0
sl1     mov     a,r1
        mov     @r0,a           ; save the new step cycle number
        add     a,#stepseq      ; index into stepper control values
        movp3   a,@a
        outl    p2,a
        ret

; Step the sonar motor one step to the right
; Step sequence is the same as for left step but read from
; bottom to top
; Uses A, R0, R1

stepr   mov     r0,#step        ; step cycle variable
        mov     a,@r0           ; get the step cycle number
        dec     a               ; previous cycle number
        mov     r1,a            ; if cycle number = -1 then cycle number = 7
        cpl     a
        jnz     sr1
        mov     r1,#7
sr1     mov     a,r1
        mov     @r0,a           ; save the new step cycle number
        add     a,#stepseq      ; index into stepper control values
        movp3   a,@a
        outl    p2,a
        ret

; Move the sonar motor to the zero position
; Motor is stepped left until the zero position indicator is 1
; Uses A, R0, R1

zero    mov     r0,#0           ; time delay
        mov     r1,#8
zlp1    djnz    r0,zlp1
        djnz    r1,zlp1
        call    stepl           ; step left
        in      a,p2            ; is the zero indicator set?
        jb3     zero            ; yes, return
        ret

        .org    $300

stmsg   .byte   12, "Ralph's Sonar System 1.0"
        .byte   13, 10
rdymsg  .byte   13, 10, "Ready.", 13, 10, 0
scanmsg .byte   13, 10, "Scan Data:", 13, 10, 0
errmsg  .byte   13, 10, "Error.", 13, 10, 0
pngmsg  .byte   "Pinging...", 13, 10, 0
donmsg  .byte   "Done.", 13, 10, 0
bnkmsg  .byte   "Internal blanking interval "
        .byte   "set to $", 0

hexcon  .byte   "0123456789ABCDEF"

;       1110
;       1010
;       1011
;       1001
;       1101
;       0101
;       0111
;       0110

stepseq .byte   $ef,$af,$bf,$9f,$df,$5f,$7f,$6f

        .end

