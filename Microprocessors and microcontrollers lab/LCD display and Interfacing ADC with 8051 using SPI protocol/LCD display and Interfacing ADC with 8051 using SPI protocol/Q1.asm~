org 0000H
ljmp main

LCD_data equ P2
LCD_rs equ P0.0
LCD_rw equ P0.1
LCD_en equ P0.2

INIT:   
mov R0,#2cH
mov 40H,#0edH
MOV 44H,#00

RET

ADDER_BIT:
MOV A,40H
CLR C
ADDC A,R0
JNC NOCARRY
MOV 44H,#1
NOCARRY:MOV 42H,A
RET






lcd_init:
mov A,#38H
acall lcd_command

mov A,#0CH
acall lcd_command

mov A,#01H
acall lcd_command

mov A,#06H
acall lcd_command
ret


lcd_command:
mov LCD_data, A
clr LCD_rs
clr LCD_rw
setb LCD_en 
acall delay
clr LCD_en
acall delay
ret

lcd_senddata:

mov LCD_data, A
setb LCD_rs
clr LCD_rw
setb LCD_en 
acall delay
clr LCD_en
acall delay
ret

delay:
mov r0,#10
loop2: mov r1,#255
loop1:djnz r1,loop1
djnz r0,loop2
ret



ASCNIB:
MOV R5,A
SUBB A,#10
JC NUM
MOV A,R5
ADD A,#31H
RET
NUM:MOV A,R5
ADD A,#30H
RET



DISPLAY:
mov P2,#00h
acall delay
acall delay
acall lcd_init
acall delay
acall delay
acall delay
mov a,#0c0h   ;cursor position
acall lcd_command
acall delay

MOV A,42h
SWAP A
ANL A,#0FH
ACALL ASCNIB
acall lcd_senddata
acall delay
acall delay
acall delay

MOV A,42h
ANL A,#0FH
ACALL ASCNIB
acall lcd_senddata
acall delay
acall delay
acall delay

mov a,#080h   ;cursor position
acall lcd_command
acall delay
MOV A,44h
ANL A,#0FH
ACALL ASCNIB
acall lcd_senddata
acall delay
acall delay
acall delay

ret
ORG 0200H
MAIN:
ACALL INIT
ACALL ADDER_BIT
ACALL DISPLAY
here: sjmp here
END
