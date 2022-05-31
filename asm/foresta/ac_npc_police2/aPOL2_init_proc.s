lbl_8056C0CC:
/* 8056C0CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056C0D0  7C 08 02 A6 */	mflr r0
/* 8056C0D4  3C A0 80 6C */	lis r5, init_proc@ha /* 0x806BE8F4@ha */
/* 8056C0D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056C0DC  54 80 10 3A */	slwi r0, r4, 2
/* 8056C0E0  38 85 E8 F4 */	addi r4, r5, init_proc@l /* 0x806BE8F4@l */
/* 8056C0E4  7D 84 00 2E */	lwzx r12, r4, r0
/* 8056C0E8  7D 89 03 A6 */	mtctr r12
/* 8056C0EC  4E 80 04 21 */	bctrl 
/* 8056C0F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056C0F4  7C 08 03 A6 */	mtlr r0
/* 8056C0F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8056C0FC  4E 80 00 20 */	blr 
