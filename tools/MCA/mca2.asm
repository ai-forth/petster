;
;  mca2.asm
;  (11.22.99)
; --------------------------------------
;  Railroad Signal Controller
;    - with Infrared Remote Control
; --------------------------------------
;
; ---------------------------------
;  variables
; ---------------------------------
;  
;  mode
;  m20 = mode
;  m21 = mode loop counter
;  m22 = delay loop counter 0 - 1 to 256 seconds 
;  m23 = delay loop counter 1 - 4 minutes to 17 hours
;
;  output
;  m26 = bus output
;  m27 = port 1 output
;
;  input
;  m28 = input state - 0 = nibble 1 
;                      1 = digit one no input 
;                      2 = nibble 2 timeout
;                      3 = digit two no input
;                      4 = switch
;  m29 = input data register - msn, lsn
;  m2a = input counter
;  m2b = red led state
;
;  remote
;  m2e = remote msb data
;  m2f = remote lsb data
;
;  m60 to m6b = standard data set 0-b
;  m70 to m7b = alternate data set 0-b
;
;  Data format
;
;    bit  function
;    7    flash
;    6    phase 2    
;    5    phase 1
;    4    phase 0
;    3    output 3
;    2    output 2
;    1    output 1
;    0    output 0
;
;
; ---------------------------------
;  constants
; ---------------------------------
;
                              ; mode tests
const     cmm       2d        ; maximum mode is 45; 45 is off
const     cmmc      d2        ; input generates carry on test 46
                              ;
                              ; sls0 - phase 1, 4
const     csls0r    12        ; red light on
const     csls0rd   13        ; red light off
const     csls0y    14        ; yellow light on    
const     csls0yd   17        ; yellow light off
const     csls0g    19        ; green light on    
const     csls0gd   1b        ; green light off
const     csls0rf   c3        ; red light off
const     csls0yf   c7        ; yellow light off
const     csls0gf   cb        ; green light off
                              ;
                              ; sls1 - phase 2, 5
const     csls1r    22        ; red light on
const     csls1rd   23        ; red light off
const     csls1y    24        ; yellow light on    
const     csls1yd   27        ; yellow light off
const     csls1g    29        ; green light on    
const     csls1gd   2b        ; green light off
const     csls1rf   d3        ; red light off
const     csls1yf   d7        ; yellow light off
const     csls1gf   db        ; green light off
                              ;
                              ; sls2 - phase 4, 1
const     csls2r    42        ; red light on
const     csls2rd   43        ; red light off
const     csls2y    44        ; yellow light on    
const     csls2yd   47        ; yellow light off
const     csls2g    49        ; green light on    
const     csls2gd   4b        ; green light off
const     csls2rf   93        ; red light off
const     csls2yf   97        ; yellow light off
const     csls2gf   9b        ; green light off
                              ;
                              ; ss3 - phase 5
const     css3o     51        ; on
const     css3c     50        ; off
                              ;
                              ; gcs4 - phase 0, 3 (active low)
const     cgcs4l    86        ; left
const     cgcs4r    35        ; right
const     cgcs4d    07        ; dark
const     cgcs4lb   82        ; left with bell
const     cgcs4rb   31        ; right with bell
const     cgcs4db   33        ; dark with bell
                              ;
                              ; gy5 - phase 0
const     cgy5mo    01        ; motor
const     cgy5lo    02        ; red light
const     cgy5mlo   03        ; red light and motor
const     cgy5mlc   00        ; red light and motor clear
                              ;
                              ; gy6 - phase 0
const     cgy6mo    01        ; motor
const     cgy6lo    02        ; clear light
const     cgy6mlo   03        ; clear light and motor
const     cgy6mlc   00        ; clear light and motor clear
;
;
; ----------------------------
;  reset routine
; ----------------------------
;
          org  00             ; 
                              ;
reset     mov  a,#20          ; turn off red led and power relay
          outl p2,a           ;
                              ;
          mov  a,#33          ; turn off searchlight signals (active low and
          outl bus,a          ;   active high) number 0 and 1  
          mov  a,#03          ;                    
                              ;
          outl p1,a           ; turn off searchlight signal number 2 and 
                              ;   semaphore signal number 3
                              ;
          anl  p2,#ef         ; select 8243-0
          mov  a,#ff          ; turn off grade crossing signal number 4
          movd p4,a           ;
                              ;
          mov  a,#00          ; turn off gyralight 5
          movd p5,a           ;
                              ;
          mov  a,#00          ; turn off gyralight 6
          movd p6,a           ;
                              ;          
          movd p7,a           ;
          orl  p2,#10         ; select 8243-1
          mov  a,#ff          ; turn off other signals (active low)
          movd p4,a           ;
          movd p5,a           ;
          movd p6,a           ;
          movd p7,a           ;
                              ; update memory locations later
                              ;
          dis  i              ; disable interupts                    ;
                              ;
          call d025s          ; 0.25 second delay
                              ;
          anl  p2,#df         ; turn on power relay
                              ;
          mov  r0,#7f         ; clear memory
          clr  a              ;    
reset0    mov  @r0,a          ; clear data at address in r0
          djnz r0,#reset0     ;  
                              ;
          mov  a,#33          ; update bus and port memory locations
          mov  r0,#26         ; 
          mov  @r0,a          ;          
          mov  r0,#27         ; 
          mov  @r0,a          ;          
                              ;
          mov  r0,#20         ; set initial mode
          mov  @r0,#00        ;  
                              ;
          jmp  start          ; jump to start
;          
;
; ----------------------------
;  start routine
; ----------------------------
;
start     mov  r0,#20         ; determine mode
          mov  a,@r0          ; get mode 
                              ;
          xrl  a,#cmm         ; if maximum mode - shut down
          jnz  start0         ;
          jmp  reset          ; turn off power relay
                              ;
start0    mov  a,@r0          ; get mode
          add  a,#f6          ; test if 0-9
          jc   start1         ;
          mov  a,@r0          ; get mode
          rl   a              ;
          call jumpa          ; decode
                              ;
          jmp  md0            ; pattern       
          jmp  md1            ; pattern
          jmp  md2            ; script
          jmp  md3            ; script
          jmp  md4            ; red      
          jmp  md5            ; red flash
          jmp  md6            ; yellow
          jmp  md7            ; yellow flash
          jmp  md8            ; green      
          jmp  md9            ; dark
                              ;
                              ; load return address into program counter
                              ;   and increment stack pointer
