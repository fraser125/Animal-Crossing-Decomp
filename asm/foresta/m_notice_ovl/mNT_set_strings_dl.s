lbl_805EBD60:
/* 805EBD60  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 805EBD64  7C 08 02 A6 */	mflr r0
/* 805EBD68  90 01 00 84 */	stw r0, 0x84(r1)
/* 805EBD6C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 805EBD70  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 805EBD74  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 805EBD78  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 805EBD7C  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 805EBD80  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 805EBD84  39 61 00 50 */	addi r11, r1, 0x50
/* 805EBD88  4B AA F1 3D */	bl func_8009AEC4
/* 805EBD8C  FF C0 08 90 */	fmr f30, f1
/* 805EBD90  90 A1 00 10 */	stw r5, 0x10(r1)
/* 805EBD94  3D 20 80 65 */	lis r9, lit_491@ha /* 0x8064B6EC@ha */
/* 805EBD98  FF E0 10 90 */	fmr f31, f2
/* 805EBD9C  C3 A9 B6 EC */	lfs f29, lit_491@l(r9)  /* 0x8064B6EC@l */
/* 805EBDA0  7C FD 3B 78 */	mr r29, r7
/* 805EBDA4  D3 C7 00 00 */	stfs f30, 0(r7)
/* 805EBDA8  7D 1E 43 78 */	mr r30, r8
/* 805EBDAC  7C 7B 1B 78 */	mr r27, r3
/* 805EBDB0  7C 9C 23 78 */	mr r28, r4
/* 805EBDB4  D3 E8 00 00 */	stfs f31, 0(r8)
/* 805EBDB8  7F 45 32 14 */	add r26, r5, r6
/* 805EBDBC  3B 20 00 00 */	li r25, 0
lbl_805EBDC0:
/* 805EBDC0  38 00 00 00 */	li r0, 0
/* 805EBDC4  83 E1 00 10 */	lwz r31, 0x10(r1)
/* 805EBDC8  90 01 00 18 */	stw r0, 0x18(r1)
/* 805EBDCC  90 01 00 14 */	stw r0, 0x14(r1)
lbl_805EBDD0:
/* 805EBDD0  7F 44 D3 78 */	mr r4, r26
/* 805EBDD4  38 61 00 10 */	addi r3, r1, 0x10
/* 805EBDD8  38 A1 00 18 */	addi r5, r1, 0x18
/* 805EBDDC  38 C1 00 14 */	addi r6, r1, 0x14
/* 805EBDE0  4B FF EB F9 */	bl func_805EA9D8
/* 805EBDE4  2C 03 00 03 */	cmpwi r3, 3
/* 805EBDE8  40 82 01 54 */	bne lbl_805EBF3C
/* 805EBDEC  2C 19 00 05 */	cmpwi r25, 5
/* 805EBDF0  41 82 00 78 */	beq lbl_805EBE68
/* 805EBDF4  80 61 00 10 */	lwz r3, 0x10(r1)
/* 805EBDF8  7C 03 F8 40 */	cmplw r3, r31
/* 805EBDFC  41 82 00 10 */	beq lbl_805EBE0C
/* 805EBE00  88 03 FF FF */	lbz r0, -1(r3)
/* 805EBE04  28 00 00 CD */	cmplwi r0, 0xcd
/* 805EBE08  41 82 00 20 */	beq lbl_805EBE28
lbl_805EBE0C:
/* 805EBE0C  88 63 00 00 */	lbz r3, 0(r3)
/* 805EBE10  38 80 00 01 */	li r4, 1
/* 805EBE14  4B DC 38 89 */	bl mFont_GetCodeWidth
/* 805EBE18  80 01 00 18 */	lwz r0, 0x18(r1)
/* 805EBE1C  7C 00 1A 14 */	add r0, r0, r3
/* 805EBE20  2C 00 00 C0 */	cmpwi r0, 0xc0
/* 805EBE24  40 81 00 44 */	ble lbl_805EBE68
lbl_805EBE28:
/* 805EBE28  3C 80 80 65 */	lis r4, data_8064B6BC@ha /* 0x8064B6BC@ha */
/* 805EBE2C  3C 60 80 65 */	lis r3, lit_491@ha /* 0x8064B6EC@ha */
/* 805EBE30  38 A4 B6 BC */	addi r5, r4, data_8064B6BC@l /* 0x8064B6BC@l */
/* 805EBE34  C0 03 B6 EC */	lfs f0, lit_491@l(r3)  /* 0x8064B6EC@l */
/* 805EBE38  C0 25 00 00 */	lfs f1, 0(r5)
/* 805EBE3C  3C 80 80 65 */	lis r4, lit_840@ha /* 0x8064B738@ha */
/* 805EBE40  3C 60 80 65 */	lis r3, lit_841@ha /* 0x8064B73C@ha */
/* 805EBE44  EC 00 F8 2A */	fadds f0, f0, f31
/* 805EBE48  EC 41 F0 2A */	fadds f2, f1, f30
/* 805EBE4C  C0 24 B7 38 */	lfs f1, lit_840@l(r4)  /* 0x8064B738@l */
/* 805EBE50  EC 42 08 28 */	fsubs f2, f2, f1
/* 805EBE54  C0 23 B7 3C */	lfs f1, lit_841@l(r3)  /* 0x8064B73C@l */
/* 805EBE58  EC 01 00 28 */	fsubs f0, f1, f0
/* 805EBE5C  D0 5D 00 00 */	stfs f2, 0(r29)
/* 805EBE60  D0 1E 00 00 */	stfs f0, 0(r30)
/* 805EBE64  48 00 00 5C */	b lbl_805EBEC0
lbl_805EBE68:
/* 805EBE68  80 61 00 18 */	lwz r3, 0x18(r1)
/* 805EBE6C  3C 00 43 30 */	lis r0, 0x4330
/* 805EBE70  3C A0 80 65 */	lis r5, lit_469@ha /* 0x8064B6DC@ha */
/* 805EBE74  3C C0 80 65 */	lis r6, data_8064B6BC@ha /* 0x8064B6BC@ha */
/* 805EBE78  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 805EBE7C  90 01 00 20 */	stw r0, 0x20(r1)
/* 805EBE80  C8 45 B6 DC */	lfd f2, lit_469@l(r5)  /* 0x8064B6DC@l */
/* 805EBE84  3C 60 80 65 */	lis r3, lit_840@ha /* 0x8064B738@ha */
/* 805EBE88  90 81 00 24 */	stw r4, 0x24(r1)
/* 805EBE8C  38 83 B7 38 */	addi r4, r3, lit_840@l /* 0x8064B738@l */
/* 805EBE90  3C 60 80 65 */	lis r3, lit_841@ha /* 0x8064B73C@ha */
/* 805EBE94  C0 66 B6 BC */	lfs f3, data_8064B6BC@l(r6)  /* 0x8064B6BC@l */
/* 805EBE98  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 805EBE9C  C0 03 B7 3C */	lfs f0, lit_841@l(r3)  /* 0x8064B73C@l */
/* 805EBEA0  EC 41 10 28 */	fsubs f2, f1, f2
/* 805EBEA4  C0 24 00 00 */	lfs f1, 0(r4)
/* 805EBEA8  EC 00 F8 28 */	fsubs f0, f0, f31
/* 805EBEAC  EC 5E 10 2A */	fadds f2, f30, f2
/* 805EBEB0  EC 43 10 2A */	fadds f2, f3, f2
/* 805EBEB4  EC 22 08 28 */	fsubs f1, f2, f1
/* 805EBEB8  D0 3D 00 00 */	stfs f1, 0(r29)
/* 805EBEBC  D0 1E 00 00 */	stfs f0, 0(r30)
lbl_805EBEC0:
/* 805EBEC0  80 1B 00 04 */	lwz r0, 4(r27)
/* 805EBEC4  2C 00 00 02 */	cmpwi r0, 2
/* 805EBEC8  41 82 00 20 */	beq lbl_805EBEE8
/* 805EBECC  80 61 00 10 */	lwz r3, 0x10(r1)
/* 805EBED0  88 03 FF FF */	lbz r0, -1(r3)
/* 805EBED4  28 00 00 CD */	cmplwi r0, 0xcd
/* 805EBED8  40 82 00 10 */	bne lbl_805EBEE8
/* 805EBEDC  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805EBEE0  38 03 FF FF */	addi r0, r3, -1
/* 805EBEE4  90 01 00 14 */	stw r0, 0x14(r1)
lbl_805EBEE8:
/* 805EBEE8  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 805EBEEC  2C 05 00 00 */	cmpwi r5, 0
/* 805EBEF0  41 82 00 D4 */	beq lbl_805EBFC4
/* 805EBEF4  3C 60 80 65 */	lis r3, data_8064B6BC@ha /* 0x8064B6BC@ha */
/* 805EBEF8  38 00 00 01 */	li r0, 1
/* 805EBEFC  C0 63 B6 BC */	lfs f3, data_8064B6BC@l(r3)  /* 0x8064B6BC@l */
/* 805EBF00  FC 20 F0 90 */	fmr f1, f30
/* 805EBF04  90 01 00 08 */	stw r0, 8(r1)
/* 805EBF08  38 00 00 00 */	li r0, 0
/* 805EBF0C  FC 40 F8 90 */	fmr f2, f31
/* 805EBF10  7F 83 E3 78 */	mr r3, r28
/* 805EBF14  FC 80 18 90 */	fmr f4, f3
/* 805EBF18  90 01 00 0C */	stw r0, 0xc(r1)
/* 805EBF1C  7F E4 FB 78 */	mr r4, r31
/* 805EBF20  38 C0 00 1E */	li r6, 0x1e
/* 805EBF24  38 E0 00 00 */	li r7, 0
/* 805EBF28  39 00 00 00 */	li r8, 0
/* 805EBF2C  39 20 00 FF */	li r9, 0xff
/* 805EBF30  39 40 00 00 */	li r10, 0
/* 805EBF34  4B DC 41 75 */	bl mFont_SetLineStrings
/* 805EBF38  48 00 00 8C */	b lbl_805EBFC4
lbl_805EBF3C:
/* 805EBF3C  2C 03 00 00 */	cmpwi r3, 0
/* 805EBF40  41 82 FE 90 */	beq lbl_805EBDD0
/* 805EBF44  2C 03 00 01 */	cmpwi r3, 1
/* 805EBF48  40 82 00 1C */	bne lbl_805EBF64
/* 805EBF4C  80 1B 00 04 */	lwz r0, 4(r27)
/* 805EBF50  2C 00 00 02 */	cmpwi r0, 2
/* 805EBF54  41 82 00 10 */	beq lbl_805EBF64
/* 805EBF58  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805EBF5C  38 03 FF FF */	addi r0, r3, -1
/* 805EBF60  90 01 00 14 */	stw r0, 0x14(r1)
lbl_805EBF64:
/* 805EBF64  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 805EBF68  2C 05 00 00 */	cmpwi r5, 0
/* 805EBF6C  41 82 00 48 */	beq lbl_805EBFB4
/* 805EBF70  3C 60 80 65 */	lis r3, data_8064B6BC@ha /* 0x8064B6BC@ha */
/* 805EBF74  38 00 00 01 */	li r0, 1
/* 805EBF78  C0 63 B6 BC */	lfs f3, data_8064B6BC@l(r3)  /* 0x8064B6BC@l */
/* 805EBF7C  FC 20 F0 90 */	fmr f1, f30
/* 805EBF80  90 01 00 08 */	stw r0, 8(r1)
/* 805EBF84  38 00 00 00 */	li r0, 0
/* 805EBF88  FC 40 F8 90 */	fmr f2, f31
/* 805EBF8C  7F 83 E3 78 */	mr r3, r28
/* 805EBF90  FC 80 18 90 */	fmr f4, f3
/* 805EBF94  90 01 00 0C */	stw r0, 0xc(r1)
/* 805EBF98  7F E4 FB 78 */	mr r4, r31
/* 805EBF9C  38 C0 00 1E */	li r6, 0x1e
/* 805EBFA0  38 E0 00 00 */	li r7, 0
/* 805EBFA4  39 00 00 00 */	li r8, 0
/* 805EBFA8  39 20 00 FF */	li r9, 0xff
/* 805EBFAC  39 40 00 00 */	li r10, 0
/* 805EBFB0  4B DC 40 F9 */	bl mFont_SetLineStrings
lbl_805EBFB4:
/* 805EBFB4  3B 39 00 01 */	addi r25, r25, 1
/* 805EBFB8  EF FF E8 2A */	fadds f31, f31, f29
/* 805EBFBC  2C 19 00 06 */	cmpwi r25, 6
/* 805EBFC0  41 80 FE 00 */	blt lbl_805EBDC0
lbl_805EBFC4:
/* 805EBFC4  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 805EBFC8  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 805EBFCC  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 805EBFD0  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 805EBFD4  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 805EBFD8  39 61 00 50 */	addi r11, r1, 0x50
/* 805EBFDC  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 805EBFE0  4B AA EF 31 */	bl func_8009AF10
/* 805EBFE4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 805EBFE8  7C 08 03 A6 */	mtlr r0
/* 805EBFEC  38 21 00 80 */	addi r1, r1, 0x80
/* 805EBFF0  4E 80 00 20 */	blr 
