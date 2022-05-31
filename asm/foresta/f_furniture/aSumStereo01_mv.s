lbl_8063ACF0:
/* 8063ACF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063ACF4  7C 08 02 A6 */	mflr r0
/* 8063ACF8  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 8063ACFC  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 8063AD00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063AD04  3C C6 00 02 */	addis r6, r6, 2
/* 8063AD08  80 E6 60 8C */	lwz r7, 0x608c(r6)
/* 8063AD0C  28 07 00 00 */	cmplwi r7, 0
/* 8063AD10  41 82 00 1C */	beq lbl_8063AD2C
/* 8063AD14  3C C0 80 65 */	lis r6, lit_368@ha /* 0x8064D278@ha */
/* 8063AD18  81 87 00 3C */	lwz r12, 0x3c(r7)
/* 8063AD1C  C0 26 D2 78 */	lfs f1, lit_368@l(r6)  /* 0x8064D278@l */
/* 8063AD20  FC 40 08 90 */	fmr f2, f1
/* 8063AD24  7D 89 03 A6 */	mtctr r12
/* 8063AD28  4E 80 04 21 */	bctrl 
lbl_8063AD2C:
/* 8063AD2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063AD30  7C 08 03 A6 */	mtlr r0
/* 8063AD34  38 21 00 10 */	addi r1, r1, 0x10
/* 8063AD38  4E 80 00 20 */	blr 
