lbl_805974C4:
/* 805974C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805974C8  7C 08 02 A6 */	mflr r0
/* 805974CC  3C C0 80 6C */	lis r6, act_proc@ha /* 0x806C319C@ha */
/* 805974D0  54 87 10 3A */	slwi r7, r4, 2
/* 805974D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805974D8  38 C6 31 9C */	addi r6, r6, act_proc@l /* 0x806C319C@l */
/* 805974DC  90 83 01 D8 */	stw r4, 0x1d8(r3)
/* 805974E0  3C 80 80 6C */	lis r4, init_proc@ha /* 0x806C3184@ha */
/* 805974E4  7C 06 38 2E */	lwzx r0, r6, r7
/* 805974E8  38 C4 31 84 */	addi r6, r4, init_proc@l /* 0x806C3184@l */
/* 805974EC  7C A4 2B 78 */	mr r4, r5
/* 805974F0  90 03 01 DC */	stw r0, 0x1dc(r3)
/* 805974F4  7D 86 38 2E */	lwzx r12, r6, r7
/* 805974F8  7D 89 03 A6 */	mtctr r12
/* 805974FC  4E 80 04 21 */	bctrl 
/* 80597500  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80597504  7C 08 03 A6 */	mtlr r0
/* 80597508  38 21 00 10 */	addi r1, r1, 0x10
/* 8059750C  4E 80 00 20 */	blr 
