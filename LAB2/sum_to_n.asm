.ORIG x3000

AND R0, R0, #0
ADD R0, R0, #7

AND R1, R1, #0
ADD R1, R1, R0

AND R2, R2, #0

MULTI_LOOP
    ADD R2, R2, R1
    ADD R1, R1, #-1
    BRp MULTI_LOOP

STI R2, RESULT_ADDRESS
HALT
RESULT_ADDRESS .FILL x3100
.END

