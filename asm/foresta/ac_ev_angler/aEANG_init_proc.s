lbl_80519044:
/* 80519044  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80519048  7C 08 02 A6 */	mflr r0
/* 8051904C  3C C0 80 6A */	lis r6, init_proc@ha /* 0x8069FF30@ha */
/* 80519050  90 01 00 14 */	stw r0, 0x14(r1)
/* 80519054  54 A0 10 3A */	slwi r0, r5, 2
/* 80519058  38 A6 FF 30 */	addi r5, r6, init_proc@l /* 0x8069FF30@l */
/* 8051905C  7D 85 00 2E */	lwzx r12, r5, r0
/* 80519060  7D 89 03 A6 */	mtctr r12
/* 80519064  4E 80 04 21 */	bctrl 
/* 80519068  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051906C  7C 08 03 A6 */	mtlr r0
/* 80519070  38 21 00 10 */	addi r1, r1, 0x10
/* 80519074  4E 80 00 20 */	blr 
