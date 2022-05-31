lbl_8059F874:
/* 8059F874  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059F878  7C 08 02 A6 */	mflr r0
/* 8059F87C  3C C0 80 6C */	lis r6, act_proc@ha /* 0x806C3600@ha */
/* 8059F880  54 87 10 3A */	slwi r7, r4, 2
/* 8059F884  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059F888  38 C6 36 00 */	addi r6, r6, act_proc@l /* 0x806C3600@l */
/* 8059F88C  90 83 01 D8 */	stw r4, 0x1d8(r3)
/* 8059F890  3C 80 80 6C */	lis r4, init_proc@ha /* 0x806C35F4@ha */
/* 8059F894  7C 06 38 2E */	lwzx r0, r6, r7
/* 8059F898  38 C4 35 F4 */	addi r6, r4, init_proc@l /* 0x806C35F4@l */
/* 8059F89C  7C A4 2B 78 */	mr r4, r5
/* 8059F8A0  90 03 01 DC */	stw r0, 0x1dc(r3)
/* 8059F8A4  7D 86 38 2E */	lwzx r12, r6, r7
/* 8059F8A8  7D 89 03 A6 */	mtctr r12
/* 8059F8AC  4E 80 04 21 */	bctrl 
/* 8059F8B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059F8B4  7C 08 03 A6 */	mtlr r0
/* 8059F8B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8059F8BC  4E 80 00 20 */	blr 
