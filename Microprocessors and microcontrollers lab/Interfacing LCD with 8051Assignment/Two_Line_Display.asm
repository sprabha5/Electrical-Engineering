ORG 0000H
ljmp start
;.......... Port Definition...........;
LCD_data equ P2          ; LCD Data Port
LCD_rs equ P0.0          ; LCD Register Select
LCD_rw equ P0.1          ; LCD Write/Read
LCD_en equ P0.2          ; LCD Enable
org 200H
start:
	MOV P2,#00h
	acall delay
	acall delay
	acall LCD_init
	acall delay
	acall delay
	acall delay
	mov a,#080h   ;cursor position
	acall LCD_command
	acall delay
	mov dptr,#my_string1
	ACALL LCD_sendstring
	acall delay
	acall delay
	acall delay
	
	mov a,#0C0h   ;cursor position
	acall LCD_command
	acall delay
	mov dptr,#my_string2
	ACALL LCD_sendstring
	acall delay
	acall delay
	acall delay

here: sjmp here


;..................LCD Initialization Routine..............;

LCD_init:
	MOV A,#38H ; Function set: 2 Line, 8-bit, 5x7 dots 
	acall LCD_command
	MOV A, #0CH ;Display on, Curson off 
	acall LCD_command
	MOV A, #01H ; Clear LCD 
	acall LCD_command
	MOV A, #06H ; Entry mode, auto increment with no shift acall lcd_command
	ret      ;Return from routine
;...............................................................;

;..................LCD Command Routine..............;
LCD_command:

mov LCD_data,A      ;Move the command to LCD port
clr LCD_rs           ;Selected command register
clr LCD_rw         ;We are writing in instruction register
setb LCD_en        ;Enable H->L
	acall delay
clr LCD_en
	acall delay

ret
;.......................................................;

;..................Data Sending Routine..............;
lcd_senddata:

mov LCD_data, A
setb LCD_rs
clr LCD_rw
setb LCD_en 
acall delay
clr LCD_en
acall delay
ret
;.......................................;


;-----------------------text strings sending routine-------------------------------------
LCD_sendstring:
	push 0e0h
	HELLO:CLR A
	MOVC A,@A+DPTR
	JZ EXIT
	acall lcd_senddata
	INC DPTR
	JMP HELLO
	exit: pop 0e0h
	ret 

;................. Delay Function .........................;
delay: MOV R0, #10
loop2: MOV R1, #225
	loop1: djnz R1, loop1
	djnz R0, loop2
	ret
;.................................................;

;------------- Storing text strings as data byte---------------------------------------------------------------
org 300h
my_string1:
DB 'RASHMI', 00H
my_string2:
DB '10/10/2022', 00H

end 
