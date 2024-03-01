ORG 0000H
LCD_data equ P2
LCD_rs equ P0.0
LCD_rw equ P0.1
LCD_en equ P0.2
ljmp start

org 200h
start:
	mov 44H,#00H
	mov r2,#41H
	mov r1, #30H
	mov r0,#00AH
	mov 40h,#000H
	mov A,40H
	add A,r0
	mov 42H,A
	JNC label
	mov 44h,#01H
label:
	mov P2, #00H
	acall delay
	acall delay
	acall lcd_init
	acall delay
	acall delay
	acall delay
	mov A, #080H
	acall lcd_command
	acall delay
	acall lcd_senddata1
	acall delay
	mov A, #081H
	acall lcd_command
	acall delay
	acall lcd_senddata2
	acall delay
	mov A, #0C0H
	acall lcd_command
	acall delay
	acall lcd_senddata3
	acall delay
here: sjmp here



lcd_init:
	mov A,#38H
	acall lcd_command
	
	mov A,#0EH
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

lcd_senddata1:
	push 0e0H
	clr A
	mov R0,#42H
	mov A,@r0
	higher:
	swap A
	anl A, #0FH
	mov R7,A
	acall ascii
	acall delay
	mov LCD_data, R4
	setb LCD_rs
	clr LCD_rw
	setb LCD_en
	acall delay
	clr LCD_en
	acall delay
	pop 0e0H
ret

lcd_senddata2:
	push 0e0H
	clr A
	mov R0,#42H
	mov A,@R0
	lower:
	anl A, #0FH
	mov R7,A
	acall ascii
	acall delay
	mov LCD_data, R4
	setb LCD_rs
	clr LCD_rw
	setb LCD_en
	acall delay
	clr LCD_en
	acall delay
	pop 0e0H
ret

lcd_senddata3:
	push 0e0H
	clr A
	mov R0,#44H
	mov A,@R0
	anl A, #0fh
	mov R7,A
	acall ascii
	acall delay
	mov LCD_data, R4
	setb LCD_rs
	clr LCD_rw
	setb LCD_en
	acall delay
	clr LCD_en
	acall delay
	pop 0e0H
ret



delay: mov R0,#10
loop2: mov R1, #255
loop1: djnz R1, loop1
djnz R0, loop2
ret


ascii:
SUBB A,#0AH
JC num
MOV A,r7
ADD A,#37H
JMP store
num:
MOV A,R7
ADD A, #30H
store:
MOV R4,A
ret

End