lbl_805383D0:
/* 805383D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805383D4  7C 08 02 A6 */	mflr r0
/* 805383D8  3C C0 80 6A */	lis r6, sche_proc_4412@ha /* 0x806A2990@ha */
/* 805383DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805383E0  54 A0 10 3A */	slwi r0, r5, 2
/* 805383E4  38 A6 29 90 */	addi r5, r6, sche_proc_4412@l /* 0x806A2990@l */
/* 805383E8  7D 85 00 2E */	lwzx r12, r5, r0
/* 805383EC  7D 89 03 A6 */	mtctr r12
/* 805383F0  4E 80 04 21 */	bctrl 
/* 805383F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805383F8  7C 08 03 A6 */	mtlr r0
/* 805383FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80538400  4E 80 00 20 */	blr 