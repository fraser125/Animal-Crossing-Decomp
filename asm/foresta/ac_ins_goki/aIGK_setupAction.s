lbl_8059A720:
/* 8059A720  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059A724  7C 08 02 A6 */	mflr r0
/* 8059A728  3C C0 80 6C */	lis r6, act_proc@ha /* 0x806C3340@ha */
/* 8059A72C  54 87 10 3A */	slwi r7, r4, 2
/* 8059A730  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059A734  38 C6 33 40 */	addi r6, r6, act_proc@l /* 0x806C3340@l */
/* 8059A738  90 83 01 D8 */	stw r4, 0x1d8(r3)
/* 8059A73C  3C 80 80 6C */	lis r4, init_proc@ha /* 0x806C3320@ha */
/* 8059A740  7C 06 38 2E */	lwzx r0, r6, r7
/* 8059A744  38 C4 33 20 */	addi r6, r4, init_proc@l /* 0x806C3320@l */
/* 8059A748  7C A4 2B 78 */	mr r4, r5
/* 8059A74C  90 03 01 DC */	stw r0, 0x1dc(r3)
/* 8059A750  7D 86 38 2E */	lwzx r12, r6, r7
/* 8059A754  7D 89 03 A6 */	mtctr r12
/* 8059A758  4E 80 04 21 */	bctrl 
/* 8059A75C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059A760  7C 08 03 A6 */	mtlr r0
/* 8059A764  38 21 00 10 */	addi r1, r1, 0x10
/* 8059A768  4E 80 00 20 */	blr 
