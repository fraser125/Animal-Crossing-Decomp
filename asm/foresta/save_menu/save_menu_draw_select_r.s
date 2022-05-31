lbl_8062CE38:
/* 8062CE38  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8062CE3C  7C 08 02 A6 */	mflr r0
/* 8062CE40  3C 80 80 65 */	lis r4, lit_481@ha /* 0x8064D1C0@ha */
/* 8062CE44  90 01 00 34 */	stw r0, 0x34(r1)
/* 8062CE48  39 04 D1 C0 */	addi r8, r4, lit_481@l /* 0x8064D1C0@l */
/* 8062CE4C  38 80 00 01 */	li r4, 1
/* 8062CE50  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8062CE54  7C 7F 1B 78 */	mr r31, r3
/* 8062CE58  80 E8 00 00 */	lwz r7, 0(r8)
/* 8062CE5C  80 C8 00 04 */	lwz r6, 4(r8)
/* 8062CE60  80 A8 00 08 */	lwz r5, 8(r8)
/* 8062CE64  A0 68 00 0C */	lhz r3, 0xc(r8)
/* 8062CE68  88 08 00 0E */	lbz r0, 0xe(r8)
/* 8062CE6C  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8062CE70  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 8062CE74  90 A1 00 20 */	stw r5, 0x20(r1)
/* 8062CE78  B0 61 00 24 */	sth r3, 0x24(r1)
/* 8062CE7C  98 01 00 26 */	stb r0, 0x26(r1)
/* 8062CE80  80 7F 00 00 */	lwz r3, 0(r31)
/* 8062CE84  4B D8 32 B5 */	bl mFont_SetMatrix
/* 8062CE88  38 A0 00 01 */	li r5, 1
/* 8062CE8C  3C 60 80 65 */	lis r3, lit_477@ha /* 0x8064D1BC@ha */
/* 8062CE90  90 A1 00 08 */	stw r5, 8(r1)
/* 8062CE94  38 00 00 00 */	li r0, 0
/* 8062CE98  C0 63 D1 BC */	lfs f3, lit_477@l(r3)  /* 0x8064D1BC@l */
/* 8062CE9C  3C 80 80 65 */	lis r4, lit_483@ha /* 0x8064D1D0@ha */
/* 8062CEA0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8062CEA4  3C 60 80 65 */	lis r3, lit_484@ha /* 0x8064D1D4@ha */
/* 8062CEA8  FC 80 18 90 */	fmr f4, f3
/* 8062CEAC  C0 24 D1 D0 */	lfs f1, lit_483@l(r4)  /* 0x8064D1D0@l */
/* 8062CEB0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8062CEB4  38 81 00 18 */	addi r4, r1, 0x18
/* 8062CEB8  C0 43 D1 D4 */	lfs f2, lit_484@l(r3)  /* 0x8064D1D4@l */
/* 8062CEBC  7F E3 FB 78 */	mr r3, r31
/* 8062CEC0  38 A0 00 0F */	li r5, 0xf
/* 8062CEC4  38 C0 00 C8 */	li r6, 0xc8
/* 8062CEC8  38 E0 00 C8 */	li r7, 0xc8
/* 8062CECC  39 00 00 C8 */	li r8, 0xc8
/* 8062CED0  39 20 00 FF */	li r9, 0xff
/* 8062CED4  39 40 00 00 */	li r10, 0
/* 8062CED8  4B D8 31 99 */	bl mFont_SetLineStrings_AndSpace
/* 8062CEDC  80 7F 00 00 */	lwz r3, 0(r31)
/* 8062CEE0  38 80 00 01 */	li r4, 1
/* 8062CEE4  4B D8 33 55 */	bl mFont_UnSetMatrix
/* 8062CEE8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8062CEEC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8062CEF0  7C 08 03 A6 */	mtlr r0
/* 8062CEF4  38 21 00 30 */	addi r1, r1, 0x30
/* 8062CEF8  4E 80 00 20 */	blr 