start1    mov  a,psw          ; increment stack pointer bits 2-0
          inc  a              ;
          mov  psw,a          ; 
          anl  a,#07          ; get new stack pointer value
          rl   a              ; double value
          add  a,#06          ; add base value (8 - 2)
          mov  r0,a           ; create stack pointer pointer
          mov  @r0,#start2    ; store new page return value in lsb
          inc  r0             ;                              
          mov  @r0,#00        ;  
                              ;
          mov  r0,#20         ; get mode
          mov  a,@r0          ;  
          add  a,#f6          ; subtract 10
          rl   a              ; 
                              ; decode - jumps to subroutines will return
                              ;   to address just loaded into stack pointer
          call jumpa          ;
                              ;
          jmp  sls0r          ; 10
          jmp  sls0rf         ;       
          jmp  sls0y          ;       
          jmp  sls0yf         ;       
          jmp  sls0g          ;       
          jmp  sls0gf         ;       
          jmp  sls0d          ;       
                              ;          
          jmp  sls1r          ; 17
          jmp  sls1rf         ;       
          jmp  sls1y          ;       
          jmp  sls1yf         ;       
          jmp  sls1g          ;       
          jmp  sls1gf         ;       
          jmp  sls1d          ;
                              ;
          jmp  sls2r          ; 24
          jmp  sls2rf         ;
          jmp  sls2y          ;       
          jmp  sls2yf         ;       
          jmp  sls2g          ;       
          jmp  sls2gf         ;       
          jmp  sls2d          ;
                              ;
          jmp  ss3o           ; 31      
          jmp  ss3c           ;
                              ;
          jmp  gcs4f          ; 33
          jmp  gcs4d          ;       
          jmp  gcs4fb         ; 
          jmp  gcs4db         ; 
                              ;
          jmp  gy5mo          ; 37
          jmp  gy5lo          ; 
          jmp  gy5mlo         ; 
          jmp  gy5mlc         ; 
                              ;
          jmp  gy6mo          ; 41
          jmp  gy6lo          ; 
          jmp  gy6mlo         ; 
          jmp  gy6mlc         ; 44
                              ; 45 is off
                              ;
start2    jmp  mdx            ;
;
;
; ----------------------------
;  mode 0
; ----------------------------
;
;  m21 = mode loop counter
;
md0       mov  r0,#21         ; set mode loop counter to 43
          mov  @r0,#2b        ;   (82*43 = 1hour)
                              ;
          call gy5lo          ; turn on lights on gyralights 5 and 6
          call gy6lo          ;
                              ;
md0a      call sls0r          ;
          call sls1r          ;
          call sls2r          ;
          call ss3c           ;
          call gcs4f          ;
          call d10s           ;
                              ;
          call sls0rf         ;
          call d2s            ;
          call sls1rf         ;
          call d2s            ;
          call sls2rf         ;
          call d2s            ;
          call gcs4f          ;
          call d10s           ;
                              ;
          call sls0y          ;
          call d2s            ;
          call sls1y          ;
          call d2s            ;
          call sls2y          ;
          call ss3o           ;
          call d2s            ;
          call gcs4f          ;
          call d10s           ;
                              ;
          call sls0yf         ;
          call d2s            ;
          call sls1yf         ;
          call d2s            ;
          call sls2yf         ;
          call d2s            ;
          call gcs4f          ;
          call d10s           ;
                              ;
          call sls0g          ;
          call d2s            ;
          call sls1g          ;
          call d2s            ;
          call sls2g          ;
          call d2s            ;
          call gcs4d          ;
          call d10s           ;
                              ;
          call sls0r          ;
          call d2s            ;
          call sls1r          ;
          call d2s            ;
          call sls2r          ;
          call d2s            ;
          call ss3c           ;
          call d2s            ;
                              ;
          mov  r0,#21         ; get mode loop counter
          mov  a,@r0          ; decrement
          dec  a              ;
          mov  @r0,a          ; 
          jz   md0b           ;
          jmp  md0a           ;
md0b      jmp  reset          ;
;
;
; ----------------------------
;  mode 1
; ----------------------------
;
;  m21 = mode loop counter
;
md1       mov  r0,#21         ; set mode loop counter to 43
          mov  @r0,#2b        ;   (82*43 = 1hour)
                              ;
md1a      call sls0r          ;
          call sls1y          ;
          call sls2g          ;
          call ss3o           ;
          call gcs4f          ;
          call d10s           ;
                              ;
          call sls0rf         ;
          call d2s            ;
          call sls1yf         ;
          call d2s            ;
          call sls2r          ;
          call ss3c           ;
          call d2s            ;
          call gcs4f          ;
          call d10s           ;
                              ;
          call sls0y          ;
          call d2s            ;
          call sls1g          ;
          call d2s            ;
          call sls2rf         ;
          call d2s            ;
          call gcs4f          ;
          call d10s           ;
                              ;
          call sls0yf         ;
          call d2s            ;
          call sls1r          ;
          call d2s            ;
          call sls2y          ;
          call ss3o           ;
          call d2s            ;
          call gcs4f          ;
          call d10s           ;
                              ;
          call sls0g          ;
          call d2s            ;
          call sls1rf         ;
          call d2s            ;
          call sls2yf         ;
          call d2s            ;
          call gcs4d          ;
          call d10s           ;
                              ;
          call sls0r          ;
          call d2s            ;
          call sls1y          ;
          call d2s            ;
          call sls2g          ;
          call d2s            ;
          call d2s            ;
                              ;
          mov  r0,#21         ; get mode loop counter
          mov  a,@r0          ; decrement
          dec  a              ;
          mov  @r0,a          ; 
          jz   md1b           ;
          jmp  md1a           ;
