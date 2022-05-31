lbl_8056FED4:
/* 8056FED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056FED8  7C 08 02 A6 */	mflr r0
/* 8056FEDC  3C C0 80 6C */	lis r6, sche_proc@ha /* 0x806BEF1C@ha */
/* 8056FEE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056FEE4  54 A0 10 3A */	slwi r0, r5, 2
/* 8056FEE8  38 A6 EF 1C */	addi r5, r6, sche_proc@l /* 0x806BEF1C@l */
/* 8056FEEC  7D 85 00 2E */	lwzx r12, r5, r0
/* 8056FEF0  7D 89 03 A6 */	mtctr r12
/* 8056FEF4  4E 80 04 21 */	bctrl 
/* 8056FEF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056FEFC  7C 08 03 A6 */	mtlr r0
/* 8056FF00  38 21 00 10 */	addi r1, r1, 0x10
/* 8056FF04  4E 80 00 20 */	blr 
