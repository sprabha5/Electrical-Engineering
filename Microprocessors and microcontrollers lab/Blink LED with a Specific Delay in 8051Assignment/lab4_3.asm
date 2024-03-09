ORG 0H
ljmp main1 ; long jump

org 100H ;before it will not work
	main1:
		MOV p1, #80H ;hash is given to assign immediate  value whenevr number start with alphabet add hash 0 before it 
		acall delay ;used as jump here in delay
		MOV p1, #000H ; off led
		acall delay
		;sjmp main1 ;o continue blinking

	main2:
		MOV p1, #40H ;hash is given to assign immediate  value whenevr number start with alphabet add hash 0 before it 
		acall delay ;used as jump here in delay
		MOV p1, #000H ; off led
		acall delay
		;sjmp main2 ;o continue blinking

	main3:
		MOV p1, #20H ;hash is given to assign immediate  value whenevr number start with alphabet add hash 0 before it 
		acall delay ;used as jump here in delay
		MOV p1, #000H ; off led
		acall delay 
		;sjmp main3 ;o continue blinking

	main4:
		MOV p1, #10H ;hash is given to assign immediate  value whenevr number start with alphabet add hash 0 before it 
		acall delay ;used as jump here in delay
		MOV p1, #000H ; off led
		acall delay 
		sjmp main1 ;o continue blinking
		
	delay:
		mov R2, #255  ;1 nibble is 4 bits 
	
	delay1:
		mov R1, #255
		here: djnz R1, here
		djnz R2, delay1
	ret
end


