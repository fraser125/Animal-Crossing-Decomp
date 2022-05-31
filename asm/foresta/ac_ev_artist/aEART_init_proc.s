lbl_80519AA0:
/* 80519AA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80519AA4  7C 08 02 A6 */	mflr r0
/* 80519AA8  3C C0 80 6A */	lis r6, init_proc@ha /* 0x8069FFE8@ha */
/* 80519AAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80519AB0  54 A0 10 3A */	slwi r0, r5, 2
/* 80519AB4  38 A6 FF E8 */	addi r5, r6, init_proc@l /* 0x8069FFE8@l */
/* 80519AB8  7D 85 00 2E */	lwzx r12, r5, r0
/* 80519ABC  7D 89 03 A6 */	mtctr r12
/* 80519AC0  4E 80 04 21 */	bctrl 
/* 80519AC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80519AC8  7C 08 03 A6 */	mtlr r0
/* 80519ACC  38 21 00 10 */	addi r1, r1, 0x10
/* 80519AD0  4E 80 00 20 */	blr 
