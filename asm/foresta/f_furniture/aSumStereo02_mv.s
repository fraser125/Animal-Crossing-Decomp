lbl_8063AD48:
/* 8063AD48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063AD4C  7C 08 02 A6 */	mflr r0
/* 8063AD50  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 8063AD54  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 8063AD58  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063AD5C  3C C6 00 02 */	addis r6, r6, 2
/* 8063AD60  80 E6 60 8C */	lwz r7, 0x608c(r6)
/* 8063AD64  28 07 00 00 */	cmplwi r7, 0
/* 8063AD68  41 82 00 1C */	beq lbl_8063AD84
/* 8063AD6C  3C C0 80 65 */	lis r6, lit_368@ha /* 0x8064D278@ha */
/* 8063AD70  81 87 00 3C */	lwz r12, 0x3c(r7)
/* 8063AD74  C0 26 D2 78 */	lfs f1, lit_368@l(r6)  /* 0x8064D278@l */
/* 8063AD78  FC 40 08 90 */	fmr f2, f1
/* 8063AD7C  7D 89 03 A6 */	mtctr r12
/* 8063AD80  4E 80 04 21 */	bctrl 
lbl_8063AD84:
/* 8063AD84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063AD88  7C 08 03 A6 */	mtlr r0
/* 8063AD8C  38 21 00 10 */	addi r1, r1, 0x10
/* 8063AD90  4E 80 00 20 */	blr 
