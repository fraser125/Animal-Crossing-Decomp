lbl_805FDAD8:
/* 805FDAD8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805FDADC  7C 08 02 A6 */	mflr r0
/* 805FDAE0  90 01 00 64 */	stw r0, 0x64(r1)
/* 805FDAE4  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 805FDAE8  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 805FDAEC  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 805FDAF0  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 805FDAF4  39 61 00 40 */	addi r11, r1, 0x40
/* 805FDAF8  4B A9 D3 C1 */	bl func_8009AEB8
/* 805FDAFC  80 84 00 2C */	lwz r4, 0x2c(r4)
/* 805FDB00  7C 7B 1B 78 */	mr r27, r3
/* 805FDB04  88 06 00 00 */	lbz r0, 0(r6)
/* 805FDB08  7C DE 33 78 */	mr r30, r6
/* 805FDB0C  3C C0 80 6D */	lis r6, data_806CF828@ha /* 0x806CF828@ha */
/* 805FDB10  83 E4 09 7C */	lwz r31, 0x97c(r4)
/* 805FDB14  3B A6 F8 28 */	addi r29, r6, data_806CF828@l /* 0x806CF828@l */
/* 805FDB18  FF C0 08 90 */	fmr f30, f1
/* 805FDB1C  FF E0 10 90 */	fmr f31, f2
/* 805FDB20  7C F6 3B 78 */	mr r22, r7
/* 805FDB24  7D 17 43 78 */	mr r23, r8
/* 805FDB28  7C A3 2B 78 */	mr r3, r5
/* 805FDB2C  7F C4 F3 78 */	mr r4, r30
/* 805FDB30  54 18 18 38 */	slwi r24, r0, 3
/* 805FDB34  3B 3D 0D 44 */	addi r25, r29, 0xd44
/* 805FDB38  4B FF FF 79 */	bl mTG_get_special_color
/* 805FDB3C  2C 16 00 01 */	cmpwi r22, 1
/* 805FDB40  56 C0 20 36 */	slwi r0, r22, 4
/* 805FDB44  3B 9D 19 0C */	addi r28, r29, 0x190c
/* 805FDB48  7C 7A 1B 78 */	mr r26, r3
/* 805FDB4C  7F 9C 02 14 */	add r28, r28, r0
/* 805FDB50  40 82 00 34 */	bne lbl_805FDB84
/* 805FDB54  7F C3 F3 78 */	mr r3, r30
/* 805FDB58  4B FF 1E 41 */	bl mTG_quest_disp_up_check
/* 805FDB5C  2C 03 00 01 */	cmpwi r3, 1
/* 805FDB60  40 82 00 0C */	bne lbl_805FDB6C
/* 805FDB64  3B 9D 19 3C */	addi r28, r29, 0x193c
/* 805FDB68  48 00 00 40 */	b lbl_805FDBA8
lbl_805FDB6C:
/* 805FDB6C  7F C3 F3 78 */	mr r3, r30
/* 805FDB70  4B FF 1E 65 */	bl mTG_quest_disp_low_check
/* 805FDB74  2C 03 00 01 */	cmpwi r3, 1
/* 805FDB78  40 82 00 30 */	bne lbl_805FDBA8
/* 805FDB7C  3B 9D 19 4C */	addi r28, r29, 0x194c
/* 805FDB80  48 00 00 28 */	b lbl_805FDBA8
lbl_805FDB84:
/* 805FDB84  2C 16 00 02 */	cmpwi r22, 2
/* 805FDB88  40 82 00 20 */	bne lbl_805FDBA8
/* 805FDB8C  88 1E 00 03 */	lbz r0, 3(r30)
/* 805FDB90  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805FDB94  40 82 00 14 */	bne lbl_805FDBA8
/* 805FDB98  80 1F 00 00 */	lwz r0, 0(r31)
/* 805FDB9C  2C 00 00 01 */	cmpwi r0, 1
/* 805FDBA0  40 82 00 08 */	bne lbl_805FDBA8
/* 805FDBA4  3B 9D 19 5C */	addi r28, r29, 0x195c
lbl_805FDBA8:
/* 805FDBA8  3C 60 80 65 */	lis r3, lit_707@ha /* 0x8064B864@ha */
/* 805FDBAC  3C 80 80 65 */	lis r4, lit_630@ha /* 0x8064B838@ha */
/* 805FDBB0  38 A3 B8 64 */	addi r5, r3, lit_707@l /* 0x8064B864@l */
/* 805FDBB4  C0 64 B8 38 */	lfs f3, lit_630@l(r4)  /* 0x8064B838@l */
/* 805FDBB8  C0 25 00 00 */	lfs f1, 0(r5)
/* 805FDBBC  38 60 00 00 */	li r3, 0
/* 805FDBC0  FC 40 08 90 */	fmr f2, f1
/* 805FDBC4  4B E0 E8 29 */	bl Matrix_scale
/* 805FDBC8  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 805FDBCC  3C 60 80 65 */	lis r3, lit_5279@ha /* 0x8064B8F8@ha */
/* 805FDBD0  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 805FDBD4  EC 21 F0 2A */	fadds f1, f1, f30
/* 805FDBD8  C0 63 B8 F8 */	lfs f3, lit_5279@l(r3)  /* 0x8064B8F8@l */
/* 805FDBDC  EC 40 F8 2A */	fadds f2, f0, f31
/* 805FDBE0  38 60 00 01 */	li r3, 1
/* 805FDBE4  4B E0 E7 1D */	bl Matrix_translate
/* 805FDBE8  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 805FDBEC  3C 60 80 65 */	lis r3, lit_630@ha /* 0x8064B838@ha */
/* 805FDBF0  38 83 B8 38 */	addi r4, r3, lit_630@l /* 0x8064B838@l */
/* 805FDBF4  FC 40 08 90 */	fmr f2, f1
/* 805FDBF8  C0 64 00 00 */	lfs f3, 0(r4)
/* 805FDBFC  38 60 00 01 */	li r3, 1
/* 805FDC00  4B E0 E7 ED */	bl Matrix_scale
/* 805FDC04  83 FB 02 D0 */	lwz r31, 0x2d0(r27)
/* 805FDC08  3C 00 DE 00 */	lis r0, 0xde00
/* 805FDC0C  3C 80 80 B3 */	lis r4, sen_item2_DL_mode@ha /* 0x80B29C60@ha */
/* 805FDC10  3C 60 E2 00 */	lis r3, 0xE200 /* 0xE2001E01@ha */
/* 805FDC14  90 1F 00 00 */	stw r0, 0(r31)
/* 805FDC18  38 04 9C 60 */	addi r0, r4, sen_item2_DL_mode@l /* 0x80B29C60@l */
/* 805FDC1C  38 A3 1E 01 */	addi r5, r3, 0x1E01 /* 0xE2001E01@l */
/* 805FDC20  38 80 00 01 */	li r4, 1
/* 805FDC24  90 1F 00 04 */	stw r0, 4(r31)
/* 805FDC28  3C 60 F9 00 */	lis r3, 0xf900
/* 805FDC2C  38 00 FF 28 */	li r0, -216
/* 805FDC30  90 BF 00 08 */	stw r5, 8(r31)
/* 805FDC34  90 9F 00 0C */	stw r4, 0xc(r31)
/* 805FDC38  90 7F 00 10 */	stw r3, 0x10(r31)
/* 805FDC3C  90 1F 00 14 */	stw r0, 0x14(r31)
/* 805FDC40  4B E0 E5 95 */	bl Matrix_push
/* 805FDC44  3C 60 80 65 */	lis r3, data_8064B814@ha /* 0x8064B814@ha */
/* 805FDC48  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 805FDC4C  C0 63 B8 14 */	lfs f3, data_8064B814@l(r3)  /* 0x8064B814@l */
/* 805FDC50  38 60 00 01 */	li r3, 1
/* 805FDC54  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 805FDC58  4B E0 E6 A9 */	bl Matrix_translate
/* 805FDC5C  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805FDC60  3C 60 80 65 */	lis r3, lit_630@ha /* 0x8064B838@ha */
/* 805FDC64  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805FDC68  38 83 B8 38 */	addi r4, r3, lit_630@l /* 0x8064B838@l */
/* 805FDC6C  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 805FDC70  38 60 00 01 */	li r3, 1
/* 805FDC74  EC 21 00 B2 */	fmuls f1, f1, f2
/* 805FDC78  C0 64 00 00 */	lfs f3, 0(r4)
/* 805FDC7C  EC 40 00 B2 */	fmuls f2, f0, f2
/* 805FDC80  4B E0 E7 6D */	bl Matrix_scale
/* 805FDC84  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805FDC88  7F 63 DB 78 */	mr r3, r27
/* 805FDC8C  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805FDC90  90 1F 00 18 */	stw r0, 0x18(r31)
/* 805FDC94  4B E0 F7 41 */	bl _Matrix_to_Mtx_new
/* 805FDC98  90 7F 00 1C */	stw r3, 0x1c(r31)
/* 805FDC9C  3C 00 DE 00 */	lis r0, 0xde00
/* 805FDCA0  90 1F 00 20 */	stw r0, 0x20(r31)
/* 805FDCA4  80 1C 00 04 */	lwz r0, 4(r28)
/* 805FDCA8  90 1F 00 24 */	stw r0, 0x24(r31)
/* 805FDCAC  3B FF 00 28 */	addi r31, r31, 0x28
/* 805FDCB0  4B E0 E5 65 */	bl Matrix_pull
/* 805FDCB4  88 1E 00 01 */	lbz r0, 1(r30)
/* 805FDCB8  28 00 00 00 */	cmplwi r0, 0
/* 805FDCBC  41 82 00 F0 */	beq lbl_805FDDAC
/* 805FDCC0  4B E0 E5 15 */	bl Matrix_push
/* 805FDCC4  3C 60 80 65 */	lis r3, lit_630@ha /* 0x8064B838@ha */
/* 805FDCC8  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 805FDCCC  C0 63 B8 38 */	lfs f3, lit_630@l(r3)  /* 0x8064B838@l */
/* 805FDCD0  38 60 00 01 */	li r3, 1
/* 805FDCD4  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 805FDCD8  4B E0 E7 15 */	bl Matrix_scale
/* 805FDCDC  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805FDCE0  7F 63 DB 78 */	mr r3, r27
/* 805FDCE4  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805FDCE8  90 1F 00 00 */	stw r0, 0(r31)
/* 805FDCEC  4B E0 F6 E9 */	bl _Matrix_to_Mtx_new
/* 805FDCF0  90 7F 00 04 */	stw r3, 4(r31)
/* 805FDCF4  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 805FDCF8  2C 00 00 15 */	cmpwi r0, 0x15
/* 805FDCFC  40 82 00 18 */	bne lbl_805FDD14
/* 805FDD00  80 1E 00 40 */	lwz r0, 0x40(r30)
/* 805FDD04  38 9D 18 8C */	addi r4, r29, 0x188c
/* 805FDD08  54 00 10 3A */	slwi r0, r0, 2
/* 805FDD0C  7C 84 02 14 */	add r4, r4, r0
/* 805FDD10  48 00 00 34 */	b lbl_805FDD44
lbl_805FDD14:
/* 805FDD14  2C 00 00 0A */	cmpwi r0, 0xa
/* 805FDD18  40 82 00 18 */	bne lbl_805FDD30
/* 805FDD1C  80 1E 00 40 */	lwz r0, 0x40(r30)
/* 805FDD20  38 9D 18 CC */	addi r4, r29, 0x18cc
/* 805FDD24  54 00 10 3A */	slwi r0, r0, 2
/* 805FDD28  7C 84 02 14 */	add r4, r4, r0
/* 805FDD2C  48 00 00 18 */	b lbl_805FDD44
lbl_805FDD30:
/* 805FDD30  57 44 20 36 */	slwi r4, r26, 4
/* 805FDD34  56 E0 10 3A */	slwi r0, r23, 2
/* 805FDD38  38 7D 18 4C */	addi r3, r29, 0x184c
/* 805FDD3C  7C 84 02 14 */	add r4, r4, r0
/* 805FDD40  7C 83 22 14 */	add r4, r3, r4
lbl_805FDD44:
/* 805FDD44  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA0000FF@ha */
/* 805FDD48  38 03 00 FF */	addi r0, r3, 0x00FF /* 0xFA0000FF@l */
/* 805FDD4C  90 1F 00 08 */	stw r0, 8(r31)
/* 805FDD50  88 04 00 01 */	lbz r0, 1(r4)
/* 805FDD54  88 64 00 00 */	lbz r3, 0(r4)
/* 805FDD58  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 805FDD5C  88 84 00 02 */	lbz r4, 2(r4)
/* 805FDD60  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 805FDD64  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 805FDD68  60 00 00 FF */	ori r0, r0, 0xff
/* 805FDD6C  90 1F 00 0C */	stw r0, 0xc(r31)
/* 805FDD70  88 1E 00 01 */	lbz r0, 1(r30)
/* 805FDD74  28 00 00 01 */	cmplwi r0, 1
/* 805FDD78  40 82 00 1C */	bne lbl_805FDD94
/* 805FDD7C  3C 00 DE 00 */	lis r0, 0xde00
/* 805FDD80  90 1F 00 10 */	stw r0, 0x10(r31)
/* 805FDD84  80 1C 00 08 */	lwz r0, 8(r28)
/* 805FDD88  90 1F 00 14 */	stw r0, 0x14(r31)
/* 805FDD8C  3B FF 00 18 */	addi r31, r31, 0x18
/* 805FDD90  48 00 00 18 */	b lbl_805FDDA8
lbl_805FDD94:
/* 805FDD94  3C 00 DE 00 */	lis r0, 0xde00
/* 805FDD98  90 1F 00 10 */	stw r0, 0x10(r31)
/* 805FDD9C  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 805FDDA0  90 1F 00 14 */	stw r0, 0x14(r31)
/* 805FDDA4  3B FF 00 18 */	addi r31, r31, 0x18
lbl_805FDDA8:
/* 805FDDA8  4B E0 E4 6D */	bl Matrix_pull
lbl_805FDDAC:
/* 805FDDAC  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 805FDDB0  2C 00 00 15 */	cmpwi r0, 0x15
/* 805FDDB4  40 82 00 80 */	bne lbl_805FDE34
/* 805FDDB8  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA000080@ha */
/* 805FDDBC  80 9E 00 40 */	lwz r4, 0x40(r30)
/* 805FDDC0  38 03 00 80 */	addi r0, r3, 0x0080 /* 0xFA000080@l */
/* 805FDDC4  38 BD 18 AC */	addi r5, r29, 0x18ac
/* 805FDDC8  54 83 10 3A */	slwi r3, r4, 2
/* 805FDDCC  90 1F 00 00 */	stw r0, 0(r31)
/* 805FDDD0  7C A5 1A 14 */	add r5, r5, r3
/* 805FDDD4  3C 00 FB 00 */	lis r0, 0xfb00
/* 805FDDD8  88 65 00 01 */	lbz r3, 1(r5)
/* 805FDDDC  38 DD 18 8C */	addi r6, r29, 0x188c
/* 805FDDE0  88 85 00 00 */	lbz r4, 0(r5)
/* 805FDDE4  54 63 82 1E */	rlwinm r3, r3, 0x10, 8, 0xf
/* 805FDDE8  88 A5 00 02 */	lbz r5, 2(r5)
/* 805FDDEC  50 83 C0 0E */	rlwimi r3, r4, 0x18, 0, 7
/* 805FDDF0  50 A3 44 2E */	rlwimi r3, r5, 8, 0x10, 0x17
/* 805FDDF4  60 63 00 FF */	ori r3, r3, 0xff
/* 805FDDF8  90 7F 00 04 */	stw r3, 4(r31)
/* 805FDDFC  80 7E 00 40 */	lwz r3, 0x40(r30)
/* 805FDE00  54 63 10 3A */	slwi r3, r3, 2
/* 805FDE04  90 1F 00 08 */	stw r0, 8(r31)
/* 805FDE08  7C C6 1A 14 */	add r6, r6, r3
/* 805FDE0C  88 06 00 01 */	lbz r0, 1(r6)
/* 805FDE10  88 66 00 00 */	lbz r3, 0(r6)
/* 805FDE14  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 805FDE18  88 86 00 02 */	lbz r4, 2(r6)
/* 805FDE1C  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 805FDE20  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 805FDE24  60 00 00 96 */	ori r0, r0, 0x96
/* 805FDE28  90 1F 00 0C */	stw r0, 0xc(r31)
/* 805FDE2C  3B FF 00 10 */	addi r31, r31, 0x10
/* 805FDE30  48 00 01 00 */	b lbl_805FDF30
lbl_805FDE34:
/* 805FDE34  2C 00 00 0A */	cmpwi r0, 0xa
/* 805FDE38  40 82 00 80 */	bne lbl_805FDEB8
/* 805FDE3C  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA000080@ha */
/* 805FDE40  80 9E 00 40 */	lwz r4, 0x40(r30)
/* 805FDE44  38 03 00 80 */	addi r0, r3, 0x0080 /* 0xFA000080@l */
/* 805FDE48  38 BD 18 EC */	addi r5, r29, 0x18ec
/* 805FDE4C  54 83 10 3A */	slwi r3, r4, 2
/* 805FDE50  90 1F 00 00 */	stw r0, 0(r31)
/* 805FDE54  7C A5 1A 14 */	add r5, r5, r3
/* 805FDE58  3C 00 FB 00 */	lis r0, 0xfb00
/* 805FDE5C  88 65 00 01 */	lbz r3, 1(r5)
/* 805FDE60  38 DD 18 CC */	addi r6, r29, 0x18cc
/* 805FDE64  88 85 00 00 */	lbz r4, 0(r5)
/* 805FDE68  54 63 82 1E */	rlwinm r3, r3, 0x10, 8, 0xf
/* 805FDE6C  88 A5 00 02 */	lbz r5, 2(r5)
/* 805FDE70  50 83 C0 0E */	rlwimi r3, r4, 0x18, 0, 7
/* 805FDE74  50 A3 44 2E */	rlwimi r3, r5, 8, 0x10, 0x17
/* 805FDE78  60 63 00 FF */	ori r3, r3, 0xff
/* 805FDE7C  90 7F 00 04 */	stw r3, 4(r31)
/* 805FDE80  80 7E 00 40 */	lwz r3, 0x40(r30)
/* 805FDE84  54 63 10 3A */	slwi r3, r3, 2
/* 805FDE88  90 1F 00 08 */	stw r0, 8(r31)
/* 805FDE8C  7C C6 1A 14 */	add r6, r6, r3
/* 805FDE90  88 06 00 01 */	lbz r0, 1(r6)
/* 805FDE94  88 66 00 00 */	lbz r3, 0(r6)
/* 805FDE98  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 805FDE9C  88 86 00 02 */	lbz r4, 2(r6)
/* 805FDEA0  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 805FDEA4  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 805FDEA8  60 00 00 96 */	ori r0, r0, 0x96
/* 805FDEAC  90 1F 00 0C */	stw r0, 0xc(r31)
/* 805FDEB0  3B FF 00 10 */	addi r31, r31, 0x10
/* 805FDEB4  48 00 00 7C */	b lbl_805FDF30
lbl_805FDEB8:
/* 805FDEB8  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA000080@ha */
/* 805FDEBC  57 46 20 36 */	slwi r6, r26, 4
/* 805FDEC0  56 E5 10 3A */	slwi r5, r23, 2
/* 805FDEC4  38 9D 18 0C */	addi r4, r29, 0x180c
/* 805FDEC8  7C E6 2A 14 */	add r7, r6, r5
/* 805FDECC  38 63 00 80 */	addi r3, r3, 0x0080 /* 0xFA000080@l */
/* 805FDED0  90 7F 00 00 */	stw r3, 0(r31)
/* 805FDED4  7C E4 3A 14 */	add r7, r4, r7
/* 805FDED8  7C C6 2A 14 */	add r6, r6, r5
/* 805FDEDC  38 7D 18 4C */	addi r3, r29, 0x184c
/* 805FDEE0  88 87 00 01 */	lbz r4, 1(r7)
/* 805FDEE4  7C C3 32 14 */	add r6, r3, r6
/* 805FDEE8  88 A7 00 00 */	lbz r5, 0(r7)
/* 805FDEEC  3C 00 FB 00 */	lis r0, 0xfb00
/* 805FDEF0  54 83 82 1E */	rlwinm r3, r4, 0x10, 8, 0xf
/* 805FDEF4  88 87 00 02 */	lbz r4, 2(r7)
/* 805FDEF8  50 A3 C0 0E */	rlwimi r3, r5, 0x18, 0, 7
/* 805FDEFC  50 83 44 2E */	rlwimi r3, r4, 8, 0x10, 0x17
/* 805FDF00  60 63 00 FF */	ori r3, r3, 0xff
/* 805FDF04  90 7F 00 04 */	stw r3, 4(r31)
/* 805FDF08  90 1F 00 08 */	stw r0, 8(r31)
/* 805FDF0C  88 06 00 01 */	lbz r0, 1(r6)
/* 805FDF10  88 66 00 00 */	lbz r3, 0(r6)
/* 805FDF14  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 805FDF18  88 86 00 02 */	lbz r4, 2(r6)
/* 805FDF1C  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 805FDF20  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 805FDF24  60 00 00 96 */	ori r0, r0, 0x96
/* 805FDF28  90 1F 00 0C */	stw r0, 0xc(r31)
/* 805FDF2C  3B FF 00 10 */	addi r31, r31, 0x10
lbl_805FDF30:
/* 805FDF30  4B E0 E2 A5 */	bl Matrix_push
/* 805FDF34  3C 60 80 65 */	lis r3, data_8064B814@ha /* 0x8064B814@ha */
/* 805FDF38  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 805FDF3C  C0 63 B8 14 */	lfs f3, data_8064B814@l(r3)  /* 0x8064B814@l */
/* 805FDF40  38 60 00 01 */	li r3, 1
/* 805FDF44  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 805FDF48  4B E0 E3 B9 */	bl Matrix_translate
/* 805FDF4C  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805FDF50  3C 60 80 65 */	lis r3, lit_630@ha /* 0x8064B838@ha */
/* 805FDF54  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805FDF58  38 83 B8 38 */	addi r4, r3, lit_630@l /* 0x8064B838@l */
/* 805FDF5C  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 805FDF60  38 60 00 01 */	li r3, 1
/* 805FDF64  EC 21 00 B2 */	fmuls f1, f1, f2
/* 805FDF68  C0 64 00 00 */	lfs f3, 0(r4)
/* 805FDF6C  EC 40 00 B2 */	fmuls f2, f0, f2
/* 805FDF70  4B E0 E4 7D */	bl Matrix_scale
/* 805FDF74  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805FDF78  7F 63 DB 78 */	mr r3, r27
/* 805FDF7C  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805FDF80  90 1F 00 00 */	stw r0, 0(r31)
/* 805FDF84  4B E0 F4 51 */	bl _Matrix_to_Mtx_new
/* 805FDF88  90 7F 00 04 */	stw r3, 4(r31)
/* 805FDF8C  3C 00 DE 00 */	lis r0, 0xde00
/* 805FDF90  90 1F 00 08 */	stw r0, 8(r31)
/* 805FDF94  80 1C 00 00 */	lwz r0, 0(r28)
/* 805FDF98  90 1F 00 0C */	stw r0, 0xc(r31)
/* 805FDF9C  3B FF 00 10 */	addi r31, r31, 0x10
/* 805FDFA0  4B E0 E2 75 */	bl Matrix_pull
/* 805FDFA4  7C 19 C0 2E */	lwzx r0, r25, r24
/* 805FDFA8  28 00 00 00 */	cmplwi r0, 0
/* 805FDFAC  41 82 01 B0 */	beq lbl_805FE15C
/* 805FDFB0  88 1E 00 00 */	lbz r0, 0(r30)
/* 805FDFB4  28 00 00 27 */	cmplwi r0, 0x27
/* 805FDFB8  41 82 01 A4 */	beq lbl_805FE15C
/* 805FDFBC  28 00 00 2B */	cmplwi r0, 0x2b
/* 805FDFC0  40 82 00 30 */	bne lbl_805FDFF0
/* 805FDFC4  80 9E 00 40 */	lwz r4, 0x40(r30)
/* 805FDFC8  3C 00 43 30 */	lis r0, 0x4330
/* 805FDFCC  90 01 00 08 */	stw r0, 8(r1)
/* 805FDFD0  3C 60 80 65 */	lis r3, lit_523@ha /* 0x8064B824@ha */
/* 805FDFD4  38 04 00 02 */	addi r0, r4, 2
/* 805FDFD8  C8 23 B8 24 */	lfd f1, lit_523@l(r3)  /* 0x8064B824@l */
/* 805FDFDC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805FDFE0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805FDFE4  C8 01 00 08 */	lfd f0, 8(r1)
/* 805FDFE8  EC 60 08 28 */	fsubs f3, f0, f1
/* 805FDFEC  48 00 00 A0 */	b lbl_805FE08C
lbl_805FDFF0:
/* 805FDFF0  28 00 00 19 */	cmplwi r0, 0x19
/* 805FDFF4  41 82 00 14 */	beq lbl_805FE008
/* 805FDFF8  28 00 00 47 */	cmplwi r0, 0x47
/* 805FDFFC  41 82 00 0C */	beq lbl_805FE008
/* 805FE000  28 00 00 2D */	cmplwi r0, 0x2d
/* 805FE004  40 82 00 30 */	bne lbl_805FE034
lbl_805FE008:
/* 805FE008  80 9E 00 40 */	lwz r4, 0x40(r30)
/* 805FE00C  3C 00 43 30 */	lis r0, 0x4330
/* 805FE010  90 01 00 08 */	stw r0, 8(r1)
/* 805FE014  3C 60 80 65 */	lis r3, lit_523@ha /* 0x8064B824@ha */
/* 805FE018  38 04 00 01 */	addi r0, r4, 1
/* 805FE01C  C8 23 B8 24 */	lfd f1, lit_523@l(r3)  /* 0x8064B824@l */
/* 805FE020  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805FE024  90 01 00 0C */	stw r0, 0xc(r1)
/* 805FE028  C8 01 00 08 */	lfd f0, 8(r1)
/* 805FE02C  EC 60 08 28 */	fsubs f3, f0, f1
/* 805FE030  48 00 00 5C */	b lbl_805FE08C
lbl_805FE034:
/* 805FE034  28 00 00 40 */	cmplwi r0, 0x40
/* 805FE038  40 82 00 30 */	bne lbl_805FE068
/* 805FE03C  80 9E 00 40 */	lwz r4, 0x40(r30)
/* 805FE040  3C 00 43 30 */	lis r0, 0x4330
/* 805FE044  90 01 00 08 */	stw r0, 8(r1)
/* 805FE048  3C 60 80 65 */	lis r3, lit_523@ha /* 0x8064B824@ha */
/* 805FE04C  38 04 00 02 */	addi r0, r4, 2
/* 805FE050  C8 23 B8 24 */	lfd f1, lit_523@l(r3)  /* 0x8064B824@l */
/* 805FE054  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805FE058  90 01 00 0C */	stw r0, 0xc(r1)
/* 805FE05C  C8 01 00 08 */	lfd f0, 8(r1)
/* 805FE060  EC 60 08 28 */	fsubs f3, f0, f1
/* 805FE064  48 00 00 28 */	b lbl_805FE08C
lbl_805FE068:
/* 805FE068  80 9E 00 40 */	lwz r4, 0x40(r30)
/* 805FE06C  3C 00 43 30 */	lis r0, 0x4330
/* 805FE070  90 01 00 08 */	stw r0, 8(r1)
/* 805FE074  3C 60 80 65 */	lis r3, lit_523@ha /* 0x8064B824@ha */
/* 805FE078  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 805FE07C  C8 23 B8 24 */	lfd f1, lit_523@l(r3)  /* 0x8064B824@l */
/* 805FE080  90 01 00 0C */	stw r0, 0xc(r1)
/* 805FE084  C8 01 00 08 */	lfd f0, 8(r1)
/* 805FE088  EC 60 08 28 */	fsubs f3, f0, f1
lbl_805FE08C:
/* 805FE08C  3C 60 80 65 */	lis r3, lit_5281@ha /* 0x8064B900@ha */
/* 805FE090  3C A0 80 65 */	lis r5, lit_5280@ha /* 0x8064B8FC@ha */
/* 805FE094  38 83 B9 00 */	addi r4, r3, lit_5281@l /* 0x8064B900@l */
/* 805FE098  C0 BE 00 34 */	lfs f5, 0x34(r30)
/* 805FE09C  C0 24 00 00 */	lfs f1, 0(r4)
/* 805FE0A0  3C 60 80 65 */	lis r3, lit_707@ha /* 0x8064B864@ha */
/* 805FE0A4  38 83 B8 64 */	addi r4, r3, lit_707@l /* 0x8064B864@l */
/* 805FE0A8  C0 85 B8 FC */	lfs f4, lit_5280@l(r5)  /* 0x8064B8FC@l */
/* 805FE0AC  EC 41 01 72 */	fmuls f2, f1, f5
/* 805FE0B0  C0 04 00 00 */	lfs f0, 0(r4)
/* 805FE0B4  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 805FE0B8  EC 84 01 72 */	fmuls f4, f4, f5
/* 805FE0BC  EC 00 00 F2 */	fmuls f0, f0, f3
/* 805FE0C0  C0 7E 00 24 */	lfs f3, 0x24(r30)
/* 805FE0C4  EC 22 08 2A */	fadds f1, f2, f1
/* 805FE0C8  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 805FE0CC  EC 00 01 72 */	fmuls f0, f0, f5
/* 805FE0D0  C0 BE 00 2C */	lfs f5, 0x2c(r30)
/* 805FE0D4  EC 84 18 2A */	fadds f4, f4, f3
/* 805FE0D8  3C 60 80 65 */	lis r3, data_8064B814@ha /* 0x8064B814@ha */
/* 805FE0DC  EC 42 08 2A */	fadds f2, f2, f1
/* 805FE0E0  C0 63 B8 14 */	lfs f3, data_8064B814@l(r3)  /* 0x8064B814@l */
/* 805FE0E4  EC 25 20 2A */	fadds f1, f5, f4
/* 805FE0E8  38 60 00 01 */	li r3, 1
/* 805FE0EC  EC 42 00 28 */	fsubs f2, f2, f0
/* 805FE0F0  4B E0 E2 11 */	bl Matrix_translate
/* 805FE0F4  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805FE0F8  7F 63 DB 78 */	mr r3, r27
/* 805FE0FC  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805FE100  90 1F 00 00 */	stw r0, 0(r31)
/* 805FE104  4B E0 F2 D1 */	bl _Matrix_to_Mtx_new
/* 805FE108  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 805FE10C  90 7F 00 04 */	stw r3, 4(r31)
/* 805FE110  38 04 00 FF */	addi r0, r4, 0x00FF /* 0xFA0000FF@l */
/* 805FE114  38 DD 19 6C */	addi r6, r29, 0x196c
/* 805FE118  90 1F 00 08 */	stw r0, 8(r31)
/* 805FE11C  57 40 10 3A */	slwi r0, r26, 2
/* 805FE120  7C C6 02 14 */	add r6, r6, r0
/* 805FE124  3C 60 80 B3 */	lis r3, sen_win_cursor_model@ha /* 0x80B2E5C0@ha */
/* 805FE128  38 03 E5 C0 */	addi r0, r3, sen_win_cursor_model@l /* 0x80B2E5C0@l */
/* 805FE12C  88 66 00 01 */	lbz r3, 1(r6)
/* 805FE130  88 A6 00 00 */	lbz r5, 0(r6)
/* 805FE134  3C 80 DE 00 */	lis r4, 0xde00
/* 805FE138  54 63 82 1E */	rlwinm r3, r3, 0x10, 8, 0xf
/* 805FE13C  88 C6 00 02 */	lbz r6, 2(r6)
/* 805FE140  50 A3 C0 0E */	rlwimi r3, r5, 0x18, 0, 7
/* 805FE144  50 C3 44 2E */	rlwimi r3, r6, 8, 0x10, 0x17
/* 805FE148  60 63 00 FF */	ori r3, r3, 0xff
/* 805FE14C  90 7F 00 0C */	stw r3, 0xc(r31)
/* 805FE150  90 9F 00 10 */	stw r4, 0x10(r31)
/* 805FE154  90 1F 00 14 */	stw r0, 0x14(r31)
/* 805FE158  3B FF 00 18 */	addi r31, r31, 0x18
lbl_805FE15C:
/* 805FE15C  3C 60 E2 00 */	lis r3, 0xE200 /* 0xE2001E01@ha */
/* 805FE160  38 80 00 00 */	li r4, 0
/* 805FE164  38 03 1E 01 */	addi r0, r3, 0x1E01 /* 0xE2001E01@l */
/* 805FE168  3C 60 F9 00 */	lis r3, 0xf900
/* 805FE16C  90 1F 00 00 */	stw r0, 0(r31)
/* 805FE170  38 00 FF 08 */	li r0, -248
/* 805FE174  90 9F 00 04 */	stw r4, 4(r31)
/* 805FE178  3B FF 00 08 */	addi r31, r31, 8
/* 805FE17C  7F E4 FB 78 */	mr r4, r31
/* 805FE180  90 7F 00 00 */	stw r3, 0(r31)
/* 805FE184  3B FF 00 08 */	addi r31, r31, 8
/* 805FE188  90 04 00 04 */	stw r0, 4(r4)
/* 805FE18C  93 FB 02 D0 */	stw r31, 0x2d0(r27)
/* 805FE190  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 805FE194  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 805FE198  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 805FE19C  39 61 00 40 */	addi r11, r1, 0x40
/* 805FE1A0  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 805FE1A4  4B A9 CD 61 */	bl func_8009AF04
/* 805FE1A8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805FE1AC  7C 08 03 A6 */	mtlr r0
/* 805FE1B0  38 21 00 60 */	addi r1, r1, 0x60
/* 805FE1B4  4E 80 00 20 */	blr 
