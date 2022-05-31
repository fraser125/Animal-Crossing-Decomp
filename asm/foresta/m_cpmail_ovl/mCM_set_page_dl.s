lbl_805CC8D4:
/* 805CC8D4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805CC8D8  7C 08 02 A6 */	mflr r0
/* 805CC8DC  90 01 00 74 */	stw r0, 0x74(r1)
/* 805CC8E0  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 805CC8E4  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 805CC8E8  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 805CC8EC  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 805CC8F0  39 61 00 50 */	addi r11, r1, 0x50
/* 805CC8F4  4B AC E5 C9 */	bl func_8009AEBC
/* 805CC8F8  7C 77 1B 78 */	mr r23, r3
/* 805CC8FC  7C FB 3B 78 */	mr r27, r7
/* 805CC900  80 E3 00 2C */	lwz r7, 0x2c(r3)
/* 805CC904  1D 5B 00 14 */	mulli r10, r27, 0x14
/* 805CC908  7C 98 23 78 */	mr r24, r4
/* 805CC90C  3D 20 80 6D */	lis r9, data_806CB750@ha /* 0x806CB750@ha */
/* 805CC910  83 C7 09 C0 */	lwz r30, 0x9c0(r7)
/* 805CC914  38 09 B7 50 */	addi r0, r9, data_806CB750@l /* 0x806CB750@l */
/* 805CC918  7C B9 2B 78 */	mr r25, r5
/* 805CC91C  C3 E4 00 18 */	lfs f31, 0x18(r4)
/* 805CC920  7C DA 33 78 */	mr r26, r6
/* 805CC924  7D 1C 43 78 */	mr r28, r8
/* 805CC928  7F 65 DB 78 */	mr r5, r27
/* 805CC92C  7F E0 52 14 */	add r31, r0, r10
/* 805CC930  4B FF FF 71 */	bl mCM_get_page_posY
/* 805CC934  3C 60 80 65 */	lis r3, lit_627@ha /* 0x8064AFC4@ha */
/* 805CC938  FC 00 08 90 */	fmr f0, f1
/* 805CC93C  38 83 AF C4 */	addi r4, r3, lit_627@l /* 0x8064AFC4@l */
/* 805CC940  C0 24 00 00 */	lfs f1, 0(r4)
/* 805CC944  3C 60 80 65 */	lis r3, lit_556@ha /* 0x8064AFC0@ha */
/* 805CC948  C0 63 AF C0 */	lfs f3, lit_556@l(r3)  /* 0x8064AFC0@l */
/* 805CC94C  FF C0 00 90 */	fmr f30, f0
/* 805CC950  FC 40 08 90 */	fmr f2, f1
/* 805CC954  38 60 00 00 */	li r3, 0
/* 805CC958  4B E3 FA 95 */	bl Matrix_scale
/* 805CC95C  3C 60 80 65 */	lis r3, lit_628@ha /* 0x8064AFC8@ha */
/* 805CC960  FC 20 F8 90 */	fmr f1, f31
/* 805CC964  C0 63 AF C8 */	lfs f3, lit_628@l(r3)  /* 0x8064AFC8@l */
/* 805CC968  FC 40 F0 90 */	fmr f2, f30
/* 805CC96C  38 60 00 01 */	li r3, 1
/* 805CC970  4B E3 F9 91 */	bl Matrix_translate
/* 805CC974  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805CC978  83 BA 02 D0 */	lwz r29, 0x2d0(r26)
/* 805CC97C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805CC980  7F 43 D3 78 */	mr r3, r26
/* 805CC984  90 1D 00 00 */	stw r0, 0(r29)
/* 805CC988  4B E4 0A 4D */	bl _Matrix_to_Mtx_new
/* 805CC98C  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 805CC990  90 7D 00 04 */	stw r3, 4(r29)
/* 805CC994  38 04 00 20 */	addi r0, r4, 0x0020 /* 0xDB060020@l */
/* 805CC998  2C 1C 00 00 */	cmpwi r28, 0
/* 805CC99C  90 1D 00 08 */	stw r0, 8(r29)
/* 805CC9A0  80 1F 00 04 */	lwz r0, 4(r31)
/* 805CC9A4  90 1D 00 0C */	stw r0, 0xc(r29)
/* 805CC9A8  41 82 00 D4 */	beq lbl_805CCA7C
/* 805CC9AC  3C 00 DE 00 */	lis r0, 0xde00
/* 805CC9B0  3C 60 80 A1 */	lis r3, ctl_win_mode@ha /* 0x80A169E0@ha */
/* 805CC9B4  90 1D 00 10 */	stw r0, 0x10(r29)
/* 805CC9B8  38 83 69 E0 */	addi r4, r3, ctl_win_mode@l /* 0x80A169E0@l */
/* 805CC9BC  3C C0 FD 44 */	lis r6, 0xFD44 /* 0xFD441C1F@ha */
/* 805CC9C0  3C A0 D2 F1 */	lis r5, 0xD2F1 /* 0xD2F0E500@ha */
/* 805CC9C4  3C 60 F0 8E */	lis r3, 0xF08E /* 0xF08E4010@ha */
/* 805CC9C8  90 9D 00 14 */	stw r4, 0x14(r29)
/* 805CC9CC  38 83 40 10 */	addi r4, r3, 0x4010 /* 0xF08E4010@l */
/* 805CC9D0  39 06 1C 1F */	addi r8, r6, 0x1C1F /* 0xFD441C1F@l */
/* 805CC9D4  90 9D 00 18 */	stw r4, 0x18(r29)
/* 805CC9D8  3C 60 80 65 */	lis r3, lit_629@ha /* 0x8064AFCC@ha */
/* 805CC9DC  38 83 AF CC */	addi r4, r3, lit_629@l /* 0x8064AFCC@l */
/* 805CC9E0  38 E5 E5 00 */	addi r7, r5, 0xE500 /* 0xD2F0E500@l */
/* 805CC9E4  81 3F 00 08 */	lwz r9, 8(r31)
/* 805CC9E8  3C 60 80 A1 */	lis r3, ctl_win_model@ha /* 0x80A16A40@ha */
/* 805CC9EC  C0 44 00 00 */	lfs f2, 0(r4)
/* 805CC9F0  3C C0 E8 00 */	lis r6, 0xe800
/* 805CC9F4  91 3D 00 1C */	stw r9, 0x1c(r29)
/* 805CC9F8  38 A0 00 00 */	li r5, 0
/* 805CC9FC  38 63 6A 40 */	addi r3, r3, ctl_win_model@l /* 0x80A16A40@l */
/* 805CCA00  91 1D 00 20 */	stw r8, 0x20(r29)
/* 805CCA04  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 805CCA08  90 9D 00 24 */	stw r4, 0x24(r29)
/* 805CCA0C  90 FD 00 28 */	stw r7, 0x28(r29)
/* 805CCA10  90 DD 00 30 */	stw r6, 0x30(r29)
/* 805CCA14  90 BD 00 34 */	stw r5, 0x34(r29)
/* 805CCA18  80 97 00 2C */	lwz r4, 0x2c(r23)
/* 805CCA1C  C0 04 09 34 */	lfs f0, 0x934(r4)
/* 805CCA20  C0 24 09 38 */	lfs f1, 0x938(r4)
/* 805CCA24  FC 00 00 50 */	fneg f0, f0
/* 805CCA28  FC 20 08 50 */	fneg f1, f1
/* 805CCA2C  EC 02 00 32 */	fmuls f0, f2, f0
/* 805CCA30  EC 22 00 72 */	fmuls f1, f2, f1
/* 805CCA34  FC 00 00 1E */	fctiwz f0, f0
/* 805CCA38  FC 20 08 1E */	fctiwz f1, f1
/* 805CCA3C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805CCA40  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 805CCA44  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 805CCA48  54 84 53 AA */	rlwinm r4, r4, 0xa, 0xe, 0x15
/* 805CCA4C  64 85 F2 00 */	oris r5, r4, 0xf200
/* 805CCA50  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 805CCA54  60 A5 00 1F */	ori r5, r5, 0x1f
/* 805CCA58  54 C4 53 AA */	rlwinm r4, r6, 0xa, 0xe, 0x15
/* 805CCA5C  90 BD 00 38 */	stw r5, 0x38(r29)
/* 805CCA60  64 84 80 00 */	oris r4, r4, 0x8000
/* 805CCA64  60 84 00 1F */	ori r4, r4, 0x1f
/* 805CCA68  90 9D 00 3C */	stw r4, 0x3c(r29)
/* 805CCA6C  90 1D 00 40 */	stw r0, 0x40(r29)
/* 805CCA70  90 7D 00 44 */	stw r3, 0x44(r29)
/* 805CCA74  3B BD 00 48 */	addi r29, r29, 0x48
/* 805CCA78  48 00 00 1C */	b lbl_805CCA94
lbl_805CCA7C:
/* 805CCA7C  3C 00 DE 00 */	lis r0, 0xde00
/* 805CCA80  3C 60 80 A1 */	lis r3, ctl_tag_mode@ha /* 0x80A16A10@ha */
/* 805CCA84  90 1D 00 10 */	stw r0, 0x10(r29)
/* 805CCA88  38 03 6A 10 */	addi r0, r3, ctl_tag_mode@l /* 0x80A16A10@l */
/* 805CCA8C  90 1D 00 14 */	stw r0, 0x14(r29)
/* 805CCA90  3B BD 00 18 */	addi r29, r29, 0x18
lbl_805CCA94:
/* 805CCA94  3C 80 DE 00 */	lis r4, 0xde00
/* 805CCA98  2C 1C 00 00 */	cmpwi r28, 0
/* 805CCA9C  90 9D 00 00 */	stw r4, 0(r29)
/* 805CCAA0  80 1F 00 00 */	lwz r0, 0(r31)
/* 805CCAA4  90 1D 00 04 */	stw r0, 4(r29)
/* 805CCAA8  3B BD 00 08 */	addi r29, r29, 8
/* 805CCAAC  41 82 00 18 */	beq lbl_805CCAC4
/* 805CCAB0  3C 60 80 A1 */	lis r3, ctl_win1_kageT_model@ha /* 0x80A16940@ha */
/* 805CCAB4  90 9D 00 00 */	stw r4, 0(r29)
/* 805CCAB8  38 03 69 40 */	addi r0, r3, ctl_win1_kageT_model@l /* 0x80A16940@l */
/* 805CCABC  90 1D 00 04 */	stw r0, 4(r29)
/* 805CCAC0  3B BD 00 08 */	addi r29, r29, 8
lbl_805CCAC4:
/* 805CCAC4  88 1E 0B B2 */	lbz r0, 0xbb2(r30)
/* 805CCAC8  7C 00 D8 00 */	cmpw r0, r27
/* 805CCACC  40 82 00 8C */	bne lbl_805CCB58
/* 805CCAD0  6F 63 80 00 */	xoris r3, r27, 0x8000
/* 805CCAD4  3C 00 43 30 */	lis r0, 0x4330
/* 805CCAD8  3C 80 80 65 */	lis r4, lit_460@ha /* 0x8064AFB4@ha */
/* 805CCADC  90 61 00 1C */	stw r3, 0x1c(r1)
/* 805CCAE0  38 64 AF B4 */	addi r3, r4, lit_460@l /* 0x8064AFB4@l */
/* 805CCAE4  90 01 00 18 */	stw r0, 0x18(r1)
/* 805CCAE8  3C 80 80 65 */	lis r4, lit_632@ha /* 0x8064AFD8@ha */
/* 805CCAEC  C8 23 00 00 */	lfd f1, 0(r3)
/* 805CCAF0  3C 60 80 65 */	lis r3, lit_631@ha /* 0x8064AFD4@ha */
/* 805CCAF4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 805CCAF8  38 A3 AF D4 */	addi r5, r3, lit_631@l /* 0x8064AFD4@l */
/* 805CCAFC  C0 44 AF D8 */	lfs f2, lit_632@l(r4)  /* 0x8064AFD8@l */
/* 805CCB00  3C 60 80 65 */	lis r3, data_8064AFA4@ha /* 0x8064AFA4@ha */
/* 805CCB04  EC 00 08 28 */	fsubs f0, f0, f1
/* 805CCB08  3C 80 80 65 */	lis r4, lit_630@ha /* 0x8064AFD0@ha */
/* 805CCB0C  C0 63 AF A4 */	lfs f3, data_8064AFA4@l(r3)  /* 0x8064AFA4@l */
/* 805CCB10  38 60 00 01 */	li r3, 1
/* 805CCB14  C0 85 00 00 */	lfs f4, 0(r5)
/* 805CCB18  EC 02 00 32 */	fmuls f0, f2, f0
/* 805CCB1C  C0 24 AF D0 */	lfs f1, lit_630@l(r4)  /* 0x8064AFD0@l */
/* 805CCB20  EC 44 00 28 */	fsubs f2, f4, f0
/* 805CCB24  4B E3 F7 DD */	bl Matrix_translate
/* 805CCB28  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805CCB2C  7F 43 D3 78 */	mr r3, r26
/* 805CCB30  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805CCB34  90 1D 00 00 */	stw r0, 0(r29)
/* 805CCB38  4B E4 08 9D */	bl _Matrix_to_Mtx_new
/* 805CCB3C  90 7D 00 04 */	stw r3, 4(r29)
/* 805CCB40  3C 00 DE 00 */	lis r0, 0xde00
/* 805CCB44  3C 60 80 A1 */	lis r3, ctl_sentaku_taguT_model@ha /* 0x80A0E060@ha */
/* 805CCB48  90 1D 00 08 */	stw r0, 8(r29)
/* 805CCB4C  38 03 E0 60 */	addi r0, r3, ctl_sentaku_taguT_model@l /* 0x80A0E060@l */
/* 805CCB50  90 1D 00 0C */	stw r0, 0xc(r29)
/* 805CCB54  3B BD 00 10 */	addi r29, r29, 0x10
lbl_805CCB58:
/* 805CCB58  2C 1C 00 00 */	cmpwi r28, 0
/* 805CCB5C  93 BA 02 D0 */	stw r29, 0x2d0(r26)
/* 805CCB60  41 82 02 00 */	beq lbl_805CCD60
/* 805CCB64  FC 20 F8 90 */	fmr f1, f31
/* 805CCB68  7E E3 BB 78 */	mr r3, r23
/* 805CCB6C  FC 40 F0 90 */	fmr f2, f30
/* 805CCB70  7F 44 D3 78 */	mr r4, r26
/* 805CCB74  7F 65 DB 78 */	mr r5, r27
/* 805CCB78  4B FF FB 11 */	bl mCM_set_mail
/* 805CCB7C  80 97 00 2C */	lwz r4, 0x2c(r23)
/* 805CCB80  7F 43 D3 78 */	mr r3, r26
/* 805CCB84  81 84 09 50 */	lwz r12, 0x950(r4)
/* 805CCB88  7D 89 03 A6 */	mtctr r12
/* 805CCB8C  4E 80 04 21 */	bctrl 
/* 805CCB90  3C 60 80 65 */	lis r3, lit_634@ha /* 0x8064AFE0@ha */
/* 805CCB94  3C 80 80 65 */	lis r4, lit_633@ha /* 0x8064AFDC@ha */
/* 805CCB98  C0 03 AF E0 */	lfs f0, lit_634@l(r3)  /* 0x8064AFE0@l */
/* 805CCB9C  80 18 00 04 */	lwz r0, 4(r24)
/* 805CCBA0  EC 00 F8 2A */	fadds f0, f0, f31
/* 805CCBA4  C0 24 AF DC */	lfs f1, lit_633@l(r4)  /* 0x8064AFDC@l */
/* 805CCBA8  2C 00 00 02 */	cmpwi r0, 2
/* 805CCBAC  EF E1 00 2A */	fadds f31, f1, f0
/* 805CCBB0  40 82 00 5C */	bne lbl_805CCC0C
/* 805CCBB4  80 18 00 14 */	lwz r0, 0x14(r24)
/* 805CCBB8  2C 00 00 0A */	cmpwi r0, 0xa
/* 805CCBBC  40 82 00 50 */	bne lbl_805CCC0C
/* 805CCBC0  80 77 00 2C */	lwz r3, 0x2c(r23)
/* 805CCBC4  3B A0 00 0C */	li r29, 0xc
/* 805CCBC8  80 63 09 8C */	lwz r3, 0x98c(r3)
/* 805CCBCC  28 03 00 00 */	cmplwi r3, 0
/* 805CCBD0  41 82 00 A4 */	beq lbl_805CCC74
/* 805CCBD4  A8 63 00 1C */	lha r3, 0x1c(r3)
/* 805CCBD8  3C 00 43 30 */	lis r0, 0x4330
/* 805CCBDC  3C 80 80 65 */	lis r4, lit_460@ha /* 0x8064AFB4@ha */
/* 805CCBE0  3C A0 80 65 */	lis r5, lit_635@ha /* 0x8064AFE4@ha */
/* 805CCBE4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805CCBE8  90 01 00 18 */	stw r0, 0x18(r1)
/* 805CCBEC  C8 24 AF B4 */	lfd f1, lit_460@l(r4)  /* 0x8064AFB4@l */
/* 805CCBF0  90 61 00 1C */	stw r3, 0x1c(r1)
/* 805CCBF4  C0 45 AF E4 */	lfs f2, lit_635@l(r5)  /* 0x8064AFE4@l */
/* 805CCBF8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 805CCBFC  EC 00 08 28 */	fsubs f0, f0, f1
/* 805CCC00  EC 02 00 32 */	fmuls f0, f2, f0
/* 805CCC04  EF FF 00 28 */	fsubs f31, f31, f0
/* 805CCC08  48 00 00 6C */	b lbl_805CCC74
lbl_805CCC0C:
/* 805CCC0C  1F 5B 00 0C */	mulli r26, r27, 0xc
/* 805CCC10  80 1E 00 00 */	lwz r0, 0(r30)
/* 805CCC14  38 80 00 0C */	li r4, 0xc
/* 805CCC18  38 A0 00 20 */	li r5, 0x20
/* 805CCC1C  38 7A 00 04 */	addi r3, r26, 4
/* 805CCC20  7C 60 1A 14 */	add r3, r0, r3
/* 805CCC24  4B DE FA 01 */	bl func_803BC624
/* 805CCC28  80 1E 00 00 */	lwz r0, 0(r30)
/* 805CCC2C  7C 7D 1B 78 */	mr r29, r3
/* 805CCC30  38 7A 00 04 */	addi r3, r26, 4
/* 805CCC34  38 A0 00 01 */	li r5, 1
/* 805CCC38  7F A4 EB 78 */	mr r4, r29
/* 805CCC3C  7C 60 1A 14 */	add r3, r0, r3
/* 805CCC40  4B DE 2A 91 */	bl mFont_GetStringWidth
/* 805CCC44  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805CCC48  3C 00 43 30 */	lis r0, 0x4330
/* 805CCC4C  90 61 00 1C */	stw r3, 0x1c(r1)
/* 805CCC50  3C 80 80 65 */	lis r4, lit_460@ha /* 0x8064AFB4@ha */
/* 805CCC54  3C 60 80 65 */	lis r3, lit_635@ha /* 0x8064AFE4@ha */
/* 805CCC58  C8 44 AF B4 */	lfd f2, lit_460@l(r4)  /* 0x8064AFB4@l */
/* 805CCC5C  90 01 00 18 */	stw r0, 0x18(r1)
/* 805CCC60  C0 03 AF E4 */	lfs f0, lit_635@l(r3)  /* 0x8064AFE4@l */
/* 805CCC64  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 805CCC68  EC 21 10 28 */	fsubs f1, f1, f2
/* 805CCC6C  EC 00 00 72 */	fmuls f0, f0, f1
/* 805CCC70  EF FF 00 28 */	fsubs f31, f31, f0
lbl_805CCC74:
/* 805CCC74  3C 80 80 65 */	lis r4, lit_637@ha /* 0x8064AFEC@ha */
/* 805CCC78  3C A0 80 65 */	lis r5, lit_636@ha /* 0x8064AFE8@ha */
/* 805CCC7C  C0 04 AF EC */	lfs f0, lit_637@l(r4)  /* 0x8064AFEC@l */
/* 805CCC80  38 00 00 01 */	li r0, 1
/* 805CCC84  C0 45 AF E8 */	lfs f2, lit_636@l(r5)  /* 0x8064AFE8@l */
/* 805CCC88  1C 9B 00 0C */	mulli r4, r27, 0xc
/* 805CCC8C  3C 60 80 65 */	lis r3, lit_638@ha /* 0x8064AFF0@ha */
/* 805CCC90  EC 20 F0 2A */	fadds f1, f0, f30
/* 805CCC94  C0 03 AF F0 */	lfs f0, lit_638@l(r3)  /* 0x8064AFF0@l */
/* 805CCC98  7F A5 EB 78 */	mr r5, r29
/* 805CCC9C  90 01 00 08 */	stw r0, 8(r1)
/* 805CCCA0  EC 01 00 28 */	fsubs f0, f1, f0
/* 805CCCA4  3C 60 80 65 */	lis r3, lit_556@ha /* 0x8064AFC0@ha */
/* 805CCCA8  C0 63 AF C0 */	lfs f3, lit_556@l(r3)  /* 0x8064AFC0@l */
/* 805CCCAC  38 00 00 00 */	li r0, 0
/* 805CCCB0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805CCCB4  FC 20 F8 90 */	fmr f1, f31
/* 805CCCB8  EF C2 00 28 */	fsubs f30, f2, f0
/* 805CCCBC  80 1E 00 00 */	lwz r0, 0(r30)
/* 805CCCC0  38 84 00 04 */	addi r4, r4, 4
/* 805CCCC4  FC 80 18 90 */	fmr f4, f3
/* 805CCCC8  88 DF 00 10 */	lbz r6, 0x10(r31)
/* 805CCCCC  7F 23 CB 78 */	mr r3, r25
/* 805CCCD0  FC 40 F0 90 */	fmr f2, f30
/* 805CCCD4  88 FF 00 11 */	lbz r7, 0x11(r31)
/* 805CCCD8  89 1F 00 12 */	lbz r8, 0x12(r31)
/* 805CCCDC  7C 80 22 14 */	add r4, r0, r4
/* 805CCCE0  39 20 00 FF */	li r9, 0xff
/* 805CCCE4  39 40 00 00 */	li r10, 0
/* 805CCCE8  4B DE 33 C1 */	bl mFont_SetLineStrings
/* 805CCCEC  80 18 00 04 */	lwz r0, 4(r24)
/* 805CCCF0  2C 00 00 02 */	cmpwi r0, 2
/* 805CCCF4  40 82 00 6C */	bne lbl_805CCD60
/* 805CCCF8  80 18 00 14 */	lwz r0, 0x14(r24)
/* 805CCCFC  2C 00 00 0A */	cmpwi r0, 0xa
/* 805CCD00  40 82 00 60 */	bne lbl_805CCD60
/* 805CCD04  80 77 00 2C */	lwz r3, 0x2c(r23)
/* 805CCD08  80 C3 09 8C */	lwz r6, 0x98c(r3)
/* 805CCD0C  28 06 00 00 */	cmplwi r6, 0
/* 805CCD10  41 82 00 50 */	beq lbl_805CCD60
/* 805CCD14  A8 66 00 26 */	lha r3, 0x26(r6)
/* 805CCD18  3C 00 43 30 */	lis r0, 0x4330
/* 805CCD1C  3C 80 80 65 */	lis r4, lit_460@ha /* 0x8064AFB4@ha */
/* 805CCD20  3C A0 80 65 */	lis r5, lit_639@ha /* 0x8064AFF4@ha */
/* 805CCD24  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805CCD28  C8 24 AF B4 */	lfd f1, lit_460@l(r4)  /* 0x8064AFB4@l */
/* 805CCD2C  90 61 00 1C */	stw r3, 0x1c(r1)
/* 805CCD30  FC 40 F0 90 */	fmr f2, f30
/* 805CCD34  C0 65 AF F4 */	lfs f3, lit_639@l(r5)  /* 0x8064AFF4@l */
/* 805CCD38  7E E3 BB 78 */	mr r3, r23
/* 805CCD3C  90 01 00 18 */	stw r0, 0x18(r1)
/* 805CCD40  7F 24 CB 78 */	mr r4, r25
/* 805CCD44  81 86 00 30 */	lwz r12, 0x30(r6)
/* 805CCD48  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 805CCD4C  EC 00 08 28 */	fsubs f0, f0, f1
/* 805CCD50  EC 1F 00 2A */	fadds f0, f31, f0
/* 805CCD54  EC 23 00 2A */	fadds f1, f3, f0
/* 805CCD58  7D 89 03 A6 */	mtctr r12
/* 805CCD5C  4E 80 04 21 */	bctrl 
lbl_805CCD60:
/* 805CCD60  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 805CCD64  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 805CCD68  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 805CCD6C  39 61 00 50 */	addi r11, r1, 0x50
/* 805CCD70  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 805CCD74  4B AC E1 95 */	bl func_8009AF08
/* 805CCD78  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805CCD7C  7C 08 03 A6 */	mtlr r0
/* 805CCD80  38 21 00 70 */	addi r1, r1, 0x70
/* 805CCD84  4E 80 00 20 */	blr 