md1b      jmp  reset          ;
;
;
; ----------------------------
;  mode 2
; ----------------------------
;
;  m21 = mode loop counter
;
;  Script
;
;        a     0             b           2             c
;  ____________________________________________________________
;                /                            gcs
;  _____________/
;
;     d    1
;
;  train at a, d and c
;  train moves out from c
;  train moves from a through c
;  train moves from d to c
;  trains move to a and d
;
;
md2       mov  r0,#21         ; set mode loop counter to 22
          mov  @r0,#16        ;   (16*10*22 = 1hour)
                              ;
md2a      call sls0r          ;
          call sls1r          ;
          call sls2r          ;
          call ss3c           ;
          call gcs4d          ;
          call d10s           ;
                              ;
          call sls0rf         ;
          call d10s           ;
                              ;
          call sls0y          ;
          call d10s           ;
                              ;
          call sls0yf         ;
          call d10s           ;
                              ;
          call sls0g          ;
          call d10s           ;
                              ;
          call sls0r          ;
          call sls2rf         ;
          call d10s           ;
                              ;
          call sls2y          ;
          call ss3o           ;
          call d10s           ;
                              ;
          call sls2yf         ;
          call d10s           ;
                              ;
          call sls2g          ;
          call gcs4f          ;
          call d10s           ;
                              ;
          call sls0d          ;
          call sls2r          ;
          call ss3c           ;
          call d10s           ;
                              ;
          call sls1rf         ;
          call gcs4d          ;
          call d10s           ;
                              ;
          call sls1y          ;
          call sls2rf         ;
          call d10s           ;
                              ;
          call sls1yf         ;
          call sls2y          ;
          call ss3o           ;
          call d10s           ;
                              ;
          call sls1g          ;
          call sls2yf         ;
          call d10s           ;
                              ;
          call sls0r          ;
          call sls1r          ;
          call sls2g          ;
          call gcs4f          ;
          call d10s           ;
                              ;
          call sls2r          ;
          call ss3c           ;
          call d10s           ;
                              ;
          mov  r0,#21         ; get mode loop counter
          mov  a,@r0          ; decrement
          dec  a              ;
          mov  @r0,a          ; 
          jz   md2b           ;
          jmp  md2a           ;
md2b      jmp  reset          ;
;
;
; ----------------------------
;  mode 3
; ----------------------------
;
;  m21 = mode loop counter
;
;  Script
;
;        a     0             b           2             c
;  ____________________________________________________________
;                \                            gcs
;                 \_____________________
;
;               1           d
;
;  train at c and d
;  train moves from c through a
;  train moves from d to a
;  trains move to c and d
;
;
md3       mov  r0,#21         ; set mode loop counter to 40  
          mov  @r0,#28        ;   (9*10*40 = 1hour)
                              ;
md3a      call sls0yf         ;
          call sls1r          ;
          call sls2g          ;
          call ss3o           ;
          call gcs4f          ;
          call d10s           ;
                              ;
          call sls2r          ;
          call ss3c           ;
          call d10s           ;
                              ;
          call sls0g          ;
          call gcs4d          ;
          call d10s           ;
                              ;
          call sls0r          ;
          call d10s           ;
                              ;
          call sls1rf         ;
          call d10s           ;
                              ;
          call sls0y          ;
          call sls1yf         ;
          call d10s           ;
                              ;
          call sls1r          ;
          call d10s           ;
                              ;
          call sls0r          ;
          call d10s           ;
                              ;
          call sls2rf         ;
          call gcs4f          ;
          call d10s           ;
                              ;
                              ;
          mov  r0,#21         ; get mode loop counter
          mov  a,@r0          ; decrement
          dec  a              ;
          mov  @r0,a          ; 
          jz   md3b           ;
          jmp  md3a           ;
md3b      jmp  reset          ;
;
;
; ----------------------------
;  mode 4
; ----------------------------
;
md4       call gy5mlo         ;
          call sls0r          ;
          call sls1r          ;
          call sls2r          ;
          call ss3c           ;
          call gcs4f          ;
          jmp  mdx            ;
;
;
; ----------------------------
;  mode 5
; ----------------------------
;
md5       call gy5mlc         ;
          call sls0rf         ;
          call sls1rf         ;
          call sls2rf         ;
          call ss3c           ;
          call gcs4f          ;
          jmp  mdx            ;
;
;
; ----------------------------
;  mode 6
; ----------------------------
;
md6       call gy6mlo         ;
          call sls0y          ;
          call sls1y          ;
          call sls2y          ;
          call ss3o           ;
          call gcs4f          ;
          jmp  mdx            ;
;
;
; ----------------------------
;  mode 7
; ----------------------------
;
md7       call gy6mlc         ;
          call sls0yf         ;
          call sls1yf         ;
          call sls2yf         ;
          call ss3o           ;
          call gcs4f          ;
          jmp  mdx            ;
;
;
; ----------------------------
;  mode 8
; ----------------------------
;
md8       call gy5mlo         ;
          call gy6mlo         ;
          call sls0g          ;
          call sls1g          ;
          call sls2g          ;
          call ss3o           ;
          call gcs4f          ;
          jmp  mdx            ;
;
;
; ----------------------------
;  mode 9
; ----------------------------
;
md9       call sls0d          ;
          call sls1d          ;
          call sls2d          ;
          call ss3c           ;
          call gcs4d          ;
          call gy5mlc         ;
          call gy6mlc         ;
          jmp  mdx            ;
;
;
; ----------------------------
;  mode x 
; ----------------------------
;
mdx       call d1h            ;
          jmp  reset          ;
;
;
; ----------------------------
;  driver subroutines
; ----------------------------
;
;    uses r0
;
sls0r     mov  r0,#60         ;
          mov  @r0,#csls0r    ;
          ret                 ;
                              ;
sls0rf    mov  r0,#60         ;
          mov  @r0,#csls0rf   ;
          mov  r0,#70         ;
          mov  @r0,#csls0r    ;
          ret                 ;
                              ;
sls0y     mov  r0,#60         ;
          mov  @r0,#csls0y    ;
          ret                 ;
                              ;
sls0yf    mov  r0,#60         ;
          mov  @r0,#csls0yf   ;
          mov  r0,#70         ;
          mov  @r0,#csls0y    ;
          ret                 ;
                              ;
