lbl_80567398:
/* 80567398  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056739C  7C 08 02 A6 */	mflr r0
/* 805673A0  3C C0 80 6C */	lis r6, sche_proc@ha /* 0x806BE400@ha */
/* 805673A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805673A8  54 A0 10 3A */	slwi r0, r5, 2
/* 805673AC  38 A6 E4 00 */	addi r5, r6, sche_proc@l /* 0x806BE400@l */
/* 805673B0  7D 85 00 2E */	lwzx r12, r5, r0
/* 805673B4  7D 89 03 A6 */	mtctr r12
/* 805673B8  4E 80 04 21 */	bctrl 
/* 805673BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805673C0  7C 08 03 A6 */	mtlr r0
/* 805673C4  38 21 00 10 */	addi r1, r1, 0x10
/* 805673C8  4E 80 00 20 */	blr 
