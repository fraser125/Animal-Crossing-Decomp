lbl_80636A8C:
/* 80636A8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80636A90  7C 08 02 A6 */	mflr r0
/* 80636A94  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 80636A98  3C E0 80 65 */	lis r7, lit_368@ha /* 0x8064D278@ha */
/* 80636A9C  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 80636AA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80636AA4  3C C6 00 02 */	addis r6, r6, 2
/* 80636AA8  C0 27 D2 78 */	lfs f1, lit_368@l(r7)  /* 0x8064D278@l */
/* 80636AAC  80 C6 60 8C */	lwz r6, 0x608c(r6)
/* 80636AB0  FC 40 08 90 */	fmr f2, f1
/* 80636AB4  81 86 00 3C */	lwz r12, 0x3c(r6)
/* 80636AB8  7D 89 03 A6 */	mtctr r12
/* 80636ABC  4E 80 04 21 */	bctrl 
/* 80636AC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80636AC4  7C 08 03 A6 */	mtlr r0
/* 80636AC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80636ACC  4E 80 00 20 */	blr 
