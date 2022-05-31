lbl_805EB42C:
/* 805EB42C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EB430  7C 08 02 A6 */	mflr r0
/* 805EB434  3C A0 80 6D */	lis r5, move_proc@ha /* 0x806CE2EC@ha */
/* 805EB438  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EB43C  38 C5 E2 EC */	addi r6, r5, move_proc@l /* 0x806CE2EC@l */
/* 805EB440  80 E3 00 2C */	lwz r7, 0x2c(r3)
/* 805EB444  80 A7 09 B8 */	lwz r5, 0x9b8(r7)
/* 805EB448  88 05 00 00 */	lbz r0, 0(r5)
/* 805EB44C  54 00 10 3A */	slwi r0, r0, 2
/* 805EB450  7D 86 00 2E */	lwzx r12, r6, r0
/* 805EB454  7D 89 03 A6 */	mtctr r12
/* 805EB458  4E 80 04 21 */	bctrl 
/* 805EB45C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EB460  7C 08 03 A6 */	mtlr r0
/* 805EB464  38 21 00 10 */	addi r1, r1, 0x10
/* 805EB468  4E 80 00 20 */	blr 
