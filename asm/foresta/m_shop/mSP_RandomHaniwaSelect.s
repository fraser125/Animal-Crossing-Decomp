lbl_803EA8F4:
/* 803EA8F4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803EA8F8  7C 08 02 A6 */	mflr r0
/* 803EA8FC  90 01 00 44 */	stw r0, 0x44(r1)
/* 803EA900  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 803EA904  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 803EA908  39 61 00 30 */	addi r11, r1, 0x30
/* 803EA90C  4B CB 05 BD */	bl func_8009AEC8
/* 803EA910  7C 9B 23 79 */	or. r27, r4, r4
/* 803EA914  38 A0 00 00 */	li r5, 0
/* 803EA918  7C 7A 1B 78 */	mr r26, r3
/* 803EA91C  7C A0 2B 78 */	mr r0, r5
/* 803EA920  7F 69 03 A6 */	mtctr r27
/* 803EA924  40 81 00 10 */	ble lbl_803EA934
lbl_803EA928:
/* 803EA928  7C 1A 2B 2E */	sthx r0, r26, r5
/* 803EA92C  38 A5 00 02 */	addi r5, r5, 2
/* 803EA930  42 00 FF F8 */	bdnz lbl_803EA928
lbl_803EA934:
/* 803EA934  3C 60 80 64 */	lis r3, lit_1450@ha /* 0x806431B8@ha */
/* 803EA938  3B C0 00 00 */	li r30, 0
/* 803EA93C  C3 E3 31 B8 */	lfs f31, lit_1450@l(r3)  /* 0x806431B8@l */
/* 803EA940  3B E0 00 00 */	li r31, 0
/* 803EA944  48 00 00 70 */	b lbl_803EA9B4
lbl_803EA948:
/* 803EA948  3B A0 00 00 */	li r29, 0
/* 803EA94C  48 00 00 58 */	b lbl_803EA9A4
lbl_803EA950:
/* 803EA950  4B C7 23 A5 */	bl fqrand
/* 803EA954  EC 1F 00 72 */	fmuls f0, f31, f1
/* 803EA958  7F 43 D3 78 */	mr r3, r26
/* 803EA95C  7F 64 DB 78 */	mr r4, r27
/* 803EA960  FC 00 00 1E */	fctiwz f0, f0
/* 803EA964  D8 01 00 08 */	stfd f0, 8(r1)
/* 803EA968  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803EA96C  54 05 14 3A */	rlwinm r5, r0, 2, 0x10, 0x1d
/* 803EA970  38 05 15 B0 */	addi r0, r5, 0x15b0
/* 803EA974  54 1C 04 3E */	clrlwi r28, r0, 0x10
/* 803EA978  7F 85 E3 78 */	mr r5, r28
/* 803EA97C  4B FF D3 29 */	bl mSP_GoodsExistAlready
/* 803EA980  2C 03 00 00 */	cmpwi r3, 0
/* 803EA984  40 82 00 10 */	bne lbl_803EA994
/* 803EA988  7F 9A FB 2E */	sthx r28, r26, r31
/* 803EA98C  3B A0 00 01 */	li r29, 1
/* 803EA990  48 00 00 14 */	b lbl_803EA9A4
lbl_803EA994:
/* 803EA994  2C 1B 00 7F */	cmpwi r27, 0x7f
/* 803EA998  40 81 00 0C */	ble lbl_803EA9A4
/* 803EA99C  7F 9A FB 2E */	sthx r28, r26, r31
/* 803EA9A0  3B A0 00 01 */	li r29, 1
lbl_803EA9A4:
/* 803EA9A4  2C 1D 00 00 */	cmpwi r29, 0
/* 803EA9A8  41 82 FF A8 */	beq lbl_803EA950
/* 803EA9AC  3B DE 00 01 */	addi r30, r30, 1
/* 803EA9B0  3B FF 00 02 */	addi r31, r31, 2
lbl_803EA9B4:
/* 803EA9B4  7C 1E D8 00 */	cmpw r30, r27
/* 803EA9B8  41 80 FF 90 */	blt lbl_803EA948
/* 803EA9BC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 803EA9C0  39 61 00 30 */	addi r11, r1, 0x30
/* 803EA9C4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 803EA9C8  4B CB 05 4D */	bl func_8009AF14
/* 803EA9CC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803EA9D0  7C 08 03 A6 */	mtlr r0
/* 803EA9D4  38 21 00 40 */	addi r1, r1, 0x40
/* 803EA9D8  4E 80 00 20 */	blr 