sls0g     mov  r0,#60         ;
          mov  @r0,#csls0g    ;
          ret                 ;
                              ;
sls0gf    mov  r0,#60         ;
          mov  @r0,#csls0gf   ;
          mov  r0,#70         ;
          mov  @r0,#csls0g    ;
          ret                 ;
                              ;
sls0d     mov  r0,#60         ;
          mov  @r0,#csls0rd   ;
          ret                 ;
                              ;
sls1r     mov  r0,#61         ;
          mov  @r0,#csls1r    ;
          ret                 ;
                              ;
sls1rf    mov  r0,#61         ;
          mov  @r0,#csls1rf   ;
          mov  r0,#71         ;
          mov  @r0,#csls1r    ;
          ret                 ;
                              ;
sls1y     mov  r0,#61         ;
          mov  @r0,#csls1y    ;
          ret                 ;
                              ;
sls1yf    mov  r0,#61         ;
          mov  @r0,#csls1yf   ;
          mov  r0,#71         ;
          mov  @r0,#csls1y    ;
          ret                 ;
                              ;
sls1g     mov  r0,#61         ;
          mov  @r0,#csls1g    ;
          ret                 ;
                              ;
sls1gf    mov  r0,#61         ;
          mov  @r0,#csls1gf   ;
          mov  r0,#71         ;
          mov  @r0,#csls1g    ;
          ret                 ;
                              ;
sls1d     mov  r0,#61         ;
          mov  @r0,#csls1rd   ;
          ret                 ;
                              ;
sls2r     mov  r0,#62         ;
          mov  @r0,#csls2r    ;
          ret                 ;
                              ;
sls2rf    mov  r0,#62         ;
          mov  @r0,#csls2rf   ;
          mov  r0,#72         ;
          mov  @r0,#csls2r    ;
          ret                 ;
                              ;
sls2y     mov  r0,#62         ;
          mov  @r0,#csls2y    ;
          ret                 ;
                              ;
sls2yf    mov  r0,#62         ;
          mov  @r0,#csls2yf   ;
          mov  r0,#72         ;
          mov  @r0,#csls2y    ;
          ret                 ;
                              ;
sls2g     mov  r0,#62         ;
          mov  @r0,#csls2g    ;
          ret                 ;
                              ;
sls2gf    mov  r0,#62         ;
          mov  @r0,#csls2gf   ;
          mov  r0,#72         ;
          mov  @r0,#csls2g    ;
          ret                 ;
                              ;
sls2d     mov  r0,#62         ;
          mov  @r0,#csls2rd   ;
          ret                 ;
                              ;
ss3o      mov  r0,#63         ;
          mov  @r0,#css3o     ; 
          ret                 ;
                              ;
ss3c      mov  r0,#63         ;
          mov  @r0,#css3c     ; 
          ret                 ;
                              ;
gcs4f     mov  r0,#64         ;
          mov  @r0,#cgcs4l    ; 
          mov  r0,#74         ;
          mov  @r0,#cgcs4r    ; 
          ret                 ;
                              ;
gcs4d     mov  r0,#64         ;
          mov  @r0,#cgcs4d    ; 
          ret                 ;
                              ;
gcs4fb    mov  r0,#64         ;
          mov  @r0,#cgcs4lb   ; 
          mov  r0,#74         ;
          mov  @r0,#cgcs4rb   ; 
          ret                 ;
                              ;
gcs4db    mov  r0,#64         ;
          mov  @r0,#cgcs4db   ; 
          ret                 ;
                              ;
gy5mo     mov  r0,#65         ;
          mov  @r0,#cgy5mo    ; 
          ret                 ;
                              ;
gy5lo     mov  r0,#65         ;
          mov  @r0,#cgy5lo    ; 
          ret                 ;
                              ;
gy5mlo    mov  r0,#65         ;
          mov  @r0,#cgy5mlo   ; 
          ret                 ;
                              ;
gy5mlc    mov  r0,#65         ;
          mov  @r0,#cgy5mlc   ; 
          ret                 ;
                              ;
gy6mo     mov  r0,#66         ;
          mov  @r0,#cgy6mo    ; 
          ret                 ;
                              ;
gy6lo     mov  r0,#66         ;
          mov  @r0,#cgy6lo    ; 
          ret                 ;
                              ;
gy6mlo    mov  r0,#66         ;
          mov  @r0,#cgy6mlo   ; 
          ret                 ;
                              ;
gy6mlc    mov  r0,#66         ;
          mov  @r0,#cgy5mlc   ; 
          ret                 ;
;
;
; ----------------------------
;  dx subroutine
; ----------------------------
;
;  m22 = delay loop counter 0 - 1 to 256 seconds 
;  m23 = delay loop counter 1 - 4 minutes to 18 hours
;
;    1 second to 18 hours
;    1 second per count
;    uses a and r0
;    subroutine calls use all registers
;
d4h       mov  r0,#23         ; load counters
          mov  @r0,#38        ;
          mov  r0,#22         ; 
          mov  @r0,#40        ;
          jmp  dx0            ;
d1h       mov  r0,#23         ; load counters
          mov  @r0,#0e        ;
          mov  r0,#22         ; 
          mov  @r0,#10        ;
          jmp  dx0            ;
d1m       mov  r0,#23         ; load counters
          mov  @r0,#00        ;
          mov  r0,#22         ; 
          mov  @r0,#3c        ;
          jmp  dx0            ;
d30s      mov  r0,#23         ; load counters
          mov  @r0,#00        ;
          mov  r0,#22         ;
          mov  @r0,#1e        ;
          jmp  dx0            ;
d10s      mov  r0,#23         ; load counters
          mov  @r0,#00        ;
          mov  r0,#22         ;
          mov  @r0,#0a        ;
          jmp  dx0            ;
d5s       mov  r0,#23         ; load counters
          mov  @r0,#00        ;
          mov  r0,#22         ;
          mov  @r0,#05        ;
          jmp  dx0            ;
d2s       mov  r0,#23         ; load counters
          mov  @r0,#00        ;
          mov  r0,#22         ;
          mov  @r0,#02        ;
          jmp  dx0            ;
                              ;
