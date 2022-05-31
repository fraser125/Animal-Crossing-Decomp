lbl_803EAAC0:
/* 803EAAC0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803EAAC4  7C 08 02 A6 */	mflr r0
/* 803EAAC8  90 01 00 44 */	stw r0, 0x44(r1)
/* 803EAACC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 803EAAD0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 803EAAD4  39 61 00 30 */	addi r11, r1, 0x30
/* 803EAAD8  4B CB 03 F1 */	bl func_8009AEC8
/* 803EAADC  7C 9B 23 79 */	or. r27, r4, r4
/* 803EAAE0  38 A0 00 00 */	li r5, 0
/* 803EAAE4  7C 7A 1B 78 */	mr r26, r3
/* 803EAAE8  7C A0 2B 78 */	mr r0, r5
/* 803EAAEC  7F 69 03 A6 */	mtctr r27
/* 803EAAF0  40 81 00 10 */	ble lbl_803EAB00
lbl_803EAAF4:
/* 803EAAF4  7C 1A 2B 2E */	sthx r0, r26, r5
/* 803EAAF8  38 A5 00 02 */	addi r5, r5, 2
/* 803EAAFC  42 00 FF F8 */	bdnz lbl_803EAAF4
lbl_803EAB00:
/* 803EAB00  3C 60 80 64 */	lis r3, lit_1508@ha /* 0x806431C0@ha */
/* 803EAB04  3B C0 00 00 */	li r30, 0
/* 803EAB08  C3 E3 31 C0 */	lfs f31, lit_1508@l(r3)  /* 0x806431C0@l */
/* 803EAB0C  3B E0 00 00 */	li r31, 0
/* 803EAB10  48 00 00 6C */	b lbl_803EAB7C
lbl_803EAB14:
/* 803EAB14  3B A0 00 00 */	li r29, 0
/* 803EAB18  48 00 00 54 */	b lbl_803EAB6C
lbl_803EAB1C:
/* 803EAB1C  4B C7 21 D9 */	bl fqrand
/* 803EAB20  EC 1F 00 72 */	fmuls f0, f31, f1
/* 803EAB24  7F 43 D3 78 */	mr r3, r26
/* 803EAB28  7F 64 DB 78 */	mr r4, r27
/* 803EAB2C  FC 00 00 1E */	fctiwz f0, f0
/* 803EAB30  D8 01 00 08 */	stfd f0, 8(r1)
/* 803EAB34  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 803EAB38  38 05 22 04 */	addi r0, r5, 0x2204
/* 803EAB3C  54 1C 04 3E */	clrlwi r28, r0, 0x10
/* 803EAB40  7F 85 E3 78 */	mr r5, r28
/* 803EAB44  4B FF D1 61 */	bl mSP_GoodsExistAlready
/* 803EAB48  2C 03 00 00 */	cmpwi r3, 0
/* 803EAB4C  40 82 00 10 */	bne lbl_803EAB5C
/* 803EAB50  7F 9A FB 2E */	sthx r28, r26, r31
/* 803EAB54  3B A0 00 01 */	li r29, 1
/* 803EAB58  48 00 00 14 */	b lbl_803EAB6C
lbl_803EAB5C:
/* 803EAB5C  2C 1B 00 20 */	cmpwi r27, 0x20
/* 803EAB60  40 81 00 0C */	ble lbl_803EAB6C
/* 803EAB64  7F 9A FB 2E */	sthx r28, r26, r31
/* 803EAB68  3B A0 00 01 */	li r29, 1
lbl_803EAB6C:
/* 803EAB6C  2C 1D 00 00 */	cmpwi r29, 0
/* 803EAB70  41 82 FF AC */	beq lbl_803EAB1C
/* 803EAB74  3B DE 00 01 */	addi r30, r30, 1
/* 803EAB78  3B FF 00 02 */	addi r31, r31, 2
lbl_803EAB7C:
/* 803EAB7C  7C 1E D8 00 */	cmpw r30, r27
/* 803EAB80  41 80 FF 94 */	blt lbl_803EAB14
/* 803EAB84  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 803EAB88  39 61 00 30 */	addi r11, r1, 0x30
/* 803EAB8C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 803EAB90  4B CB 03 85 */	bl func_8009AF14
/* 803EAB94  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803EAB98  7C 08 03 A6 */	mtlr r0
/* 803EAB9C  38 21 00 40 */	addi r1, r1, 0x40
/* 803EABA0  4E 80 00 20 */	blr 
