lbl_80567298:
/* 80567298  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056729C  7C 08 02 A6 */	mflr r0
/* 805672A0  3C C0 80 6C */	lis r6, think_proc@ha /* 0x806BE3F8@ha */
/* 805672A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805672A8  54 A0 10 3A */	slwi r0, r5, 2
/* 805672AC  38 A6 E3 F8 */	addi r5, r6, think_proc@l /* 0x806BE3F8@l */
/* 805672B0  7D 85 00 2E */	lwzx r12, r5, r0
/* 805672B4  7D 89 03 A6 */	mtctr r12
/* 805672B8  4E 80 04 21 */	bctrl 
/* 805672BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805672C0  7C 08 03 A6 */	mtlr r0
/* 805672C4  38 21 00 10 */	addi r1, r1, 0x10
/* 805672C8  4E 80 00 20 */	blr 
