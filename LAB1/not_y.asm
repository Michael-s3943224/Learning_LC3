.ORIG	x3000
    ; SETUP
    AND R0, R0, #0      
    ADD R0, R0, #10     
    STI R0, X           

    AND R1, R1, #0      
    ADD R1, R1, #5
    STI R1, Y           

    ; PROGRAM (PRETEND TOP DOESN'T EXIST)
    LDI R0, X           
    LDI R1, Y           
    NOT R2, R1
    STI R2, Z

    HALT                

    ; LABELS
    X .FILL x3100   
    Y .FILL x3101
    Z .FILL x3106
.END