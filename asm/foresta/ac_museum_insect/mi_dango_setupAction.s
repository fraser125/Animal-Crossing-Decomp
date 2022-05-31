lbl_8046D01C:
/* 8046D01C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046D020  7C 08 02 A6 */	mflr r0
/* 8046D024  3C C0 80 68 */	lis r6, init_proc_4509@ha /* 0x80686DCC@ha */
/* 8046D028  3C E0 80 68 */	lis r7, move_proc_4510@ha /* 0x80686DD4@ha */
/* 8046D02C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046D030  54 88 10 3A */	slwi r8, r4, 2
/* 8046D034  38 87 6D D4 */	addi r4, r7, move_proc_4510@l /* 0x80686DD4@l */
/* 8046D038  38 C6 6D CC */	addi r6, r6, init_proc_4509@l /* 0x80686DCC@l */
/* 8046D03C  7C 04 40 2E */	lwzx r0, r4, r8
/* 8046D040  7C A4 2B 78 */	mr r4, r5
/* 8046D044  90 03 00 04 */	stw r0, 4(r3)
/* 8046D048  7D 86 40 2E */	lwzx r12, r6, r8
/* 8046D04C  7D 89 03 A6 */	mtctr r12
/* 8046D050  4E 80 04 21 */	bctrl 
/* 8046D054  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046D058  7C 08 03 A6 */	mtlr r0
/* 8046D05C  38 21 00 10 */	addi r1, r1, 0x10
/* 8046D060  4E 80 00 20 */	blr 
