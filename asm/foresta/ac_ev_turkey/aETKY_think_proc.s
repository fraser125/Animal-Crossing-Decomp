lbl_80593654:
/* 80593654  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80593658  7C 08 02 A6 */	mflr r0
/* 8059365C  3C C0 80 6C */	lis r6, think_proc@ha /* 0x806C2B10@ha */
/* 80593660  90 01 00 14 */	stw r0, 0x14(r1)
/* 80593664  54 A0 17 7A */	rlwinm r0, r5, 2, 0x1d, 0x1d
/* 80593668  38 A6 2B 10 */	addi r5, r6, think_proc@l /* 0x806C2B10@l */
/* 8059366C  7D 85 00 2E */	lwzx r12, r5, r0
/* 80593670  7D 89 03 A6 */	mtctr r12
/* 80593674  4E 80 04 21 */	bctrl 
/* 80593678  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059367C  7C 08 03 A6 */	mtlr r0
/* 80593680  38 21 00 10 */	addi r1, r1, 0x10
/* 80593684  4E 80 00 20 */	blr 
