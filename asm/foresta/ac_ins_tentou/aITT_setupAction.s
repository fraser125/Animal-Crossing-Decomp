lbl_805A0424:
/* 805A0424  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A0428  7C 08 02 A6 */	mflr r0
/* 805A042C  3C C0 80 6C */	lis r6, act_proc@ha /* 0x806C3668@ha */
/* 805A0430  54 87 10 3A */	slwi r7, r4, 2
/* 805A0434  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A0438  38 C6 36 68 */	addi r6, r6, act_proc@l /* 0x806C3668@l */
/* 805A043C  90 83 01 D8 */	stw r4, 0x1d8(r3)
/* 805A0440  3C 80 80 6C */	lis r4, init_proc@ha /* 0x806C3650@ha */
/* 805A0444  7C 06 38 2E */	lwzx r0, r6, r7
/* 805A0448  38 C4 36 50 */	addi r6, r4, init_proc@l /* 0x806C3650@l */
/* 805A044C  7C A4 2B 78 */	mr r4, r5
/* 805A0450  90 03 01 DC */	stw r0, 0x1dc(r3)
/* 805A0454  7D 86 38 2E */	lwzx r12, r6, r7
/* 805A0458  7D 89 03 A6 */	mtctr r12
/* 805A045C  4E 80 04 21 */	bctrl 
/* 805A0460  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A0464  7C 08 03 A6 */	mtlr r0
/* 805A0468  38 21 00 10 */	addi r1, r1, 0x10
/* 805A046C  4E 80 00 20 */	blr 
