ORG 0H
ljmp main ; long jump
org 100H ;before it will not work
	main:
		MOV p1, #40H ;hash is given to assign immediate  value whenevr number start with alphabet add hash 0 before it 
		acall delay ;used as jump here in delay
		MOV p1, #000H ; off led
		acall delay 
		sjmp main ;o continue blinking
	delay:
		mov R2, #255  ;1 nibble is 4 bits 
	
	delay1:
		mov R1, #255
		here: djnz R1, here
		djnz R2, delay1
	ret
end

