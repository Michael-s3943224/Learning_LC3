.ORIG x3000
LDI R0, X_ADDRESS
LDI R1, Y_ADDRESS
   
ADD R2, R0, #0                 ; current number
AND R3, R3, #0                 ; divide count

NOT R4, R1
ADD R4, R4, #1                 ; negate the divisor

DIVIDE_LOOP
    ADD R3, R3, #1             ; increment divide count
    ADD R2, R2, R4             ; current number minus the divisor
    BRn OVER_SHOT_DIVIDE
        ; NOT over shot
        BRnzp DIVIDE_LOOP
    OVER_SHOT_DIVIDE
        ; YES over shot
        ADD R2, R2, R1         ; add back the divisor
        ADD R3, R3, #-1        ; decrement the divide count
        HALT

X_ADDRESS .FILL x3100
Y_ADDRESS .FILL x3101

.END