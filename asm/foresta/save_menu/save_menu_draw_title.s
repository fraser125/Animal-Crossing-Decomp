lbl_8062CCD0:
/* 8062CCD0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8062CCD4  7C 08 02 A6 */	mflr r0
/* 8062CCD8  3C 80 80 65 */	lis r4, lit_465@ha /* 0x8064D190@ha */
/* 8062CCDC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8062CCE0  38 A4 D1 90 */	addi r5, r4, lit_465@l /* 0x8064D190@l */
/* 8062CCE4  38 80 00 01 */	li r4, 1
/* 8062CCE8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8062CCEC  7C 7F 1B 78 */	mr r31, r3
/* 8062CCF0  80 65 00 00 */	lwz r3, 0(r5)
/* 8062CCF4  80 05 00 04 */	lwz r0, 4(r5)
/* 8062CCF8  90 61 00 18 */	stw r3, 0x18(r1)
/* 8062CCFC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8062CD00  80 7F 00 00 */	lwz r3, 0(r31)
/* 8062CD04  4B D8 34 35 */	bl mFont_SetMatrix
/* 8062CD08  38 A0 00 01 */	li r5, 1
/* 8062CD0C  3C 60 80 65 */	lis r3, lit_469@ha /* 0x8064D1A0@ha */
/* 8062CD10  90 A1 00 08 */	stw r5, 8(r1)
/* 8062CD14  38 00 00 00 */	li r0, 0
/* 8062CD18  C0 63 D1 A0 */	lfs f3, lit_469@l(r3)  /* 0x8064D1A0@l */
/* 8062CD1C  3C 80 80 65 */	lis r4, lit_467@ha /* 0x8064D198@ha */
/* 8062CD20  90 01 00 0C */	stw r0, 0xc(r1)
/* 8062CD24  3C 60 80 65 */	lis r3, lit_468@ha /* 0x8064D19C@ha */
/* 8062CD28  FC 80 18 90 */	fmr f4, f3
/* 8062CD2C  C0 24 D1 98 */	lfs f1, lit_467@l(r4)  /* 0x8064D198@l */
/* 8062CD30  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8062CD34  38 81 00 18 */	addi r4, r1, 0x18
/* 8062CD38  C0 43 D1 9C */	lfs f2, lit_468@l(r3)  /* 0x8064D19C@l */
/* 8062CD3C  7F E3 FB 78 */	mr r3, r31
/* 8062CD40  38 A0 00 08 */	li r5, 8
/* 8062CD44  38 C0 00 C8 */	li r6, 0xc8
/* 8062CD48  38 E0 00 32 */	li r7, 0x32
/* 8062CD4C  39 00 00 32 */	li r8, 0x32
/* 8062CD50  39 20 00 FF */	li r9, 0xff
/* 8062CD54  39 40 00 00 */	li r10, 0
/* 8062CD58  4B D8 33 19 */	bl mFont_SetLineStrings_AndSpace
/* 8062CD5C  80 7F 00 00 */	lwz r3, 0(r31)
/* 8062CD60  38 80 00 01 */	li r4, 1
/* 8062CD64  4B D8 34 D5 */	bl mFont_UnSetMatrix
/* 8062CD68  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8062CD6C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8062CD70  7C 08 03 A6 */	mtlr r0
/* 8062CD74  38 21 00 30 */	addi r1, r1, 0x30
/* 8062CD78  4E 80 00 20 */	blr 
