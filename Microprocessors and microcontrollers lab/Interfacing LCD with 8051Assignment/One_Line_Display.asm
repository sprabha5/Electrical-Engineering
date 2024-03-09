ORG 0000H
ljmp start
;.......... Port Definition...........;
LCD_data equ P2          ; LCD Data Port
LCD_rs equ P0.0          ; LCD Register Select
LCD_rw equ P0.1          ; LCD Write/Read
LCD_en equ P0.2          ; LCD Enable
org 200H
start:
	MOV P2, #00H       ; Port P2 is the LCD output port
	acall delay      ;Initial delay for LCD Power up
	acall delay
	acall LCD_init        ;Initialise LCD
	acall delay
	acall delay
	acall delay
	;MOV A, #08FH      ;Put cursor on first row, 5 coulmn.
	MOV A, #0C1H      ;Put cursor on second row, 2 coulmn.
	acall LCD_command        ;Send command to LCD
	acall delay
	acall LCD_send_data      ;Call text strings sending routine
	acall delay

here: sjmp here          ;Stay here


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
LCD_send_data:
	MOV A, #'8'          
	MOV LCD_data, A       ;Move the command to LCD port
	setb LCD_rs           ;Selected data register
	clr LCD_rw       ;We are writing
	setb LCD_en      ; Enable H->L
		acall delay
	clr LCD_en
		acall delay
		acall delay
	ret          ;Return from busy routine
;.....................................................;

;................. Delay Function .........................;
delay: MOV R0, #10
loop2: MOV R1, #225
	loop1: djnz R1, loop1
	djnz R0, loop2
	ret
;.................................................;
