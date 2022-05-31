lbl_8047BCF4:
/* 8047BCF4  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8047BCF8  7C 08 02 A6 */	mflr r0
/* 8047BCFC  90 01 00 94 */	stw r0, 0x94(r1)
/* 8047BD00  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8047BD04  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8047BD08  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 8047BD0C  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 8047BD10  39 61 00 70 */	addi r11, r1, 0x70
/* 8047BD14  4B C1 F1 B9 */	bl func_8009AECC
/* 8047BD18  7C 7B 1B 78 */	mr r27, r3
/* 8047BD1C  A8 63 08 3C */	lha r3, 0x83c(r3)
/* 8047BD20  7C 9C 23 78 */	mr r28, r4
/* 8047BD24  7C BD 2B 78 */	mr r29, r5
/* 8047BD28  4B FF 46 C9 */	bl aMR_GetLayerTopFg
/* 8047BD2C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8047BD30  41 82 02 44 */	beq lbl_8047BF74
/* 8047BD34  A8 1B 00 3C */	lha r0, 0x3c(r27)
/* 8047BD38  2C 00 00 0E */	cmpwi r0, 0xe
/* 8047BD3C  41 82 02 38 */	beq lbl_8047BF74
/* 8047BD40  3C 60 80 64 */	lis r3, lit_1234@ha /* 0x80644A18@ha */
/* 8047BD44  C3 FB 00 38 */	lfs f31, 0x38(r27)
/* 8047BD48  38 83 4A 18 */	addi r4, r3, lit_1234@l /* 0x80644A18@l */
/* 8047BD4C  A0 7B 00 00 */	lhz r3, 0(r27)
/* 8047BD50  C0 04 00 00 */	lfs f0, 0(r4)
/* 8047BD54  38 80 00 00 */	li r4, 0
/* 8047BD58  EF C0 07 F2 */	fmuls f30, f0, f31
/* 8047BD5C  4B F6 BA 79 */	bl mRmTp_FtrIdx2FtrItemNo
/* 8047BD60  3C A0 80 64 */	lis r5, lit_5236@ha /* 0x80644ADC@ha */
/* 8047BD64  85 25 4A DC */	lwzu r9, lit_5236@l(r5)  /* 0x80644ADC@l */
/* 8047BD68  3C 80 80 64 */	lis r4, lit_5237@ha /* 0x80644AE8@ha */
/* 8047BD6C  FC 20 F8 90 */	fmr f1, f31
/* 8047BD70  38 C4 4A E8 */	addi r6, r4, lit_5237@l /* 0x80644AE8@l */
/* 8047BD74  81 05 00 04 */	lwz r8, 4(r5)
/* 8047BD78  80 E5 00 08 */	lwz r7, 8(r5)
/* 8047BD7C  80 A6 00 00 */	lwz r5, 0(r6)
/* 8047BD80  80 86 00 04 */	lwz r4, 4(r6)
/* 8047BD84  80 06 00 08 */	lwz r0, 8(r6)
/* 8047BD88  91 21 00 24 */	stw r9, 0x24(r1)
/* 8047BD8C  91 01 00 28 */	stw r8, 0x28(r1)
/* 8047BD90  90 E1 00 2C */	stw r7, 0x2c(r1)
/* 8047BD94  90 A1 00 18 */	stw r5, 0x18(r1)
/* 8047BD98  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8047BD9C  90 01 00 20 */	stw r0, 0x20(r1)
/* 8047BDA0  4B FF FE 8D */	bl aMR_GetSaveAngle
/* 8047BDA4  88 BB 00 3E */	lbz r5, 0x3e(r27)
/* 8047BDA8  7C 7F 1B 78 */	mr r31, r3
/* 8047BDAC  2C 05 00 06 */	cmpwi r5, 6
/* 8047BDB0  40 80 00 98 */	bge lbl_8047BE48
/* 8047BDB4  2C 05 00 04 */	cmpwi r5, 4
/* 8047BDB8  40 80 00 08 */	bge lbl_8047BDC0
/* 8047BDBC  48 00 00 8C */	b lbl_8047BE48
lbl_8047BDC0:
/* 8047BDC0  7F 84 E3 78 */	mr r4, r28
/* 8047BDC4  38 61 00 08 */	addi r3, r1, 8
/* 8047BDC8  4B FF BA B1 */	bl aMR_PosType2FurniturePoccessUnitNo
/* 8047BDCC  2C 03 00 00 */	cmpwi r3, 0
/* 8047BDD0  40 81 00 70 */	ble lbl_8047BE40
/* 8047BDD4  38 FD FF FF */	addi r7, r29, -1
/* 8047BDD8  80 01 00 08 */	lwz r0, 8(r1)
/* 8047BDDC  30 A7 FF FF */	addic r5, r7, -1
/* 8047BDE0  57 E4 04 3E */	clrlwi r4, r31, 0x10
/* 8047BDE4  7C A5 29 10 */	subfe r5, r5, r5
/* 8047BDE8  2C 03 00 01 */	cmpwi r3, 1
/* 8047BDEC  7C 84 28 38 */	and r4, r4, r5
/* 8047BDF0  54 00 08 3C */	slwi r0, r0, 1
/* 8047BDF4  7C 9E 03 2E */	sthx r4, r30, r0
/* 8047BDF8  40 81 00 40 */	ble lbl_8047BE38
/* 8047BDFC  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FE1F@ha */
/* 8047BE00  38 03 FF FF */	addi r0, r3, -1
/* 8047BE04  38 A4 FE 1F */	addi r5, r4, 0xFE1F /* 0x0000FE1F@l */
/* 8047BE08  38 81 00 08 */	addi r4, r1, 8
/* 8047BE0C  38 60 00 04 */	li r3, 4
/* 8047BE10  7C 09 03 A6 */	mtctr r0
/* 8047BE14  40 81 00 24 */	ble lbl_8047BE38
lbl_8047BE18:
/* 8047BE18  7C 04 18 2E */	lwzx r0, r4, r3
/* 8047BE1C  30 C7 FF FF */	addic r6, r7, -1
/* 8047BE20  7C C6 31 10 */	subfe r6, r6, r6
/* 8047BE24  38 63 00 04 */	addi r3, r3, 4
/* 8047BE28  7C A6 30 38 */	and r6, r5, r6
/* 8047BE2C  54 00 08 3C */	slwi r0, r0, 1
/* 8047BE30  7C DE 03 2E */	sthx r6, r30, r0
/* 8047BE34  42 00 FF E4 */	bdnz lbl_8047BE18
lbl_8047BE38:
/* 8047BE38  38 60 00 01 */	li r3, 1
/* 8047BE3C  48 00 01 3C */	b lbl_8047BF78
lbl_8047BE40:
/* 8047BE40  38 60 00 00 */	li r3, 0
/* 8047BE44  48 00 01 34 */	b lbl_8047BF78
lbl_8047BE48:
/* 8047BE48  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8047BE4C  FC 20 F0 90 */	fmr f1, f30
/* 8047BE50  C0 BB 00 40 */	lfs f5, 0x40(r27)
/* 8047BE54  38 61 00 24 */	addi r3, r1, 0x24
/* 8047BE58  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8047BE5C  EC 80 28 2A */	fadds f4, f0, f5
/* 8047BE60  C0 61 00 2C */	lfs f3, 0x2c(r1)
/* 8047BE64  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8047BE68  EC 42 28 2A */	fadds f2, f2, f5
/* 8047BE6C  D0 81 00 24 */	stfs f4, 0x24(r1)
/* 8047BE70  C0 9B 00 48 */	lfs f4, 0x48(r27)
/* 8047BE74  EC 63 20 2A */	fadds f3, f3, f4
/* 8047BE78  EC 00 20 2A */	fadds f0, f0, f4
/* 8047BE7C  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 8047BE80  C0 7B 00 44 */	lfs f3, 0x44(r27)
/* 8047BE84  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 8047BE88  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8047BE8C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8047BE90  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 8047BE94  4B F8 FF 19 */	bl sMath_RotateY
/* 8047BE98  FC 20 F0 90 */	fmr f1, f30
/* 8047BE9C  38 61 00 18 */	addi r3, r1, 0x18
/* 8047BEA0  4B F8 FF 0D */	bl sMath_RotateY
/* 8047BEA4  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8047BEA8  3C 60 80 64 */	lis r3, lit_885@ha /* 0x806449F4@ha */
/* 8047BEAC  C0 5C 00 08 */	lfs f2, 8(r28)
/* 8047BEB0  2C 1D 00 01 */	cmpwi r29, 1
/* 8047BEB4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8047BEB8  EC 61 10 2A */	fadds f3, f1, f2
/* 8047BEBC  C0 A1 00 24 */	lfs f5, 0x24(r1)
/* 8047BEC0  EC 00 10 2A */	fadds f0, f0, f2
/* 8047BEC4  C0 9C 00 00 */	lfs f4, 0(r28)
/* 8047BEC8  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8047BECC  EC A5 20 2A */	fadds f5, f5, f4
/* 8047BED0  EC 82 20 2A */	fadds f4, f2, f4
/* 8047BED4  C0 23 49 F4 */	lfs f1, lit_885@l(r3)  /* 0x806449F4@l */
/* 8047BED8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8047BEDC  EC 43 08 24 */	fdivs f2, f3, f1
/* 8047BEE0  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 8047BEE4  D0 A1 00 24 */	stfs f5, 0x24(r1)
/* 8047BEE8  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 8047BEEC  EC 00 08 24 */	fdivs f0, f0, f1
/* 8047BEF0  EC 65 08 24 */	fdivs f3, f5, f1
/* 8047BEF4  EC 24 08 24 */	fdivs f1, f4, f1
/* 8047BEF8  FC 40 10 1E */	fctiwz f2, f2
/* 8047BEFC  FC 00 00 1E */	fctiwz f0, f0
/* 8047BF00  FC 60 18 1E */	fctiwz f3, f3
/* 8047BF04  FC 20 08 1E */	fctiwz f1, f1
/* 8047BF08  D8 41 00 38 */	stfd f2, 0x38(r1)
/* 8047BF0C  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8047BF10  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 8047BF14  D8 61 00 30 */	stfd f3, 0x30(r1)
/* 8047BF18  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8047BF1C  54 64 20 36 */	slwi r4, r3, 4
/* 8047BF20  D8 21 00 40 */	stfd f1, 0x40(r1)
/* 8047BF24  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 8047BF28  54 00 20 36 */	slwi r0, r0, 4
/* 8047BF2C  80 61 00 44 */	lwz r3, 0x44(r1)
/* 8047BF30  7C 85 22 14 */	add r4, r5, r4
/* 8047BF34  7C A3 02 14 */	add r5, r3, r0
/* 8047BF38  40 82 00 20 */	bne lbl_8047BF58
/* 8047BF3C  54 80 08 3C */	slwi r0, r4, 1
/* 8047BF40  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FE1F@ha */
/* 8047BF44  7F FE 03 2E */	sthx r31, r30, r0
/* 8047BF48  38 63 FE 1F */	addi r3, r3, 0xFE1F /* 0x0000FE1F@l */
/* 8047BF4C  54 A0 08 3C */	slwi r0, r5, 1
/* 8047BF50  7C 7E 03 2E */	sthx r3, r30, r0
/* 8047BF54  48 00 00 18 */	b lbl_8047BF6C
lbl_8047BF58:
/* 8047BF58  54 80 08 3C */	slwi r0, r4, 1
/* 8047BF5C  38 60 00 00 */	li r3, 0
/* 8047BF60  7C 7E 03 2E */	sthx r3, r30, r0
/* 8047BF64  54 A0 08 3C */	slwi r0, r5, 1
/* 8047BF68  7C 7E 03 2E */	sthx r3, r30, r0
lbl_8047BF6C:
/* 8047BF6C  38 60 00 01 */	li r3, 1
/* 8047BF70  48 00 00 08 */	b lbl_8047BF78
lbl_8047BF74:
/* 8047BF74  38 60 00 00 */	li r3, 0
lbl_8047BF78:
/* 8047BF78  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 8047BF7C  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8047BF80  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 8047BF84  39 61 00 70 */	addi r11, r1, 0x70
/* 8047BF88  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 8047BF8C  4B C1 EF 8D */	bl func_8009AF18
/* 8047BF90  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8047BF94  7C 08 03 A6 */	mtlr r0
/* 8047BF98  38 21 00 90 */	addi r1, r1, 0x90
/* 8047BF9C  4E 80 00 20 */	blr 
