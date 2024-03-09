ORG 0000H
LJMP MAIN ;Jump to main subroutine
ORG 50H
INIT:
;Write initialization commands that include storing the two numbers in respective locations and defining Port 1 as output port.
MOV R0, #020H
MOV A, R0    ; FOR DATA TRANSFER
MOV 40H, #080H
MOV R3, #0D0H
MOV R1, #00H ; CARRY
MOV p1, #000H ; OUTPUT PORT
RET

ADDER_8BIT:
; Write the addition subroutine
ADD A,40H  ; ADDING THE ATA OF ACCUMULATOR TO THE DATA OF 40H MEMORY LOCATION
JC CARRY
SUBB A, R3
CARRY:
INC R1
RET
NIBBLE_8BIT:
;Write the code to extract upper and lower nibbles and to call LED program
SWAP A
ACALL LED
RET

LED:
;Showing the values on LED
LOO:
MOV p1, #000H    ;SET OR TURN ON LED
acall delay
acall delay
acall delay
acall delay
acall delay
acall delay

MOV p1, #000H
acall delay
acall delay
acall delay
acall delay
acall delay
acall delay

MOV p1, #030H
ACALL delay
acall delay
acall delay
acall delay
acall delay
acall delay
SJMP LOO
delay:
		MOV R2, #255

delay1:
		mov R1, #255
		here: djnz R1, here
		djnz R2, delay1
RET
;------------------------------------ Main subroutine------------------------------------
ORG 0100H
MAIN:
ACALL INIT
ACALL ADDER_8BIT ;Adding the two values
ACALL NIBBLE_8BIT ;Separate the nibbles and Display result on led(sum)
LOOP:
SJMP LOOP
END

