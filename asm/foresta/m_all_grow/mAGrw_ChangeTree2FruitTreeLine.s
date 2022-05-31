lbl_80373EB4:
/* 80373EB4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80373EB8  7C 08 02 A6 */	mflr r0
/* 80373EBC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80373EC0  39 61 00 30 */	addi r11, r1, 0x30
/* 80373EC4  4B D2 70 0D */	bl func_8009AED0
/* 80373EC8  7C 7C 1B 78 */	mr r28, r3
/* 80373ECC  7C 9D 23 78 */	mr r29, r4
/* 80373ED0  4B CE 8E 25 */	bl fqrand
/* 80373ED4  3C 60 80 64 */	lis r3, lit_603@ha /* 0x806411DC@ha */
/* 80373ED8  C0 03 11 DC */	lfs f0, lit_603@l(r3)  /* 0x806411DC@l */
/* 80373EDC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80373EE0  FC 00 00 1E */	fctiwz f0, f0
/* 80373EE4  D8 01 00 08 */	stfd f0, 8(r1)
/* 80373EE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80373EEC  4B CE 8E 09 */	bl fqrand
/* 80373EF0  3C 60 80 64 */	lis r3, lit_604@ha /* 0x806411E0@ha */
/* 80373EF4  C0 03 11 E0 */	lfs f0, lit_604@l(r3)  /* 0x806411E0@l */
/* 80373EF8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80373EFC  FC 00 00 1E */	fctiwz f0, f0
/* 80373F00  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80373F04  83 C1 00 14 */	lwz r30, 0x14(r1)
/* 80373F08  7C 1E F8 00 */	cmpw r30, r31
/* 80373F0C  40 82 00 08 */	bne lbl_80373F14
/* 80373F10  3B DE 00 01 */	addi r30, r30, 1
lbl_80373F14:
/* 80373F14  57 E0 48 2C */	slwi r0, r31, 9
/* 80373F18  7F A4 EB 78 */	mr r4, r29
/* 80373F1C  7C 7C 02 14 */	add r3, r28, r0
/* 80373F20  4B FF FF 6D */	bl mAGrw_ChangeTree2FruitTreeBlock
/* 80373F24  57 C0 48 2C */	slwi r0, r30, 9
/* 80373F28  7F A4 EB 78 */	mr r4, r29
/* 80373F2C  7C 7C 02 14 */	add r3, r28, r0
/* 80373F30  4B FF FF 5D */	bl mAGrw_ChangeTree2FruitTreeBlock
/* 80373F34  39 61 00 30 */	addi r11, r1, 0x30
/* 80373F38  4B D2 6F E5 */	bl func_8009AF1C
/* 80373F3C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80373F40  7C 08 03 A6 */	mtlr r0
/* 80373F44  38 21 00 30 */	addi r1, r1, 0x30
/* 80373F48  4E 80 00 20 */	blr 
