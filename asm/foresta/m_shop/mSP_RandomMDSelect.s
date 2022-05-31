lbl_803EA9DC:
/* 803EA9DC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803EA9E0  7C 08 02 A6 */	mflr r0
/* 803EA9E4  90 01 00 44 */	stw r0, 0x44(r1)
/* 803EA9E8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 803EA9EC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 803EA9F0  39 61 00 30 */	addi r11, r1, 0x30
/* 803EA9F4  4B CB 04 D5 */	bl func_8009AEC8
/* 803EA9F8  7C 9B 23 79 */	or. r27, r4, r4
/* 803EA9FC  38 A0 00 00 */	li r5, 0
/* 803EAA00  7C 7A 1B 78 */	mr r26, r3
/* 803EAA04  7C A0 2B 78 */	mr r0, r5
/* 803EAA08  7F 69 03 A6 */	mtctr r27
/* 803EAA0C  40 81 00 10 */	ble lbl_803EAA1C
lbl_803EAA10:
/* 803EAA10  7C 1A 2B 2E */	sthx r0, r26, r5
/* 803EAA14  38 A5 00 02 */	addi r5, r5, 2
/* 803EAA18  42 00 FF F8 */	bdnz lbl_803EAA10
lbl_803EAA1C:
/* 803EAA1C  3C 60 80 64 */	lis r3, lit_1479@ha /* 0x806431BC@ha */
/* 803EAA20  3B C0 00 00 */	li r30, 0
/* 803EAA24  C3 E3 31 BC */	lfs f31, lit_1479@l(r3)  /* 0x806431BC@l */
/* 803EAA28  3B E0 00 00 */	li r31, 0
/* 803EAA2C  48 00 00 6C */	b lbl_803EAA98
lbl_803EAA30:
/* 803EAA30  3B A0 00 00 */	li r29, 0
/* 803EAA34  48 00 00 54 */	b lbl_803EAA88
lbl_803EAA38:
/* 803EAA38  4B C7 22 BD */	bl fqrand
/* 803EAA3C  EC 1F 00 72 */	fmuls f0, f31, f1
/* 803EAA40  7F 43 D3 78 */	mr r3, r26
/* 803EAA44  7F 64 DB 78 */	mr r4, r27
/* 803EAA48  FC 00 00 1E */	fctiwz f0, f0
/* 803EAA4C  D8 01 00 08 */	stfd f0, 8(r1)
/* 803EAA50  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 803EAA54  38 05 2A 00 */	addi r0, r5, 0x2a00
/* 803EAA58  54 1C 04 3E */	clrlwi r28, r0, 0x10
/* 803EAA5C  7F 85 E3 78 */	mr r5, r28
/* 803EAA60  4B FF D2 45 */	bl mSP_GoodsExistAlready
/* 803EAA64  2C 03 00 00 */	cmpwi r3, 0
/* 803EAA68  40 82 00 10 */	bne lbl_803EAA78
/* 803EAA6C  7F 9A FB 2E */	sthx r28, r26, r31
/* 803EAA70  3B A0 00 01 */	li r29, 1
/* 803EAA74  48 00 00 14 */	b lbl_803EAA88
lbl_803EAA78:
/* 803EAA78  2C 1B 00 34 */	cmpwi r27, 0x34
/* 803EAA7C  40 81 00 0C */	ble lbl_803EAA88
/* 803EAA80  7F 9A FB 2E */	sthx r28, r26, r31
/* 803EAA84  3B A0 00 01 */	li r29, 1
lbl_803EAA88:
/* 803EAA88  2C 1D 00 00 */	cmpwi r29, 0
/* 803EAA8C  41 82 FF AC */	beq lbl_803EAA38
/* 803EAA90  3B DE 00 01 */	addi r30, r30, 1
/* 803EAA94  3B FF 00 02 */	addi r31, r31, 2
lbl_803EAA98:
/* 803EAA98  7C 1E D8 00 */	cmpw r30, r27
/* 803EAA9C  41 80 FF 94 */	blt lbl_803EAA30
/* 803EAAA0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 803EAAA4  39 61 00 30 */	addi r11, r1, 0x30
/* 803EAAA8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 803EAAAC  4B CB 04 69 */	bl func_8009AF14
/* 803EAAB0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803EAAB4  7C 08 03 A6 */	mtlr r0
/* 803EAAB8  38 21 00 40 */	addi r1, r1, 0x40
/* 803EAABC  4E 80 00 20 */	blr 