dx0       mov  a,#00          ; phase 0
          call update         ;
          mov  a,#10          ; phase 1
          call update         ;
          mov  a,#20          ; phase 2
          call update         ;
          mov  a,#30          ; phase 3 
          call update         ;
          mov  a,#40          ; phase 4 
          call update         ;
          mov  a,#50          ; phase 5 
          call update         ;
                              ;
          mov  r0,#22         ; loop until delay complete
          mov  a,@r0          ; decrement lsb
          dec  a              ;
          mov  @r0,a          ;
          xrl  a,#ff          ; see if borrow occurred
          jnz  dx1            ; 
          mov  r0,#23         ; if borrow, decrement msb
          mov  a,@r0          ;
          dec  a              ; 
          mov  @r0,a          ;
dx1       mov  r0,#22         ;
          mov  a,@r0          ; test if zero
          inc  r0             ;
          orl  a,@r0          ;
          jz   dx2            ;
          jmp  dx0            ;
dx2       ret                 ; 
;          
;
          neworg 500          ;
;
;
; ----------------------------
;  input subroutine
; ----------------------------
;
;  checks inputs and sets mode based on inputs
;    input state register keeps track of state
;    next state depends on current state, counters and input values
;
;  no result is returned
;
;  variables
;    m20 = mode
;    m21 = mode cycle count
;    m28 = input state - 0 = nibble 1 
;                        1 = digit one no input 
;                        2 = nibble 2 timeout
;                        3 = digit two no input
;                        4 = switch
;    m29 = input data register - msn, lsn
;    m2a = input counter 
;    m2b = red led state
;
;    m2e = remote msb data
;    m2f = remote lsb data
;
;  f0 set for switch input
;  f1 set for valid remote input
;
;  uses a, r0, r1
;    calls use a, r0 and r2-r7
;
;
input     clr  f0             ; clear flags
          clr  f1             ;
                              ;
          clr  a              ; clear remote data
          mov  r0,#2e         ;
          mov  @r0,a          ;
          mov  r0,#2f         ;
          mov  @r0,a          ;
                              ;
                              ; check inputs two times
                              ;   in 1/6 (0.167) second delay
          call valrem         ; check if valid remote input
          call switch         ; check if local input
          call valrem         ; 
          call switch         ; 
                              ;
          mov  r0,#2b         ; get red led status
          mov  a,@r0          ;               
          jz   inputa         ;
          anl  p2,#bf         ; turn off red led
          mov  a,#00          ; set flag as off
          jmp  inputb         ;
inputa    orl  p2,#40         ; turn on red led
          mov  a,#01          ; set flag as on
inputb    mov  @r0,a          ; update flag
                              ;
          jf0  input4         ; check if switch input
                              ;
          mov  r0,#28         ; check if state 0 - nibble 1
          mov  a,@r0          ;
          xrl  a,#00          ;
          jnz  input1         ;
          jf1  input0         ; check if valid input
          ret                 ;
input0    mov  r0,#2f         ; get lsb data
          mov  a,@r0          ;
          inc  a              ; adjust lsb for remote coding
          anl  a,#0f          ;
          mov  r1,a           ;
          xrl  a,#0a          ; 0 = 1 ... 8 = 9, 9 = 0
          jnz  input0a        ;
          mov  r1,#00         ;
input0a   mov  a,r1           ; get adjusted value
          mov  r0,#29         ; store value in input register - lsn
          mov  @r0,a          ;
          mov  r0,#28         ; change state to 1
          mov  @r0,#01        ;
          ret                 ;
                              ;
input1    mov  r0,#28         ; check if state 1 - digit one no input
          mov  a,@r0          ;
          xrl  a,#01          ;
          jnz  input2         ;
          jf1  input1a        ; test for no valid input
          mov  r0,#2a         ; set counter 0 to 6
          mov  @r0,#06        ;   (6 samples * .25 for 1.5 seconds)
          mov  r0,#28         ; change state to 2
          mov  @r0,#02        ;
input1a   ret                 ;                              
                              ;
input2    mov  r0,#28         ; check if state 2 - nibble 2 timeout
          mov  a,@r0          ;
          xrl  a,#02          ;
          jnz  input3         ;
          jf1  input2a        ;
          mov  r0,#2a         ; decrement counter
          mov  a,@r0          ; 
          dec  a              ;
          mov  @r0,a          ;
          jnz  input2c        ; if 0, only one digit
          mov  r0,#29         ; get lsn data
          mov  a,@r0          ;
          mov  r0,#20         ; store lsn data as new mode
          mov  @r0,a          ;
          mov  r0,#28         ; set state to 0
          clr  a              ;
          mov  @r0,a          ;
          clr  a              ; reset stack pointer and program status word 
          mov  psw,a          ;   CY, AC, F0, BS, 1, SP2, SP1, SP0   
          jmp  start          ;
input2a   mov  r0,#2f         ; get lsb data
          mov  a,@r0          ;
          inc  a              ; adjust lsb for remote coding
          anl  a,#0f          ;
          mov  r1,a           ;
          xrl  a,#0a          ; 0 = 1 ... 8 = 9, 9 = 0
          jnz  input2b        ;
          mov  r1,#00         ;
input2b   mov  r0,#29         ; get former lsn from input register
          mov  a,@r0          ;
          rl   a              ; multiply former lsn by 10(0x0a) to get msn
          mov  r2,a           ;
          rl   a              ;
          rl   a              ;
          add  a,r2           ;
          add  a,r1           ; add new lsn
          mov  @r0,a          ; store result
          mov  r0,#28         ; set state to 3
          mov  @r0,#03        ;
input2c   ret                 ;
                              ;
input3    mov  r0,#28         ; check if state 3 - digit two no input
          mov  a,@r0          ;
          xrl  a,#03          ;
          jnz  input4         ;
          jf1  input3a        ; test for no valid input
          mov  r0,#28         ; set state to 0
          clr  a              ;
          mov  @r0,a          ;
          mov  r0,#29         ; get result from input register
          mov  a,@r0          ;
          add  a,#cmmc        ; test if over max mode
          jc   input3a        ;
          mov  a,@r0          ; get result from input register again
          mov  r0,#20         ; store result as new mode
          mov  @r0,a          ;
          clr  a              ; reset stack pointer and program status word 
          mov  psw,a          ;   CY, AC, F0, BS, 1, SP2, SP1, SP0  
          jmp  start          ;
