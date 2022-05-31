lbl_803C8A6C:
/* 803C8A6C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803C8A70  7C 08 02 A6 */	mflr r0
/* 803C8A74  90 01 00 34 */	stw r0, 0x34(r1)
/* 803C8A78  39 61 00 30 */	addi r11, r1, 0x30
/* 803C8A7C  4B CD 24 55 */	bl func_8009AED0
/* 803C8A80  7C 7C 1B 78 */	mr r28, r3
/* 803C8A84  7C 9D 23 78 */	mr r29, r4
/* 803C8A88  4B C9 42 6D */	bl fqrand
/* 803C8A8C  57 A4 06 3E */	clrlwi r4, r29, 0x18
/* 803C8A90  3C 00 43 30 */	lis r0, 0x4330
/* 803C8A94  90 81 00 0C */	stw r4, 0xc(r1)
/* 803C8A98  3C 60 80 64 */	lis r3, lit_663@ha /* 0x8064286C@ha */
/* 803C8A9C  C8 43 28 6C */	lfd f2, lit_663@l(r3)  /* 0x8064286C@l */
/* 803C8AA0  3B C0 00 00 */	li r30, 0
/* 803C8AA4  90 01 00 08 */	stw r0, 8(r1)
/* 803C8AA8  C8 01 00 08 */	lfd f0, 8(r1)
/* 803C8AAC  EC 00 10 28 */	fsubs f0, f0, f2
/* 803C8AB0  EC 00 00 72 */	fmuls f0, f0, f1
/* 803C8AB4  FC 00 00 1E */	fctiwz f0, f0
/* 803C8AB8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803C8ABC  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 803C8AC0  48 00 00 58 */	b lbl_803C8B18
lbl_803C8AC4:
/* 803C8AC4  3B A0 00 00 */	li r29, 0
/* 803C8AC8  48 00 00 40 */	b lbl_803C8B08
lbl_803C8ACC:
/* 803C8ACC  7F 83 E3 78 */	mr r3, r28
/* 803C8AD0  7F A4 EB 78 */	mr r4, r29
/* 803C8AD4  7F C5 F3 78 */	mr r5, r30
/* 803C8AD8  4B FF FD 49 */	bl mMsr_CheckAroundTree
/* 803C8ADC  2C 03 00 01 */	cmpwi r3, 1
/* 803C8AE0  40 82 00 20 */	bne lbl_803C8B00
/* 803C8AE4  2C 1F 00 00 */	cmpwi r31, 0
/* 803C8AE8  41 81 00 14 */	bgt lbl_803C8AFC
/* 803C8AEC  7F 83 E3 78 */	mr r3, r28
/* 803C8AF0  4B FF FE 91 */	bl mMsr_SetMushroomAroundTree
/* 803C8AF4  3B C0 00 10 */	li r30, 0x10
/* 803C8AF8  48 00 00 1C */	b lbl_803C8B14
lbl_803C8AFC:
/* 803C8AFC  3B FF FF FF */	addi r31, r31, -1
lbl_803C8B00:
/* 803C8B00  3B 9C 00 02 */	addi r28, r28, 2
/* 803C8B04  3B BD 00 01 */	addi r29, r29, 1
lbl_803C8B08:
/* 803C8B08  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 803C8B0C  28 00 00 10 */	cmplwi r0, 0x10
/* 803C8B10  41 80 FF BC */	blt lbl_803C8ACC
lbl_803C8B14:
/* 803C8B14  3B DE 00 01 */	addi r30, r30, 1
lbl_803C8B18:
/* 803C8B18  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 803C8B1C  28 00 00 10 */	cmplwi r0, 0x10
/* 803C8B20  41 80 FF A4 */	blt lbl_803C8AC4
/* 803C8B24  39 61 00 30 */	addi r11, r1, 0x30
/* 803C8B28  4B CD 23 F5 */	bl func_8009AF1C
/* 803C8B2C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803C8B30  7C 08 03 A6 */	mtlr r0
/* 803C8B34  38 21 00 30 */	addi r1, r1, 0x30
/* 803C8B38  4E 80 00 20 */	blr 
