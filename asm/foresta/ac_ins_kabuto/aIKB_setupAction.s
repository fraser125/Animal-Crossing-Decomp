lbl_8059D02C:
/* 8059D02C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059D030  7C 08 02 A6 */	mflr r0
/* 8059D034  3C C0 80 6C */	lis r6, act_proc@ha /* 0x806C34D4@ha */
/* 8059D038  54 87 10 3A */	slwi r7, r4, 2
/* 8059D03C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059D040  38 C6 34 D4 */	addi r6, r6, act_proc@l /* 0x806C34D4@l */
/* 8059D044  90 83 01 D8 */	stw r4, 0x1d8(r3)
/* 8059D048  3C 80 80 6C */	lis r4, init_proc@ha /* 0x806C34C8@ha */
/* 8059D04C  7C 06 38 2E */	lwzx r0, r6, r7
/* 8059D050  38 C4 34 C8 */	addi r6, r4, init_proc@l /* 0x806C34C8@l */
/* 8059D054  7C A4 2B 78 */	mr r4, r5
/* 8059D058  90 03 01 DC */	stw r0, 0x1dc(r3)
/* 8059D05C  7D 86 38 2E */	lwzx r12, r6, r7
/* 8059D060  7D 89 03 A6 */	mtctr r12
/* 8059D064  4E 80 04 21 */	bctrl 
/* 8059D068  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059D06C  7C 08 03 A6 */	mtlr r0
/* 8059D070  38 21 00 10 */	addi r1, r1, 0x10
/* 8059D074  4E 80 00 20 */	blr 
