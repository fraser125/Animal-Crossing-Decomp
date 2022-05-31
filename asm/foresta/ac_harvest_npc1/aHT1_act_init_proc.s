lbl_80591DBC:
/* 80591DBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80591DC0  7C 08 02 A6 */	mflr r0
/* 80591DC4  38 80 00 01 */	li r4, 1
/* 80591DC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80591DCC  4B FF FF A5 */	bl aHT1_setupAction
/* 80591DD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80591DD4  7C 08 03 A6 */	mtlr r0
/* 80591DD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80591DDC  4E 80 00 20 */	blr 
