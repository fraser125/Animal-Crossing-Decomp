lbl_8051A588:
/* 8051A588  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051A58C  7C 08 02 A6 */	mflr r0
/* 8051A590  3C C0 80 6A */	lis r6, sche_proc@ha /* 0x806A00A4@ha */
/* 8051A594  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051A598  54 A0 10 3A */	slwi r0, r5, 2
/* 8051A59C  38 A6 00 A4 */	addi r5, r6, sche_proc@l /* 0x806A00A4@l */
/* 8051A5A0  7D 85 00 2E */	lwzx r12, r5, r0
/* 8051A5A4  7D 89 03 A6 */	mtctr r12
/* 8051A5A8  4E 80 04 21 */	bctrl 
/* 8051A5AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051A5B0  7C 08 03 A6 */	mtlr r0
/* 8051A5B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8051A5B8  4E 80 00 20 */	blr 
