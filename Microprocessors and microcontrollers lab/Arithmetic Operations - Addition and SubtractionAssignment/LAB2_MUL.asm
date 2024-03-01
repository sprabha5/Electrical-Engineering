#ORG 7000H

LHLD 7501H
XCHG
LDA 7503H


MVI H,00H
MVI C, 08H
LOOP:
DAD H  //Shift partial product by 1 bit (content is multiplied twice, multiplication by 2 is equivalent to shifting left)
RLC    // Rotate accumulator by with 1 bit
JNC SKIP 
DAD D
SKIP:
DCR C   // Decrease C register
JNZ LOOP     // 
SHLD 7504H   // Store the result in 7504 memory
RST 1   // Terminate


#ORG 7501H
# DB 25, 00, 05
