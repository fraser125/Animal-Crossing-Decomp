lbl_8059EFEC:
/* 8059EFEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059EFF0  7C 08 02 A6 */	mflr r0
/* 8059EFF4  3C C0 80 6C */	lis r6, act_proc@ha /* 0x806C35B0@ha */
/* 8059EFF8  54 87 10 3A */	slwi r7, r4, 2
/* 8059EFFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059F000  38 C6 35 B0 */	addi r6, r6, act_proc@l /* 0x806C35B0@l */
/* 8059F004  90 83 01 D8 */	stw r4, 0x1d8(r3)
/* 8059F008  3C 80 80 6C */	lis r4, init_proc@ha /* 0x806C3588@ha */
/* 8059F00C  7C 06 38 2E */	lwzx r0, r6, r7
/* 8059F010  38 C4 35 88 */	addi r6, r4, init_proc@l /* 0x806C3588@l */
/* 8059F014  7C A4 2B 78 */	mr r4, r5
/* 8059F018  90 03 01 DC */	stw r0, 0x1dc(r3)
/* 8059F01C  7D 86 38 2E */	lwzx r12, r6, r7
/* 8059F020  7D 89 03 A6 */	mtctr r12
/* 8059F024  4E 80 04 21 */	bctrl 
/* 8059F028  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059F02C  7C 08 03 A6 */	mtlr r0
/* 8059F030  38 21 00 10 */	addi r1, r1, 0x10
/* 8059F034  4E 80 00 20 */	blr 
