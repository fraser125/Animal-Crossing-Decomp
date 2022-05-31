lbl_805A1B8C:
/* 805A1B8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A1B90  7C 08 02 A6 */	mflr r0
/* 805A1B94  3C C0 80 6C */	lis r6, act_proc@ha /* 0x806C36B0@ha */
/* 805A1B98  54 87 10 3A */	slwi r7, r4, 2
/* 805A1B9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A1BA0  38 C6 36 B0 */	addi r6, r6, act_proc@l /* 0x806C36B0@l */
/* 805A1BA4  90 83 01 D8 */	stw r4, 0x1d8(r3)
/* 805A1BA8  3C 80 80 6C */	lis r4, init_proc@ha /* 0x806C3688@ha */
/* 805A1BAC  7C 06 38 2E */	lwzx r0, r6, r7
/* 805A1BB0  38 C4 36 88 */	addi r6, r4, init_proc@l /* 0x806C3688@l */
/* 805A1BB4  7C A4 2B 78 */	mr r4, r5
/* 805A1BB8  90 03 01 DC */	stw r0, 0x1dc(r3)
/* 805A1BBC  7D 86 38 2E */	lwzx r12, r6, r7
/* 805A1BC0  7D 89 03 A6 */	mtctr r12
/* 805A1BC4  4E 80 04 21 */	bctrl 
/* 805A1BC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A1BCC  7C 08 03 A6 */	mtlr r0
/* 805A1BD0  38 21 00 10 */	addi r1, r1, 0x10
/* 805A1BD4  4E 80 00 20 */	blr 
