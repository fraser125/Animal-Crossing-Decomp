lbl_805736C8:
/* 805736C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805736CC  7C 08 02 A6 */	mflr r0
/* 805736D0  3C C0 80 6C */	lis r6, sche_proc@ha /* 0x806BF5C4@ha */
/* 805736D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805736D8  54 A0 10 3A */	slwi r0, r5, 2
/* 805736DC  38 A6 F5 C4 */	addi r5, r6, sche_proc@l /* 0x806BF5C4@l */
/* 805736E0  7D 85 00 2E */	lwzx r12, r5, r0
/* 805736E4  7D 89 03 A6 */	mtctr r12
/* 805736E8  4E 80 04 21 */	bctrl 
/* 805736EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805736F0  7C 08 03 A6 */	mtlr r0
/* 805736F4  38 21 00 10 */	addi r1, r1, 0x10
/* 805736F8  4E 80 00 20 */	blr 
