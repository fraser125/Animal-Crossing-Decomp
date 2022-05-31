lbl_80510ACC:
/* 80510ACC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80510AD0  7C 08 02 A6 */	mflr r0
/* 80510AD4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80510AD8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80510ADC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80510AE0  39 61 00 30 */	addi r11, r1, 0x30
/* 80510AE4  4B B8 A3 F1 */	bl func_8009AED4
/* 80510AE8  3C 80 80 6A */	lis r4, base_grass_table@ha /* 0x8069FACC@ha */
/* 80510AEC  38 00 00 0C */	li r0, 0xc
/* 80510AF0  7C 7D 1B 78 */	mr r29, r3
/* 80510AF4  38 60 00 00 */	li r3, 0
/* 80510AF8  38 84 FA CC */	addi r4, r4, base_grass_table@l /* 0x8069FACC@l */
/* 80510AFC  7C 09 03 A6 */	mtctr r0
lbl_80510B00:
/* 80510B00  7C 04 1A 2E */	lhzx r0, r4, r3
/* 80510B04  7C 1D 1B 2E */	sthx r0, r29, r3
/* 80510B08  38 63 00 02 */	addi r3, r3, 2
/* 80510B0C  42 00 FF F4 */	bdnz lbl_80510B00
/* 80510B10  3C 60 80 65 */	lis r3, data_80648FAC@ha /* 0x80648FAC@ha */
/* 80510B14  3B E0 00 00 */	li r31, 0
/* 80510B18  C3 E3 8F AC */	lfs f31, data_80648FAC@l(r3)  /* 0x80648FAC@l */
lbl_80510B1C:
/* 80510B1C  4B B4 C1 D9 */	bl fqrand
/* 80510B20  EC 1F 00 72 */	fmuls f0, f31, f1
/* 80510B24  FC 00 00 1E */	fctiwz f0, f0
/* 80510B28  D8 01 00 08 */	stfd f0, 8(r1)
/* 80510B2C  83 C1 00 0C */	lwz r30, 0xc(r1)
/* 80510B30  4B B4 C1 C5 */	bl fqrand
/* 80510B34  EC 1F 00 72 */	fmuls f0, f31, f1
/* 80510B38  57 C4 08 3C */	slwi r4, r30, 1
/* 80510B3C  3B FF 00 01 */	addi r31, r31, 1
/* 80510B40  7C BD 22 2E */	lhzx r5, r29, r4
/* 80510B44  2C 1F 00 04 */	cmpwi r31, 4
/* 80510B48  FC 00 00 1E */	fctiwz f0, f0
/* 80510B4C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80510B50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80510B54  54 03 08 3C */	slwi r3, r0, 1
/* 80510B58  7C 1D 1A 2E */	lhzx r0, r29, r3
/* 80510B5C  7C 1D 23 2E */	sthx r0, r29, r4
/* 80510B60  7C BD 1B 2E */	sthx r5, r29, r3
/* 80510B64  41 80 FF B8 */	blt lbl_80510B1C
/* 80510B68  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80510B6C  39 61 00 30 */	addi r11, r1, 0x30
/* 80510B70  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80510B74  4B B8 A3 AD */	bl func_8009AF20
/* 80510B78  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80510B7C  7C 08 03 A6 */	mtlr r0
/* 80510B80  38 21 00 40 */	addi r1, r1, 0x40
/* 80510B84  4E 80 00 20 */	blr 
