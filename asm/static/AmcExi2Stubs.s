.include "macros.inc"

.section .text

.org 0x800A8CC0

.global EXI2_Init
EXI2_Init:
/* 800A8CC0 000A5C20  4E 80 00 20 */	blr 

.global EXI2_EnableInterrupts
EXI2_EnableInterrupts:
/* 800A8CC4 000A5C24  4E 80 00 20 */	blr 

.global EXI2_Poll
EXI2_Poll:
/* 800A8CC8 000A5C28  38 60 00 00 */	li r3, 0
/* 800A8CCC 000A5C2C  4E 80 00 20 */	blr 

.global EXI2_ReadN
EXI2_ReadN:
/* 800A8CD0 000A5C30  38 60 00 00 */	li r3, 0
/* 800A8CD4 000A5C34  4E 80 00 20 */	blr 

.global EXI2_WriteN
EXI2_WriteN:
/* 800A8CD8 000A5C38  38 60 00 00 */	li r3, 0
/* 800A8CDC 000A5C3C  4E 80 00 20 */	blr 

.global EXI2_Reserve
EXI2_Reserve:
/* 800A8CE0 000A5C40  4E 80 00 20 */	blr 

.global EXI2_Unreserve
EXI2_Unreserve:
/* 800A8CE4 000A5C44  4E 80 00 20 */	blr 

.global AMC_IsStub
AMC_IsStub:
/* 800A8CE8 000A5C48  38 60 00 01 */	li r3, 1
/* 800A8CEC 000A5C4C  4E 80 00 20 */	blr 
