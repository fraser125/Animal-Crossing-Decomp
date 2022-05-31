lbl_8062CEFC:
/* 8062CEFC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8062CF00  7C 08 02 A6 */	mflr r0
/* 8062CF04  3C 80 80 65 */	lis r4, lit_488@ha /* 0x8064D1D8@ha */
/* 8062CF08  90 01 00 44 */	stw r0, 0x44(r1)
/* 8062CF0C  38 84 D1 D8 */	addi r4, r4, lit_488@l /* 0x8064D1D8@l */
/* 8062CF10  38 00 00 02 */	li r0, 2
/* 8062CF14  38 C1 00 14 */	addi r6, r1, 0x14
/* 8062CF18  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8062CF1C  7C 7F 1B 78 */	mr r31, r3
/* 8062CF20  38 A4 FF FC */	addi r5, r4, -4
/* 8062CF24  7C 09 03 A6 */	mtctr r0
lbl_8062CF28:
/* 8062CF28  80 65 00 04 */	lwz r3, 4(r5)
/* 8062CF2C  84 05 00 08 */	lwzu r0, 8(r5)
/* 8062CF30  90 66 00 04 */	stw r3, 4(r6)
/* 8062CF34  94 06 00 08 */	stwu r0, 8(r6)
/* 8062CF38  42 00 FF F0 */	bdnz lbl_8062CF28
/* 8062CF3C  80 65 00 04 */	lwz r3, 4(r5)
/* 8062CF40  38 80 00 01 */	li r4, 1
/* 8062CF44  88 05 00 08 */	lbz r0, 8(r5)
/* 8062CF48  90 66 00 04 */	stw r3, 4(r6)
/* 8062CF4C  98 06 00 08 */	stb r0, 8(r6)
/* 8062CF50  80 7F 00 00 */	lwz r3, 0(r31)
/* 8062CF54  4B D8 31 E5 */	bl mFont_SetMatrix
/* 8062CF58  38 A0 00 01 */	li r5, 1
/* 8062CF5C  3C 60 80 65 */	lis r3, lit_477@ha /* 0x8064D1BC@ha */
/* 8062CF60  90 A1 00 08 */	stw r5, 8(r1)
/* 8062CF64  38 00 00 00 */	li r0, 0
/* 8062CF68  C0 63 D1 BC */	lfs f3, lit_477@l(r3)  /* 0x8064D1BC@l */
/* 8062CF6C  3C 80 80 65 */	lis r4, lit_490@ha /* 0x8064D1F0@ha */
/* 8062CF70  90 01 00 0C */	stw r0, 0xc(r1)
/* 8062CF74  3C 60 80 65 */	lis r3, lit_491@ha /* 0x8064D1F4@ha */
/* 8062CF78  FC 80 18 90 */	fmr f4, f3
/* 8062CF7C  C0 24 D1 F0 */	lfs f1, lit_490@l(r4)  /* 0x8064D1F0@l */
/* 8062CF80  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8062CF84  38 81 00 18 */	addi r4, r1, 0x18
/* 8062CF88  C0 43 D1 F4 */	lfs f2, lit_491@l(r3)  /* 0x8064D1F4@l */
/* 8062CF8C  7F E3 FB 78 */	mr r3, r31
/* 8062CF90  38 A0 00 15 */	li r5, 0x15
/* 8062CF94  38 C0 00 C8 */	li r6, 0xc8
/* 8062CF98  38 E0 00 C8 */	li r7, 0xc8
/* 8062CF9C  39 00 00 C8 */	li r8, 0xc8
/* 8062CFA0  39 20 00 FF */	li r9, 0xff
/* 8062CFA4  39 40 00 00 */	li r10, 0
/* 8062CFA8  4B D8 30 C9 */	bl mFont_SetLineStrings_AndSpace
/* 8062CFAC  80 7F 00 00 */	lwz r3, 0(r31)
/* 8062CFB0  38 80 00 01 */	li r4, 1
/* 8062CFB4  4B D8 32 85 */	bl mFont_UnSetMatrix
/* 8062CFB8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8062CFBC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8062CFC0  7C 08 03 A6 */	mtlr r0
/* 8062CFC4  38 21 00 40 */	addi r1, r1, 0x40
/* 8062CFC8  4E 80 00 20 */	blr 
