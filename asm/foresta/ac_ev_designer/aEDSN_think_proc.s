lbl_8051DDA0:
/* 8051DDA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051DDA4  7C 08 02 A6 */	mflr r0
/* 8051DDA8  3C C0 80 6A */	lis r6, think_proc@ha /* 0x806A04B8@ha */
/* 8051DDAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051DDB0  54 A0 10 3A */	slwi r0, r5, 2
/* 8051DDB4  38 A6 04 B8 */	addi r5, r6, think_proc@l /* 0x806A04B8@l */
/* 8051DDB8  7D 85 00 2E */	lwzx r12, r5, r0
/* 8051DDBC  7D 89 03 A6 */	mtctr r12
/* 8051DDC0  4E 80 04 21 */	bctrl 
/* 8051DDC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051DDC8  7C 08 03 A6 */	mtlr r0
/* 8051DDCC  38 21 00 10 */	addi r1, r1, 0x10
/* 8051DDD0  4E 80 00 20 */	blr 
