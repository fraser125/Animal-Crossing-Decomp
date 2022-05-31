lbl_803A8D9C:
/* 803A8D9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A8DA0  7C 08 02 A6 */	mflr r0
/* 803A8DA4  28 03 00 00 */	cmplwi r3, 0
/* 803A8DA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A8DAC  38 00 00 00 */	li r0, 0
/* 803A8DB0  41 82 00 48 */	beq lbl_803A8DF8
/* 803A8DB4  2C 04 00 00 */	cmpwi r4, 0
/* 803A8DB8  41 80 00 40 */	blt lbl_803A8DF8
/* 803A8DBC  2C 04 00 10 */	cmpwi r4, 0x10
/* 803A8DC0  40 80 00 38 */	bge lbl_803A8DF8
/* 803A8DC4  2C 05 00 00 */	cmpwi r5, 0
/* 803A8DC8  41 80 00 30 */	blt lbl_803A8DF8
/* 803A8DCC  2C 05 00 10 */	cmpwi r5, 0x10
/* 803A8DD0  40 80 00 28 */	bge lbl_803A8DF8
/* 803A8DD4  3C E0 80 65 */	lis r7, control_proc@ha /* 0x80653F08@ha */
/* 803A8DD8  54 A8 08 3C */	slwi r8, r5, 1
/* 803A8DDC  54 C0 10 3A */	slwi r0, r6, 2
/* 803A8DE0  38 A7 3F 08 */	addi r5, r7, control_proc@l /* 0x80653F08@l */
/* 803A8DE4  7C 63 42 14 */	add r3, r3, r8
/* 803A8DE8  7D 85 00 2E */	lwzx r12, r5, r0
/* 803A8DEC  7D 89 03 A6 */	mtctr r12
/* 803A8DF0  4E 80 04 21 */	bctrl 
/* 803A8DF4  7C 60 1B 78 */	mr r0, r3
lbl_803A8DF8:
/* 803A8DF8  7C 03 03 78 */	mr r3, r0
/* 803A8DFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A8E00  7C 08 03 A6 */	mtlr r0
/* 803A8E04  38 21 00 10 */	addi r1, r1, 0x10
/* 803A8E08  4E 80 00 20 */	blr 
