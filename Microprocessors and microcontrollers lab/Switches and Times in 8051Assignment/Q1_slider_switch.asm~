ORG 0H
ljmp loop ; long jump
org 100H ;before it will not work
	loop:
		MOV P1, #0FFH          ;to turn ON all LED and configure switch to take input 
		acall delay         ; 5sec delay
		MOV P1, #0FH		;turn OFF all LED
		MOV R1, P1          ;Save the read value in a register
		MOV A, P1             
		SWAP A			;swapping of lower nibble with upper nibble
		acall delay1             ; 1sec delay
		MOV P1, A               ;show the read value in LED
		acall delay             ; 5sec delay
		MOV P1, #00FH
		acall delay             ; 5sec delay TO GET INPUT FROM SWITCHES
		MOV A,P1
		CJNE A, #000H, loop         ; Compare accumulator to 00 H and jump loop if not equal 
		RET
		MOV 60H, A           ; Move the accumulator vlue to memory 60H
		MOV P1, 60H       ; Show the memory location value to port P1

	delay:
		USING 0
		PUSH 0E0H
		PUSH AR0 ;saving the contents of the registers which are going to be used
		PUSH AR1
		PUSH AR2
		MOV A, #10 ;Value of \u20182*n\u2019 to create a delay of n seconds is loaded in A
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


	delay1:
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
		BACK4:
		;following is a nested loop which generates a delay of 50ms. This delay has been iterated 10*2*n times to get a total delay of 500*2*n ms = n seconds
		MOV R2,#200
		BACK5:
		MOV R1,#0FFH
		BACK6:
		DJNZ R1, BACK6
		DJNZ R2, BACK5
		DJNZ R0, BACK4
		POP AR2
		;popping the register in the exact reverse order before
		POP AR1
		POP AR0
		POP 0E0H
		RET
		;exiting from the subroutine
end
