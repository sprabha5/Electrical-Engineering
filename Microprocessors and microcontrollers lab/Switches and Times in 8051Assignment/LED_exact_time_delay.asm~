org 0000h
ljmp main
org 000bh ; Interrupt service routine during Timer 0 (T0) overflow
ljmp interrupt_routine
org 100h
	main:          ; Take a 16 bit number N as input to load in TL0 and TH0 for the required time delay. Store upper bytein R1 and lower byte in R0
		MOV R1, 0000H
		MOV R0, 000H
		
		; Enabling interrupt from T0
		setb EA
		setb ET0
		; Initializing timer count
		mov th0, R1 ; TH0 = R1
		mov tl0, R0 ; TL0 = R0
		; Enabling the timer T0 to run. To start Timer 0, set tr0(TCON.4). Whenever T0 overflows, TF0will be set 			(TCON.5), and the currently running program will be interrupted.
		
		
		mov tmod, #01H    ; setting mode 1 and timer 0
		setb tr0
	here: 	
		sjmp here
		
	interrupt_routine:     ; restore the count
		mov th0, R1 ; TH0 = R1
		mov tl0, R0 ; TL0 = R0
		; code to blink LEDs for the desired time period.
		ljmp main1 ; long jump
		org 500H ;before it will not work
	main1:	
		MOV p1, #000H
		acall delay 
		MOV p1, #0FFH ;hash is given to assign immediate  value whenevr number start with alphabet add hash 0 before it 
		acall delay ;used as jump here in delay
		MOV p1, #000H ; off led
		acall delay 
		;sjmp main1 ;o continue blinking
	delay:
		USING 0
		PUSH 0E0H
		PUSH AR0 ;saving the contents of the registers which are going to be used
		PUSH AR1
		PUSH AR2
		MOV A, #2 ;Value of \u20182*n\u2019 to create a delay of n seconds is loaded in A
		MOV B, #10;Load 10 in B
		MUL AB
		;Multiply 10 with n to get the number of iterations for the 50ms loop
		MOV R0, A ;Move the result to R0 which is used as the iterator in the loop
		BACK1:
		;following is a nested loop which generates a delay of 50ms. This delay has been iterated 10*2*n times to get a total delay of 500*2*n ms = n seconds
		MOV R2,#200
		BACK2:
		MOV R1,#0FFH
		BACK3:
		DJNZ R1, BACK3
		DJNZ R2, BACK2
		DJNZ R0, BACK1
		POP AR2
		;popping the register in the exact reverse order before
		POP AR1
		POP AR0
		POP 0E0H
		RET
		;exiting from the subroutine

reti
end