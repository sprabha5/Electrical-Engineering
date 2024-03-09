#ORG 6000H
MVI C, 10H  //INITIALIZE COUNT
LXI H, 7500  //Source memory pointer 
LXI D, 7600  //destination memory pointer 
MVI B, 0AH    //byte counter 

NEXT:
MOV A,M   // get data byte from source memory (H register)
STAX D     // store data byte in destination memory(D register)
INX H     // increase source register by one 
INX D   // increase destination register by one
DCR B    //decrease byte counter by one

JNZ NEXT   // check if counter C is zero 

HLT

#ORG 7500H
#DB 35, 56, 25, 84, 69, 37, 15, 67, 82, 19