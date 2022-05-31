lbl_805E4ECC:
/* 805E4ECC  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 805E4ED0  7C 08 02 A6 */	mflr r0
/* 805E4ED4  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 805E4ED8  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 805E4EDC  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 805E4EE0  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 805E4EE4  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 805E4EE8  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 805E4EEC  F3 A1 00 88 */	psq_st f29, 136(r1), 0, 0 /* qr0 */
/* 805E4EF0  DB 81 00 70 */	stfd f28, 0x70(r1)
/* 805E4EF4  F3 81 00 78 */	psq_st f28, 120(r1), 0, 0 /* qr0 */
/* 805E4EF8  DB 61 00 60 */	stfd f27, 0x60(r1)
/* 805E4EFC  F3 61 00 68 */	psq_st f27, 104(r1), 0, 0 /* qr0 */
/* 805E4F00  DB 41 00 50 */	stfd f26, 0x50(r1)
/* 805E4F04  F3 41 00 58 */	psq_st f26, 88(r1), 0, 0 /* qr0 */
/* 805E4F08  39 61 00 50 */	addi r11, r1, 0x50
/* 805E4F0C  4B AB 5F B1 */	bl func_8009AEBC
/* 805E4F10  80 05 00 38 */	lwz r0, 0x38(r5)
/* 805E4F14  7C 78 1B 78 */	mr r24, r3
/* 805E4F18  3C 60 80 65 */	lis r3, data_8064B4DC@ha /* 0x8064B4DC@ha */
/* 805E4F1C  81 18 00 2C */	lwz r8, 0x2c(r24)
/* 805E4F20  1C E0 00 34 */	mulli r7, r0, 0x34
/* 805E4F24  C0 23 B4 DC */	lfs f1, data_8064B4DC@l(r3)  /* 0x8064B4DC@l */
/* 805E4F28  3C C0 80 6D */	lis r6, mLE_win_data@ha /* 0x806CD728@ha */
/* 805E4F2C  C3 E5 00 18 */	lfs f31, 0x18(r5)
/* 805E4F30  C3 C5 00 1C */	lfs f30, 0x1c(r5)
/* 805E4F34  3C 60 80 65 */	lis r3, lit_488@ha /* 0x8064B4E0@ha */
/* 805E4F38  38 06 D7 28 */	addi r0, r6, mLE_win_data@l /* 0x806CD728@l */
/* 805E4F3C  FC 40 08 90 */	fmr f2, f1
/* 805E4F40  7F A0 3A 14 */	add r29, r0, r7
/* 805E4F44  83 C8 09 8C */	lwz r30, 0x98c(r8)
/* 805E4F48  C0 7D 00 00 */	lfs f3, 0(r29)
/* 805E4F4C  7C 99 23 78 */	mr r25, r4
/* 805E4F50  C0 1D 00 04 */	lfs f0, 4(r29)
/* 805E4F54  EF A3 F8 2A */	fadds f29, f3, f31
/* 805E4F58  C0 63 B4 E0 */	lfs f3, lit_488@l(r3)  /* 0x8064B4E0@l */
/* 805E4F5C  EF 80 F0 28 */	fsubs f28, f0, f30
/* 805E4F60  83 84 00 00 */	lwz r28, 0(r4)
/* 805E4F64  38 60 00 00 */	li r3, 0
/* 805E4F68  4B E2 74 85 */	bl Matrix_scale
/* 805E4F6C  3C 60 80 65 */	lis r3, lit_489@ha /* 0x8064B4E4@ha */
/* 805E4F70  FC 20 F8 90 */	fmr f1, f31
/* 805E4F74  C0 63 B4 E4 */	lfs f3, lit_489@l(r3)  /* 0x8064B4E4@l */
/* 805E4F78  FC 40 F0 90 */	fmr f2, f30
/* 805E4F7C  38 60 00 01 */	li r3, 1
/* 805E4F80  4B E2 73 81 */	bl Matrix_translate
/* 805E4F84  83 7C 02 D0 */	lwz r27, 0x2d0(r28)
/* 805E4F88  3C A0 DE 00 */	lis r5, 0xde00
/* 805E4F8C  3C 80 80 AC */	lis r4, ledit_common_mode@ha /* 0x80AC3430@ha */
/* 805E4F90  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805E4F94  90 BB 00 00 */	stw r5, 0(r27)
/* 805E4F98  38 84 34 30 */	addi r4, r4, ledit_common_mode@l /* 0x80AC3430@l */
/* 805E4F9C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805E4FA0  7F 83 E3 78 */	mr r3, r28
/* 805E4FA4  90 9B 00 04 */	stw r4, 4(r27)
/* 805E4FA8  90 BB 00 08 */	stw r5, 8(r27)
/* 805E4FAC  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 805E4FB0  90 9B 00 0C */	stw r4, 0xc(r27)
/* 805E4FB4  90 1B 00 10 */	stw r0, 0x10(r27)
/* 805E4FB8  4B E2 84 1D */	bl _Matrix_to_Mtx_new
/* 805E4FBC  90 7B 00 14 */	stw r3, 0x14(r27)
/* 805E4FC0  3C 00 E8 00 */	lis r0, 0xe800
/* 805E4FC4  3C 60 80 65 */	lis r3, lit_490@ha /* 0x8064B4E8@ha */
/* 805E4FC8  38 80 00 00 */	li r4, 0
/* 805E4FCC  90 1B 00 18 */	stw r0, 0x18(r27)
/* 805E4FD0  3C 00 DE 00 */	lis r0, 0xde00
/* 805E4FD4  C0 43 B4 E8 */	lfs f2, lit_490@l(r3)  /* 0x8064B4E8@l */
/* 805E4FD8  28 1E 00 00 */	cmplwi r30, 0
/* 805E4FDC  90 9B 00 1C */	stw r4, 0x1c(r27)
/* 805E4FE0  80 78 00 2C */	lwz r3, 0x2c(r24)
/* 805E4FE4  C0 23 09 34 */	lfs f1, 0x934(r3)
/* 805E4FE8  C0 03 09 38 */	lfs f0, 0x938(r3)
/* 805E4FEC  FC 20 08 50 */	fneg f1, f1
/* 805E4FF0  FC 00 00 50 */	fneg f0, f0
/* 805E4FF4  EC 22 00 72 */	fmuls f1, f2, f1
/* 805E4FF8  EC 02 00 32 */	fmuls f0, f2, f0
/* 805E4FFC  FC 20 08 1E */	fctiwz f1, f1
/* 805E5000  FC 00 00 1E */	fctiwz f0, f0
/* 805E5004  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 805E5008  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805E500C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 805E5010  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 805E5014  54 83 63 66 */	rlwinm r3, r4, 0xc, 0xd, 0x13
/* 805E5018  54 84 06 7E */	clrlwi r4, r4, 0x19
/* 805E501C  64 63 F2 00 */	oris r3, r3, 0xf200
/* 805E5020  54 A6 06 7E */	clrlwi r6, r5, 0x19
/* 805E5024  7C 65 33 78 */	or r5, r3, r6
/* 805E5028  38 84 00 7C */	addi r4, r4, 0x7c
/* 805E502C  38 66 00 7C */	addi r3, r6, 0x7c
/* 805E5030  90 BB 00 20 */	stw r5, 0x20(r27)
/* 805E5034  54 63 05 3E */	clrlwi r3, r3, 0x14
/* 805E5038  50 83 62 26 */	rlwimi r3, r4, 0xc, 8, 0x13
/* 805E503C  90 7B 00 24 */	stw r3, 0x24(r27)
/* 805E5040  90 1B 00 28 */	stw r0, 0x28(r27)
/* 805E5044  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 805E5048  90 1B 00 2C */	stw r0, 0x2c(r27)
/* 805E504C  3B 7B 00 30 */	addi r27, r27, 0x30
/* 805E5050  41 82 01 58 */	beq lbl_805E51A8
/* 805E5054  3C 60 80 65 */	lis r3, lit_492@ha /* 0x8064B4F0@ha */
/* 805E5058  3C A0 FA 00 */	lis r5, 0xFA00 /* 0xFA0000FF@ha */
/* 805E505C  C0 03 B4 F0 */	lfs f0, lit_492@l(r3)  /* 0x8064B4F0@l */
/* 805E5060  3C 80 80 65 */	lis r4, lit_491@ha /* 0x8064B4EC@ha */
/* 805E5064  38 05 00 FF */	addi r0, r5, 0x00FF /* 0xFA0000FF@l */
/* 805E5068  C0 44 B4 EC */	lfs f2, lit_491@l(r4)  /* 0x8064B4EC@l */
/* 805E506C  EC 3C 00 28 */	fsubs f1, f28, f0
/* 805E5070  3C 60 80 65 */	lis r3, lit_494@ha /* 0x8064B4F8@ha */
/* 805E5074  90 1B 00 00 */	stw r0, 0(r27)
/* 805E5078  3C 80 80 65 */	lis r4, lit_493@ha /* 0x8064B4F4@ha */
/* 805E507C  C0 03 B4 F8 */	lfs f0, lit_494@l(r3)  /* 0x8064B4F8@l */
/* 805E5080  3B 40 00 00 */	li r26, 0
/* 805E5084  EC 42 08 2A */	fadds f2, f2, f1
/* 805E5088  88 1D 00 29 */	lbz r0, 0x29(r29)
/* 805E508C  88 7D 00 28 */	lbz r3, 0x28(r29)
/* 805E5090  EC 1D 00 28 */	fsubs f0, f29, f0
/* 805E5094  C0 24 B4 F4 */	lfs f1, lit_493@l(r4)  /* 0x8064B4F4@l */
/* 805E5098  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 805E509C  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 805E50A0  88 BD 00 2A */	lbz r5, 0x2a(r29)
/* 805E50A4  3C 60 80 A7 */	lis r3, lat_sousa_spT_model@ha /* 0x80A6EA10@ha */
/* 805E50A8  FF 60 10 50 */	fneg f27, f2
/* 805E50AC  50 A0 44 2E */	rlwimi r0, r5, 8, 0x10, 0x17
/* 805E50B0  EF 41 00 2A */	fadds f26, f1, f0
/* 805E50B4  60 00 00 FF */	ori r0, r0, 0xff
/* 805E50B8  3B E3 EA 10 */	addi r31, r3, lat_sousa_spT_model@l /* 0x80A6EA10@l */
/* 805E50BC  90 1B 00 04 */	stw r0, 4(r27)
/* 805E50C0  3B 7B 00 08 */	addi r27, r27, 8
/* 805E50C4  48 00 00 B8 */	b lbl_805E517C
lbl_805E50C8:
/* 805E50C8  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 805E50CC  7C 03 D0 AE */	lbzx r0, r3, r26
/* 805E50D0  28 00 00 D3 */	cmplwi r0, 0xd3
/* 805E50D4  40 82 00 A4 */	bne lbl_805E5178
/* 805E50D8  7F 44 D3 78 */	mr r4, r26
/* 805E50DC  38 A0 00 01 */	li r5, 1
/* 805E50E0  4B DC A5 F1 */	bl mFont_GetStringWidth
/* 805E50E4  7C 77 1B 78 */	mr r23, r3
/* 805E50E8  4B E2 70 ED */	bl Matrix_push
/* 805E50EC  6E E3 80 00 */	xoris r3, r23, 0x8000
/* 805E50F0  3C 00 43 30 */	lis r0, 0x4330
/* 805E50F4  3C 80 80 65 */	lis r4, lit_500@ha /* 0x8064B50C@ha */
/* 805E50F8  90 61 00 1C */	stw r3, 0x1c(r1)
/* 805E50FC  38 A4 B5 0C */	addi r5, r4, lit_500@l /* 0x8064B50C@l */
/* 805E5100  3C 60 80 65 */	lis r3, lit_495@ha /* 0x8064B4FC@ha */
/* 805E5104  90 01 00 18 */	stw r0, 0x18(r1)
/* 805E5108  38 83 B4 FC */	addi r4, r3, lit_495@l /* 0x8064B4FC@l */
/* 805E510C  C8 25 00 00 */	lfd f1, 0(r5)
/* 805E5110  FC 40 D8 90 */	fmr f2, f27
/* 805E5114  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 805E5118  38 60 00 01 */	li r3, 1
/* 805E511C  C0 64 00 00 */	lfs f3, 0(r4)
/* 805E5120  EC 00 08 28 */	fsubs f0, f0, f1
/* 805E5124  EC 3A 00 2A */	fadds f1, f26, f0
/* 805E5128  4B E2 71 D9 */	bl Matrix_translate
/* 805E512C  3C 60 80 65 */	lis r3, lit_488@ha /* 0x8064B4E0@ha */
/* 805E5130  3C A0 80 65 */	lis r5, lit_496@ha /* 0x8064B500@ha */
/* 805E5134  38 83 B4 E0 */	addi r4, r3, lit_488@l /* 0x8064B4E0@l */
/* 805E5138  C0 25 B5 00 */	lfs f1, lit_496@l(r5)  /* 0x8064B500@l */
/* 805E513C  C0 44 00 00 */	lfs f2, 0(r4)
/* 805E5140  38 60 00 01 */	li r3, 1
/* 805E5144  FC 60 10 90 */	fmr f3, f2
/* 805E5148  4B E2 72 A5 */	bl Matrix_scale
/* 805E514C  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805E5150  7F 83 E3 78 */	mr r3, r28
/* 805E5154  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805E5158  90 1B 00 00 */	stw r0, 0(r27)
/* 805E515C  4B E2 82 79 */	bl _Matrix_to_Mtx_new
/* 805E5160  90 7B 00 04 */	stw r3, 4(r27)
/* 805E5164  3C 00 DE 00 */	lis r0, 0xde00
/* 805E5168  90 1B 00 08 */	stw r0, 8(r27)
/* 805E516C  93 FB 00 0C */	stw r31, 0xc(r27)
/* 805E5170  3B 7B 00 10 */	addi r27, r27, 0x10
/* 805E5174  4B E2 70 A1 */	bl Matrix_pull
lbl_805E5178:
/* 805E5178  3B 5A 00 01 */	addi r26, r26, 1
lbl_805E517C:
/* 805E517C  A8 1E 00 1E */	lha r0, 0x1e(r30)
/* 805E5180  7C 1A 00 00 */	cmpw r26, r0
/* 805E5184  41 80 FF 44 */	blt lbl_805E50C8
/* 805E5188  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805E518C  7F 77 DB 78 */	mr r23, r27
/* 805E5190  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805E5194  7F 83 E3 78 */	mr r3, r28
/* 805E5198  90 1B 00 00 */	stw r0, 0(r27)
/* 805E519C  3B 7B 00 08 */	addi r27, r27, 8
/* 805E51A0  4B E2 82 35 */	bl _Matrix_to_Mtx_new
/* 805E51A4  90 77 00 04 */	stw r3, 4(r23)
lbl_805E51A8:
/* 805E51A8  28 1E 00 00 */	cmplwi r30, 0
/* 805E51AC  93 7C 02 D0 */	stw r27, 0x2d0(r28)
/* 805E51B0  41 82 01 34 */	beq lbl_805E52E4
/* 805E51B4  80 98 00 2C */	lwz r4, 0x2c(r24)
/* 805E51B8  7F 83 E3 78 */	mr r3, r28
/* 805E51BC  81 84 09 50 */	lwz r12, 0x950(r4)
/* 805E51C0  7D 89 03 A6 */	mtctr r12
/* 805E51C4  4E 80 04 21 */	bctrl 
/* 805E51C8  C0 7D 00 14 */	lfs f3, 0x14(r29)
/* 805E51CC  38 80 00 01 */	li r4, 1
/* 805E51D0  38 00 00 00 */	li r0, 0
/* 805E51D4  7F 23 CB 78 */	mr r3, r25
/* 805E51D8  90 81 00 08 */	stw r4, 8(r1)
/* 805E51DC  FC 80 18 90 */	fmr f4, f3
/* 805E51E0  38 C0 00 FF */	li r6, 0xff
/* 805E51E4  38 E0 00 FF */	li r7, 0xff
/* 805E51E8  90 01 00 0C */	stw r0, 0xc(r1)
/* 805E51EC  39 00 00 FF */	li r8, 0xff
/* 805E51F0  39 20 00 FF */	li r9, 0xff
/* 805E51F4  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 805E51F8  39 40 00 00 */	li r10, 0
/* 805E51FC  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 805E5200  EC 21 F8 2A */	fadds f1, f1, f31
/* 805E5204  80 9D 00 18 */	lwz r4, 0x18(r29)
/* 805E5208  EC 40 F0 28 */	fsubs f2, f0, f30
/* 805E520C  80 BD 00 1C */	lwz r5, 0x1c(r29)
/* 805E5210  4B DC AE 99 */	bl mFont_SetLineStrings
/* 805E5214  C0 7D 00 08 */	lfs f3, 8(r29)
/* 805E5218  38 60 00 01 */	li r3, 1
/* 805E521C  38 00 00 00 */	li r0, 0
/* 805E5220  FC 20 E8 90 */	fmr f1, f29
/* 805E5224  90 61 00 08 */	stw r3, 8(r1)
/* 805E5228  FC 40 E0 90 */	fmr f2, f28
/* 805E522C  FC 80 18 90 */	fmr f4, f3
/* 805E5230  7F 23 CB 78 */	mr r3, r25
/* 805E5234  90 01 00 0C */	stw r0, 0xc(r1)
/* 805E5238  39 20 00 FF */	li r9, 0xff
/* 805E523C  39 40 00 00 */	li r10, 0
/* 805E5240  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 805E5244  A8 BE 00 18 */	lha r5, 0x18(r30)
/* 805E5248  88 DD 00 28 */	lbz r6, 0x28(r29)
/* 805E524C  88 FD 00 29 */	lbz r7, 0x29(r29)
/* 805E5250  89 1D 00 2A */	lbz r8, 0x2a(r29)
/* 805E5254  4B DC AE 55 */	bl mFont_SetLineStrings
/* 805E5258  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 805E525C  3C E0 43 30 */	lis r7, 0x4330
/* 805E5260  80 A3 61 38 */	lwz r5, debug_mode@l(r3)  /* 0x81166138@l */
/* 805E5264  3C 80 80 65 */	lis r4, lit_500@ha /* 0x8064B50C@ha */
/* 805E5268  A8 1E 00 26 */	lha r0, 0x26(r30)
/* 805E526C  39 04 B5 0C */	addi r8, r4, lit_500@l /* 0x8064B50C@l */
/* 805E5270  A8 A5 1B 28 */	lha r5, 0x1b28(r5)
/* 805E5274  3C 60 80 65 */	lis r3, lit_497@ha /* 0x8064B504@ha */
/* 805E5278  38 C3 B5 04 */	addi r6, r3, lit_497@l /* 0x8064B504@l */
/* 805E527C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805E5280  6C A4 80 00 */	xoris r4, r5, 0x8000
/* 805E5284  80 78 00 2C */	lwz r3, 0x2c(r24)
/* 805E5288  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805E528C  FC 40 E0 90 */	fmr f2, f28
/* 805E5290  80 A3 09 8C */	lwz r5, 0x98c(r3)
/* 805E5294  7F 03 C3 78 */	mr r3, r24
/* 805E5298  90 E1 00 18 */	stw r7, 0x18(r1)
/* 805E529C  7F 24 CB 78 */	mr r4, r25
/* 805E52A0  C8 A8 00 00 */	lfd f5, 0(r8)
/* 805E52A4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 805E52A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E52AC  EC 80 28 28 */	fsubs f4, f0, f5
/* 805E52B0  C0 66 00 00 */	lfs f3, 0(r6)
/* 805E52B4  90 E1 00 10 */	stw r7, 0x10(r1)
/* 805E52B8  C0 1D 00 08 */	lfs f0, 8(r29)
/* 805E52BC  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 805E52C0  EC 64 18 28 */	fsubs f3, f4, f3
/* 805E52C4  81 85 00 30 */	lwz r12, 0x30(r5)
/* 805E52C8  EC 21 28 28 */	fsubs f1, f1, f5
/* 805E52CC  EC 01 00 32 */	fmuls f0, f1, f0
/* 805E52D0  EC 03 00 2A */	fadds f0, f3, f0
/* 805E52D4  EF BD 00 2A */	fadds f29, f29, f0
/* 805E52D8  FC 20 E8 90 */	fmr f1, f29
/* 805E52DC  7D 89 03 A6 */	mtctr r12
/* 805E52E0  4E 80 04 21 */	bctrl 
lbl_805E52E4:
/* 805E52E4  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 805E52E8  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 805E52EC  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 805E52F0  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 805E52F4  E3 A1 00 88 */	psq_l f29, 136(r1), 0, 0 /* qr0 */
/* 805E52F8  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 805E52FC  E3 81 00 78 */	psq_l f28, 120(r1), 0, 0 /* qr0 */
/* 805E5300  CB 81 00 70 */	lfd f28, 0x70(r1)
/* 805E5304  E3 61 00 68 */	psq_l f27, 104(r1), 0, 0 /* qr0 */
/* 805E5308  CB 61 00 60 */	lfd f27, 0x60(r1)
/* 805E530C  E3 41 00 58 */	psq_l f26, 88(r1), 0, 0 /* qr0 */
/* 805E5310  39 61 00 50 */	addi r11, r1, 0x50
/* 805E5314  CB 41 00 50 */	lfd f26, 0x50(r1)
/* 805E5318  4B AB 5B F1 */	bl func_8009AF08
/* 805E531C  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 805E5320  7C 08 03 A6 */	mtlr r0
/* 805E5324  38 21 00 B0 */	addi r1, r1, 0xb0
/* 805E5328  4E 80 00 20 */	blr 
