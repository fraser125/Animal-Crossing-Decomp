lbl_805906B0:
/* 805906B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805906B4  7C 08 02 A6 */	mflr r0
/* 805906B8  3C C0 80 6C */	lis r6, sche_proc@ha /* 0x806C27AC@ha */
/* 805906BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805906C0  54 A0 10 3A */	slwi r0, r5, 2
/* 805906C4  38 A6 27 AC */	addi r5, r6, sche_proc@l /* 0x806C27AC@l */
/* 805906C8  7D 85 00 2E */	lwzx r12, r5, r0
/* 805906CC  7D 89 03 A6 */	mtctr r12
/* 805906D0  4E 80 04 21 */	bctrl 
/* 805906D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805906D8  7C 08 03 A6 */	mtlr r0
/* 805906DC  38 21 00 10 */	addi r1, r1, 0x10
/* 805906E0  4E 80 00 20 */	blr 
