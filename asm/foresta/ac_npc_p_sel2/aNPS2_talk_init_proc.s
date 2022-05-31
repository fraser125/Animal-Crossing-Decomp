lbl_80569D94:
/* 80569D94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80569D98  7C 08 02 A6 */	mflr r0
/* 80569D9C  3C C0 80 6C */	lis r6, init_proc@ha /* 0x806BE660@ha */
/* 80569DA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80569DA4  54 A0 10 3A */	slwi r0, r5, 2
/* 80569DA8  38 A6 E6 60 */	addi r5, r6, init_proc@l /* 0x806BE660@l */
/* 80569DAC  7D 85 00 2E */	lwzx r12, r5, r0
/* 80569DB0  7D 89 03 A6 */	mtctr r12
/* 80569DB4  4E 80 04 21 */	bctrl 
/* 80569DB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80569DBC  7C 08 03 A6 */	mtlr r0
/* 80569DC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80569DC4  4E 80 00 20 */	blr 
