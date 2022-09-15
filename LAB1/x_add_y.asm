.ORIG	x3000
    ; SETUP
    AND R0, R0, #0  ; reset R0
    ADD R0, R0, #10 ; add 10 to R0
    STI R0, X       ; store value of R0 at location x3100

    AND R1, R1, #0  ; reset R1
    ADD R1, R1, #15 ; add 15 t0 R1
    STI R1, Y       ; store value of R1 at location x3101

    ; PROGRAM
    LDI R0, X       ; load value from location x3100
    LDI R1, Y       ; load value from location x3101
    ADD R2, R0, R1  ; add R0 and R1 and store in R2
    STI R2, Z       ; store value of R2 at location x3102

    HALT            ; stop the program

    ; LABELS
    X .FILL x3100   
    Y .FILL x3101
    Z .FILL x3102
.END