input3a   ret                 ;
                              ;
input4    mov  r0,#28         ; state 4 - switch
          mov  a,@r0          ;
          xrl  a,#04          ; 
          jz   input4a        ;
          mov  @r0,#04        ; if status not 4, set to 4
          mov  r0,#2a         ; set power off counter
          mov  @r0,#09        ;   to 9 (1.5 seconds)
          ret                 ;
input4a   jf0  input4c        ; if status 4, wait for no switch
          mov  r0,#20         ; get mode
          mov  a,@r0          ;
          inc  a              ; 
          mov  r1,a           ;
          add  a,#cmmc        ; test if over maximum mode
          jnc  input4b        ;
          mov  r1,#00         ;
input4b   mov  a,r1           ; store mode
          mov  @r0,a          ;
          mov  r0,#28         ; set state to 0
          clr  a              ;
          mov  @r0,a          ;
          clr  a              ; reset stack pointer and program status word 
          mov  psw,a          ;   CY, AC, F0, BS, 1, SP2, SP1, SP0  
          jmp  start          ;
input4c   mov  r0,#2a         ; decrement counter
          mov  a,@r0          ; 
          dec  a              ;
          mov  @r0,a          ;
          jnz  input4d        ; power off if count is 0  
          jmp  reset          ; 
input4d   ret                 ;
;
;
          neworg 600          ;
;
;
; ----------------------------
;  switch routine
; ----------------------------
;
;  sets f0 if switch input - active low
;
;  switch input = t0 (pin 1) active low
;
;
switch    jt0  switch1        ; test switch
          clr  f0             ; if switch input, set f0
          cpl  f0             ;
switch1   ret                 ;
;
;
; ----------------------------
;  valrem routine
; ----------------------------
;
;  sets f1 if valid remote data found
;
;  stores valid msb data in m2e
;  stores valid lsb data in m2f
;
;  uses a, r0
;    calls use a, r0 and r2-r7
;
;
valrem    call rem
          mov  a,r3           ; get msb data
          xrl  a,#05          ; check msb data
          jnz  valrem1        ; 
          mov  a,r2           ; get lsb data
          anl  a,#f0          ;
          xrl  a,#80          ; check lsb msn data
          jnz  valrem1        ; 
          mov  a,r2           ; get lsb data
          anl  a,#0f          ;
          add  a,#f6          ; check lsb lsn data <= 9
          jc   valrem1        ; 
          clr  f1             ; if data valid, set f1
          cpl  f1             ;
          mov  a,r3           ; get msb data
          mov  r0,#2e         ; 
          mov  @r0,a          ; store data 
          mov  a,r2           ; get lsb data
          mov  r0,#2f         ;
          mov  @r0,a          ; store data 
valrem1   ret                 ;
;
;
; ----------------------------
;  rem routine
; ----------------------------
;
;    if data, 0x01 returned in a
;    if no data, 0x00 returned in a 
;
;    remote msb data returned in r3
;    remote lsb data returned in r2 
;
;    registers
;    r0 - count data index register 
;    r1 - 

;    r2 - lsb data
;    r3 - msb data
;    r4 - lsb aggregate count 
;    r5 - msb aggregate count
;    r6 - count
;    r7 - loop count
;
;    remote input stream on t1
;
rem       clr  a              ;
          mov  r3,a           ; clear msb data
          mov  r2,a           ; clear lsb data

          mov  r4,a           ; clear lsb aggregate count
          mov  r5,a           ; clear msb aggregate count
                              ;
          mov  r7,a           ; clear loop count
                              ;
                              ; one sync
rem1      mov  r0,#32         ; set up count data pointer 
                              ;   for test
          mov  r6,#00         ; clear count
                              ;
rem2      call delayr         ; 100 us delay between counts
                              ;
          mov  a,r4           ; increment aggregate count
          add  a,#01          ;
          mov  r4,a           ;
          mov  a,r5           ;
          addc a,#00          ;
          mov  r5,a           ;
                              ;
          mov  a,r5           ; check aggregate count
          add  a,#fd          ; if over 3 * 256 = 768
                              ;   3 generates a carry
          jc   rem12          ; finish if maximum count reached
                              ;
          mov  a,r6           ; increment count
          add  a,#01          ;
          jnc  rem3           ; limit overflow
          mov  a,#ff          ;
