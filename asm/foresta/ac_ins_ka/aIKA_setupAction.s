lbl_8059C7C0:
/* 8059C7C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059C7C4  7C 08 02 A6 */	mflr r0
/* 8059C7C8  3C C0 80 6C */	lis r6, act_proc@ha /* 0x806C3468@ha */
/* 8059C7CC  54 87 10 3A */	slwi r7, r4, 2
/* 8059C7D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059C7D4  38 C6 34 68 */	addi r6, r6, act_proc@l /* 0x806C3468@l */
/* 8059C7D8  90 83 01 D8 */	stw r4, 0x1d8(r3)
/* 8059C7DC  3C 80 80 6C */	lis r4, data_806C3450@ha /* 0x806C3450@ha */
/* 8059C7E0  7C 06 38 2E */	lwzx r0, r6, r7
/* 8059C7E4  38 C4 34 50 */	addi r6, r4, data_806C3450@l /* 0x806C3450@l */
/* 8059C7E8  7C A4 2B 78 */	mr r4, r5
/* 8059C7EC  90 03 01 DC */	stw r0, 0x1dc(r3)
/* 8059C7F0  7D 86 38 2E */	lwzx r12, r6, r7
/* 8059C7F4  7D 89 03 A6 */	mtctr r12
/* 8059C7F8  4E 80 04 21 */	bctrl 
/* 8059C7FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059C800  7C 08 03 A6 */	mtlr r0
/* 8059C804  38 21 00 10 */	addi r1, r1, 0x10
/* 8059C808  4E 80 00 20 */	blr 
