lbl_805EBFF4:
/* 805EBFF4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805EBFF8  7C 08 02 A6 */	mflr r0
/* 805EBFFC  90 01 00 64 */	stw r0, 0x64(r1)
/* 805EC000  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 805EC004  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 805EC008  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 805EC00C  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 805EC010  39 61 00 40 */	addi r11, r1, 0x40
/* 805EC014  4B AA EE B1 */	bl func_8009AEC4
/* 805EC018  7C 7D 1B 78 */	mr r29, r3
/* 805EC01C  7C DA 33 78 */	mr r26, r6
/* 805EC020  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805EC024  FF C0 08 90 */	fmr f30, f1
/* 805EC028  FF E0 10 90 */	fmr f31, f2
/* 805EC02C  7C 9E 23 78 */	mr r30, r4
/* 805EC030  83 83 09 B8 */	lwz r28, 0x9b8(r3)
/* 805EC034  7C BF 2B 78 */	mr r31, r5
/* 805EC038  83 63 09 8C */	lwz r27, 0x98c(r3)
/* 805EC03C  7C F9 3B 78 */	mr r25, r7
/* 805EC040  7F 43 D3 78 */	mr r3, r26
/* 805EC044  4B FF F7 05 */	bl mNT_set_frame_dl
/* 805EC048  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 805EC04C  7F 43 D3 78 */	mr r3, r26
/* 805EC050  81 84 09 50 */	lwz r12, 0x950(r4)
/* 805EC054  7D 89 03 A6 */	mtctr r12
/* 805EC058  4E 80 04 21 */	bctrl 
/* 805EC05C  2C 19 00 0F */	cmpwi r25, 0xf
/* 805EC060  40 82 00 34 */	bne lbl_805EC094
/* 805EC064  88 7C 00 03 */	lbz r3, 3(r28)
/* 805EC068  3B 43 00 01 */	addi r26, r3, 1
/* 805EC06C  28 1A 00 0F */	cmplwi r26, 0xf
/* 805EC070  40 81 00 08 */	ble lbl_805EC078
/* 805EC074  3B 40 00 0F */	li r26, 0xf
lbl_805EC078:
/* 805EC078  28 1B 00 00 */	cmplwi r27, 0
/* 805EC07C  3B 9C 00 08 */	addi r28, r28, 8
/* 805EC080  41 82 00 0C */	beq lbl_805EC08C
/* 805EC084  AB 3B 00 1E */	lha r25, 0x1e(r27)
/* 805EC088  48 00 00 3C */	b lbl_805EC0C4
lbl_805EC08C:
/* 805EC08C  3B 20 00 00 */	li r25, 0
/* 805EC090  48 00 00 34 */	b lbl_805EC0C4
lbl_805EC094:
/* 805EC094  1C 99 00 C8 */	mulli r4, r25, 0xc8
/* 805EC098  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805EC09C  3B 59 00 01 */	addi r26, r25, 1
/* 805EC0A0  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 805EC0A4  7C 60 22 14 */	add r3, r0, r4
/* 805EC0A8  38 80 00 C0 */	li r4, 0xc0
/* 805EC0AC  3F 83 00 01 */	addis r28, r3, 1
/* 805EC0B0  38 A0 00 20 */	li r5, 0x20
/* 805EC0B4  3B 9C 91 2C */	addi r28, r28, -28372
/* 805EC0B8  7F 83 E3 78 */	mr r3, r28
/* 805EC0BC  4B DD 05 69 */	bl func_803BC624
/* 805EC0C0  7C 79 1B 78 */	mr r25, r3
lbl_805EC0C4:
/* 805EC0C4  FC 20 F0 90 */	fmr f1, f30
/* 805EC0C8  7F E3 FB 78 */	mr r3, r31
/* 805EC0CC  FC 40 F8 90 */	fmr f2, f31
/* 805EC0D0  7F 44 D3 78 */	mr r4, r26
/* 805EC0D4  4B FF F9 25 */	bl mNT_set_num_strings_dl
/* 805EC0D8  FC 20 F0 90 */	fmr f1, f30
/* 805EC0DC  7F E3 FB 78 */	mr r3, r31
/* 805EC0E0  FC 40 F8 90 */	fmr f2, f31
/* 805EC0E4  38 9C 00 C0 */	addi r4, r28, 0xc0
/* 805EC0E8  4B FF F9 E5 */	bl mNT_set_day_strings_dl
/* 805EC0EC  3C 80 80 65 */	lis r4, lit_767@ha /* 0x8064B71C@ha */
/* 805EC0F0  7F C3 F3 78 */	mr r3, r30
/* 805EC0F4  38 A4 B7 1C */	addi r5, r4, lit_767@l /* 0x8064B71C@l */
/* 805EC0F8  7F E4 FB 78 */	mr r4, r31
/* 805EC0FC  C0 05 00 00 */	lfs f0, 0(r5)
/* 805EC100  7F 85 E3 78 */	mr r5, r28
/* 805EC104  7F 26 CB 78 */	mr r6, r25
/* 805EC108  38 E1 00 0C */	addi r7, r1, 0xc
/* 805EC10C  EF DE 00 2A */	fadds f30, f30, f0
/* 805EC110  39 01 00 08 */	addi r8, r1, 8
/* 805EC114  EF E0 F8 28 */	fsubs f31, f0, f31
/* 805EC118  FC 20 F0 90 */	fmr f1, f30
/* 805EC11C  FC 40 F8 90 */	fmr f2, f31
/* 805EC120  4B FF FC 41 */	bl mNT_set_strings_dl
/* 805EC124  80 1E 00 04 */	lwz r0, 4(r30)
/* 805EC128  2C 00 00 02 */	cmpwi r0, 2
/* 805EC12C  40 82 00 B0 */	bne lbl_805EC1DC
/* 805EC130  28 1B 00 00 */	cmplwi r27, 0
/* 805EC134  41 82 00 A8 */	beq lbl_805EC1DC
/* 805EC138  A8 7B 00 26 */	lha r3, 0x26(r27)
/* 805EC13C  3C E0 43 30 */	lis r7, 0x4330
/* 805EC140  3C A0 80 65 */	lis r5, lit_469@ha /* 0x8064B6DC@ha */
/* 805EC144  A8 1B 00 24 */	lha r0, 0x24(r27)
/* 805EC148  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 805EC14C  C8 65 B6 DC */	lfd f3, lit_469@l(r5)  /* 0x8064B6DC@l */
/* 805EC150  90 81 00 14 */	stw r4, 0x14(r1)
/* 805EC154  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805EC158  3C 60 80 65 */	lis r3, lit_491@ha /* 0x8064B6EC@ha */
/* 805EC15C  80 BD 00 2C */	lwz r5, 0x2c(r29)
/* 805EC160  90 E1 00 10 */	stw r7, 0x10(r1)
/* 805EC164  38 C3 B6 EC */	addi r6, r3, lit_491@l /* 0x8064B6EC@l */
/* 805EC168  3C 60 80 65 */	lis r3, lit_859@ha /* 0x8064B740@ha */
/* 805EC16C  80 A5 09 8C */	lwz r5, 0x98c(r5)
/* 805EC170  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805EC174  39 03 B7 40 */	addi r8, r3, lit_859@l /* 0x8064B740@l */
/* 805EC178  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805EC17C  7F A3 EB 78 */	mr r3, r29
/* 805EC180  EC 00 18 28 */	fsubs f0, f0, f3
/* 805EC184  C0 46 00 00 */	lfs f2, 0(r6)
/* 805EC188  90 E1 00 18 */	stw r7, 0x18(r1)
/* 805EC18C  7F E4 FB 78 */	mr r4, r31
/* 805EC190  C0 88 00 00 */	lfs f4, 0(r8)
/* 805EC194  EC 3E 00 2A */	fadds f1, f30, f0
/* 805EC198  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 805EC19C  81 85 00 30 */	lwz r12, 0x30(r5)
/* 805EC1A0  EC 00 18 28 */	fsubs f0, f0, f3
/* 805EC1A4  EC 24 08 2A */	fadds f1, f4, f1
/* 805EC1A8  EC 02 00 32 */	fmuls f0, f2, f0
/* 805EC1AC  EC 5F 00 2A */	fadds f2, f31, f0
/* 805EC1B0  7D 89 03 A6 */	mtctr r12
/* 805EC1B4  4E 80 04 21 */	bctrl 
/* 805EC1B8  80 BD 00 2C */	lwz r5, 0x2c(r29)
/* 805EC1BC  7F A3 EB 78 */	mr r3, r29
/* 805EC1C0  7F E4 FB 78 */	mr r4, r31
/* 805EC1C4  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 805EC1C8  80 A5 09 8C */	lwz r5, 0x98c(r5)
/* 805EC1CC  C0 41 00 08 */	lfs f2, 8(r1)
/* 805EC1D0  81 85 00 2C */	lwz r12, 0x2c(r5)
/* 805EC1D4  7D 89 03 A6 */	mtctr r12
/* 805EC1D8  4E 80 04 21 */	bctrl 
lbl_805EC1DC:
/* 805EC1DC  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 805EC1E0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 805EC1E4  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 805EC1E8  39 61 00 40 */	addi r11, r1, 0x40
/* 805EC1EC  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 805EC1F0  4B AA ED 21 */	bl func_8009AF10
/* 805EC1F4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805EC1F8  7C 08 03 A6 */	mtlr r0
/* 805EC1FC  38 21 00 60 */	addi r1, r1, 0x60
/* 805EC200  4E 80 00 20 */	blr 