rem3      mov  r6,a           ;
                              ;
          nop                 ; input data
          nop                 ;
          jt1  rem2           ; if one, get one data
                              ;
          mov  a,r6           ; if zero, check if one low count 
                              ;   at least ** 160 ** (#a0)
          add  a,#60          ; 160 (#a0) generates a carry
          jnc  rem1           ; if not greater, restart one sync
                              ;
          mov  a,r6           ; get count
          mov  @r0,a          ; store count data for test
          inc  r0             ; increment pointer
                              ;
                              ; zero sync
          mov  r6,#00         ; clear count
                              ;
rem4      call delayr         ; 100 us delay between counts
                              ;
          mov  a,r4           ; increment aggregate count
          add  a,#01          ;
          mov  r4,a           ;
          mov  a,r5           ;
          addc a,#00          ;
          mov  r5,a           ;
                              ;
          mov  a,r5           ; check aggregate count
          add  a,#fd          ; if over 3 * 256 = 768
                              ;   3 generates a carry
          jc   rem12          ; finish if maximum count reached
                              ;
          mov  a,r6           ; increment count
          inc  a              ;
          mov  r6,a           ;
                              ;     
          nop                 ; input data
          nop                 ;
          jnt1 rem4           ; if zero, get zero data
                              ;
          mov  a,r6           ; if one, check if zero low count
                              ;   at least ** 20 ** (#14)
          add  a,#ec          ; 20 (#14) generates a carry
          jnc  rem1           ; if not greater, restart one sync
                              ;
          mov  a,r6           ; if one, check if zero high count
                              ;   no more than ** 32 ** (#20)
          add  a,#df          ; 33 (#21) generates a carry
          jc   rem1           ; if not less, restart one sync
                              ;
          mov  a,r6           ; get count
          mov  @r0,a          ; store count data for test
          inc  r0             ; increment pointer
                              ;
                              ; get 12 data bits
          mov  r7,#0c         ; set up loop counter
                              ;
                              ; get one data
rem5      mov  r6,#00         ; clear count
                              ;
rem6      call delayr         ; 100 us delay between counts
                              ;
          mov  a,r4           ; increment aggregate count
          add  a,#01          ;
          mov  r4,a           ;
          mov  a,r5           ;
          addc a,#00          ;
          mov  r5,a           ;
                              ;
          mov  a,r5           ; check aggregate count
          add  a,#fd          ; if over 3 * 256 = 768
                              ;   3 generates a carry
          jc   rem12          ; finish if maximum count reached
                              ;
          mov  a,r6           ; increment count
          inc  a              ;
          mov  r6,a           ;
                              ;     
          nop                 ; input data
          nop                 ;
          jt1  rem6           ; if one, get one data
                              ;
          mov  a,r6           ; if zero, check if one low count
                              ;   at least ** 2 ** (#02)
          add  a,#fe          ; 2 (#02) generates a carry
          jnc  rem1           ; if not, restart one sync
                              ;
          mov  a,r6           ; if zero, check if one high count
                              ;   no more than ** 7 ** (#07)
          add  a,#f8          ; 8 (#08) generates a carry
          jc   rem1           ; if not, restart one sync
                              ;                    
          mov  a,r6           ; get count
          mov  @r0,a          ; store count data for test
          inc  r0             ; increment pointer
                              ;
                              ; get zero data
          mov  r6,#00         ; clear count
                              ;
rem7      call delayr         ; 100 us delay between counts
                              ;
          mov  a,r4           ; increment aggregate count
          add  a,#01          ;
          mov  r4,a           ;
          mov  a,r5           ;
          addc a,#00          ;
          mov  r5,a           ;
                              ;
          mov  a,r5           ; check aggregate count
          add  a,#fd          ; if over 3 * 256 = 768
                              ;   3 generates a carry
          jc   rem12          ; finish if maximum count reached
                              ;
          mov  a,r6           ; increment count
          inc  a              ;
          mov  r6,a           ;
                              ;     
          nop                 ; input data
          nop                 ;
          jnt1 rem7           ; if zero, get zero data
                              ;
                              ; zero bit
          mov  a,r6           ; if one, check if zero low count
                              ;   at least ** 4 ** (#04)
          add  a,#fc          ; 4 (#04) generates a carry
          jnc  rem1           ; if not, restart one sync
          mov  a,r6           ; if one, check if zero high count
                              ;   no more than ** 10 ** (#0a)
          add  a,#f5          ; 11 (#0b) generates a carry
          jc   rem8           ; if not, check if one bit
                              ;
          clr  c              ; set zero bit
          jmp  rem9           ;
                              ;
                              ; one bit
rem8      mov  a,r6           ; if one, check if zero low count
                              ;   at least ** 11 ** (#0b)
          add  a,#f5          ; 11 (#0b) generates a carry
          jnc  rem1           ; if not, restart one sync
          mov  a,r6           ; if one, check if zero high count
                              ;   no more than ** 17 ** (#11)
          add  a,#ee          ; 18 (#12) generates a carry
          jc   rem1           ; if not, restart one sync
                              ;
                              ; 
          clr  c              ; set one bit
          cpl  c              ;
                              ;
rem9      mov  a,r3           ; get msb
          rrc  a              ; rotate msb right through carry
          mov  r3,a           ; store msb
          mov  a,r2           ; get lsb
          rrc  a              ; rotate lsb right through carry
          mov  r2,a           ; store lsb
                              ;
          mov  a,r6           ; get count
          mov  @r0,a          ; store count data for test
          inc  r0             ; increment pointer
                              ;
          djnz r7,#rem5       ; repeat for 12 bits
                              ;                         
                              ; rotate result right 4
          mov  r7,#04         ; set up loop counter
rem10     mov  a,r3           ; get msb
          rrc  a              ; rotate msb right through carry
          mov  r3,a           ; store msb
          mov  a,r2           ; get lsb
          rrc  a              ; rotate lsb right through carry
          mov  r2,a           ; store lsb
          djnz r7,#rem10      ; repeat 4 times
                              ;
                              ; complete cycle
rem11     call delayr         ; 100 us delay between counts
                              ;
          mov  a,r4           ; increment aggregate count
          add  a,#01          ;
          mov  r4,a           ;
          mov  a,r5           ;
          addc a,#00          ;
          mov  r5,a           ;
                              ;
          mov  a,r5           ; check aggregate count
          add  a,#fd          ; if over 3 * 256 = 768
                              ;   3 generates a carry
          jnc  rem11          ; continue until maximum count reached
                              ;
          mov  a,#01          ; return with 0x01 in a and remote
          ret                 ;   values in r3 and r2
                              ;
rem12     clr  a              ; if no data, return 0x00 in a
          ret                 ;
;
;
          neworg 700
;
;
; ----------------------------
;  delayr subroutine
; ----------------------------
;
;  uses a
;
;  11Mhz crystal
;    (1/11M) * 3(prescaler) * 5(machine cycles) = 1.3636us
;
;  100us delay = 73 program cycles
;    average time between inputs is 22 cycles
;    therefore, need 51 cycles = 2 + 5 + 3(a) + 2
;    a = 14 (#0e)
;                             
;  Sample rate test output on P2.7 (pin 38)
;
delayr    mov  a,#0e          ; 2 cycles
          anl  p2,#7f         ; test output adds 5 cycles
          nop                 ;
          orl  p2,#80         ; 
delayr1   dec  a              ; 3(a) cycles
          jnz  delayr1        ; 
          ret                 ; 2 cycles
;
;
; ----------------------------
;  update subroutine
; ----------------------------
;
;  m60 to m6b = standard data 0-b
;  m70 to m7b = alternate data 0-b
;
;  uses a, r0, r4, r5, r6 and r7
;  call to output subroutine uses a, r0, r1, r2 and r3  
;  call to input subroutine uses all registers
;
update    mov  r4,a           ; store phase data
          mov  r5,#6b         ; initialize pointer to std data set
          mov  r6,#7b         ; initialize pointer to alt data set
          mov  r7,#0b         ; initialize loop counter    
                              ;
update0   mov  a,r5           ; set pointer
          mov  r0,a           ;
          mov  a,@r0          ; get data
          anl  a,#70          ; strip lower bits
          xrl  a,r4           ; test if correct phase
          jnz  update1        ;
          mov  a,@r0          ; combine data and output address
          anl  a,#0f          ; strip phase and flash bits
          swap a              ; add counter as address
          orl  a,r7           ;
          swap a              ;
          call output         ;
                              ;
update1   mov  a,r5           ; set pointer
          mov  r0,a           ;
          mov  a,@r0          ; get data
          anl  a,#80          ; test flash bit
          jz   update2        ;
                              ;
          mov  a,r6           ; set pointer
          mov  r0,a           ;
          mov  a,@r0          ; get data
          anl  a,#70          ; strip bits
          xrl  a,r4           ; test if correct phase
          jnz  update2        ;
          mov  a,@r0          ; combine data and output address
          anl  a,#0f          ; strip phase and flash bits
          swap a              ; add counter as address
          orl  a,r7           ;
          swap a              ;
          call output         ;
                              ;
update2   dec  r5             ;
          dec  r6             ;
          dec  r7             ;
          mov  a,r7           ;
          xrl  a,#ff          ;
          jnz  update0        ;
          call input          ;
          ret                 ;
;
;
; ----------------------------
;  output subroutine
; ----------------------------
;
;  msn in a contains 4 bit port address
;  lsn in a contains 4 bit port data
;
;  m26 = bus output
;  m27 = port 1 output
;
;    uses a, r2 and r3
;    calls jumpa subroutine which uses a, r0 and r1
;
output    mov  r2,a           ; store command     
          swap a              ; determine address
          anl  a,#0f          ;
          mov  r3,a           ; store address in r3
          mov  a,r2           ; get command     
          anl  a,#0f          ; determine data
          mov  r2,a           ; store data in r2
                              ;
          mov  a,r3           ; decode address
          rl   a              ;
          call jumpa          ;
          jmp  output0        ;       
          jmp  output1        ;       
          jmp  output2        ;       
          jmp  output3        ;       
          jmp  output4        ;       
          jmp  output5        ;       
          jmp  output6        ;       
          jmp  output7        ;       
          jmp  output8        ;       
          jmp  output9        ;       
          jmp  outputa        ;       
          jmp  outputb        ;       
                              ;
output0   mov  r1,#26         ; get bus ouptut
          mov  a,@r1          ;
          anl  a,#f0          ; update bus output
          orl  a,r2           ;
          mov  @r1,a          ;
          outl bus,a          ; output data
          ret                 ;
output1   mov  a,r2           ; put data in correct nibble
          swap a              ;
          mov  r2,a           ;
          mov  r1,#26         ; get bus ouptut
          mov  a,@r1          ;
          anl  a,#0f          ; update bus output
          orl  a,r2           ;
          mov  @r1,a          ;
          outl bus,a          ; output data
          ret                 ;
output2   mov  r1,#27         ; get port ouptut
          mov  a,@r1          ;
          anl  a,#f0          ; update port output
          orl  a,r2           ;
          mov  @r1,a          ;
          outl p1,a           ; output data
          ret                 ;
output3   mov  a,r2           ; put data in correct nibble
          swap a              ;
          mov  r2,a           ;
          mov  r1,#27         ; get port ouptut
          mov  a,@r1          ;
          anl  a,#0f          ; update port output
          orl  a,r2           ;
          mov  @r1,a          ;
          outl p1,a           ; output data
          ret                 ;
output4   anl  p2,#ef         ; select 8243-0
          mov  a,r2           ;
          movd p4,a           ; output data
          ret                 ;
output5   anl  p2,#ef         ; select 8243-0
          mov  a,r2           ;
          movd p5,a           ; output data
          ret                 ;
output6   anl  p2,#ef         ; select 8243-0
          mov  a,r2           ;
          movd p6,a           ; output data
          ret                 ;
output7   anl  p2,#ef         ; select 8243-0
          mov  a,r2           ;
          movd p7,a           ; output data
          ret                 ;
output8   orl  p2,#10         ; select 8243-1
          mov  a,r2           ;
          movd p4,a           ; output data
          ret                 ;
output9   orl  p2,#10         ; select 8243-1
          mov  a,r2           ;
          movd p5,a           ; output data
          ret                 ;
outputa   orl  p2,#10         ; select 8243-1
          mov  a,r2           ;
          movd p6,a           ; output data
          ret                 ;
outputb   orl  p2,#10         ; select 8243-1
          mov  a,r2           ;
          movd p7,a           ; output data
          ret                 ;
;
;
; ----------------------------
;  jumpa subroutine
; ----------------------------
;
;    increments pc by value in a
;    uses a and r0 and r1 
;
;    18 cycles, not counting call to subroutine
;
;    stack pointer begins at m8 and goes to m17
;    address lsb is m8, msb is m9 bit 0-3
;    saved psw is m9 bits 4-7 BS, F0, AC and CY 
;
;    this program stores an updated return address in the stack,
;    and then returns
;
;    Note: overflow (i.e. pc + a > 0x7ff would change register bank
;    select to 1 - a real problem
;
jumpa     mov  r1,a           ; store jump value
          mov  a,psw          ; get psw
          anl  a,#07          ; get stack pointer value
          rl   a              ; double value
          add  a,#06          ; add base value (8 - 2)
          mov  r0,a           ; create stack pointer pointer
          mov  a,@r0          ; get lsb return value
          add  a,r1           ; add jump value to the lsb return value
          mov  @r0,a          ; store new lsb return value
          inc  r0             ; increment pointer
          mov  a,@r0          ; get msb return value and psw
          addc a,#00          ; add carry to msb return value
          mov  @r0,a          ; store msb return value         
          ret
;
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
