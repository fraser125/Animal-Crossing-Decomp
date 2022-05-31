lbl_805F09D0:
/* 805F09D0  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 805F09D4  7C 08 02 A6 */	mflr r0
/* 805F09D8  90 01 01 54 */	stw r0, 0x154(r1)
/* 805F09DC  DB E1 01 40 */	stfd f31, 0x140(r1)
/* 805F09E0  F3 E1 01 48 */	psq_st f31, 328(r1), 0, 0 /* qr0 */
/* 805F09E4  DB C1 01 30 */	stfd f30, 0x130(r1)
/* 805F09E8  F3 C1 01 38 */	psq_st f30, 312(r1), 0, 0 /* qr0 */
/* 805F09EC  DB A1 01 20 */	stfd f29, 0x120(r1)
/* 805F09F0  F3 A1 01 28 */	psq_st f29, 296(r1), 0, 0 /* qr0 */
/* 805F09F4  39 61 01 20 */	addi r11, r1, 0x120
/* 805F09F8  4B AA A4 C1 */	bl func_8009AEB8
/* 805F09FC  3D 20 80 65 */	lis r9, lit_874@ha /* 0x8064B868@ha */
/* 805F0A00  3D 40 80 6D */	lis r10, data_806CF828@ha /* 0x806CF828@ha */
/* 805F0A04  C3 E9 B8 68 */	lfs f31, lit_874@l(r9)  /* 0x8064B868@l */
/* 805F0A08  7C 78 1B 78 */	mr r24, r3
/* 805F0A0C  7C 99 23 78 */	mr r25, r4
/* 805F0A10  7C BA 2B 78 */	mr r26, r5
/* 805F0A14  7C DB 33 78 */	mr r27, r6
/* 805F0A18  7C FC 3B 78 */	mr r28, r7
/* 805F0A1C  7D 16 43 78 */	mr r22, r8
/* 805F0A20  3B EA F8 28 */	addi r31, r10, data_806CF828@l /* 0x806CF828@l */
/* 805F0A24  38 61 00 50 */	addi r3, r1, 0x50
/* 805F0A28  3B C0 00 00 */	li r30, 0
/* 805F0A2C  3B A0 00 00 */	li r29, 0
/* 805F0A30  38 80 00 23 */	li r4, 0x23
/* 805F0A34  38 A0 00 20 */	li r5, 0x20
/* 805F0A38  4B DC A0 11 */	bl mem_clear
/* 805F0A3C  3A E1 00 7C */	addi r23, r1, 0x7c
/* 805F0A40  38 80 00 23 */	li r4, 0x23
/* 805F0A44  7E E3 BB 78 */	mr r3, r23
/* 805F0A48  38 A0 00 20 */	li r5, 0x20
/* 805F0A4C  4B DC 9F FD */	bl mem_clear
/* 805F0A50  38 61 00 A8 */	addi r3, r1, 0xa8
/* 805F0A54  38 80 00 23 */	li r4, 0x23
/* 805F0A58  38 A0 00 20 */	li r5, 0x20
/* 805F0A5C  4B DC 9F ED */	bl mem_clear
/* 805F0A60  57 60 04 3F */	clrlwi. r0, r27, 0x10
/* 805F0A64  40 82 00 88 */	bne lbl_805F0AEC
/* 805F0A68  3C 60 80 65 */	lis r3, lit_875@ha /* 0x8064B86C@ha */
/* 805F0A6C  7F 44 D3 78 */	mr r4, r26
/* 805F0A70  38 A3 B8 6C */	addi r5, r3, lit_875@l /* 0x8064B86C@l */
/* 805F0A74  38 61 00 50 */	addi r3, r1, 0x50
/* 805F0A78  C3 E5 00 00 */	lfs f31, 0(r5)
/* 805F0A7C  3B C0 00 01 */	li r30, 1
/* 805F0A80  38 A0 00 23 */	li r5, 0x23
/* 805F0A84  38 C0 00 08 */	li r6, 8
/* 805F0A88  4B FF F6 B1 */	bl mTG_strcpy
/* 805F0A8C  38 00 00 08 */	li r0, 8
/* 805F0A90  90 01 00 74 */	stw r0, 0x74(r1)
/* 805F0A94  88 1A 00 30 */	lbz r0, 0x30(r26)
/* 805F0A98  28 00 00 00 */	cmplwi r0, 0
/* 805F0A9C  40 82 00 1C */	bne lbl_805F0AB8
/* 805F0AA0  88 1A 00 14 */	lbz r0, 0x14(r26)
/* 805F0AA4  28 00 00 02 */	cmplwi r0, 2
/* 805F0AA8  40 82 00 10 */	bne lbl_805F0AB8
/* 805F0AAC  38 00 00 02 */	li r0, 2
/* 805F0AB0  90 01 00 78 */	stw r0, 0x78(r1)
/* 805F0AB4  48 00 00 0C */	b lbl_805F0AC0
lbl_805F0AB8:
/* 805F0AB8  38 00 00 00 */	li r0, 0
/* 805F0ABC  90 01 00 78 */	stw r0, 0x78(r1)
lbl_805F0AC0:
/* 805F0AC0  88 1A 00 30 */	lbz r0, 0x30(r26)
/* 805F0AC4  38 DF 10 B8 */	addi r6, r31, 0x10b8
/* 805F0AC8  7F 23 CB 78 */	mr r3, r25
/* 805F0ACC  7F 45 D3 78 */	mr r5, r26
/* 805F0AD0  54 00 10 3A */	slwi r0, r0, 2
/* 805F0AD4  38 81 00 50 */	addi r4, r1, 0x50
/* 805F0AD8  7D 86 00 2E */	lwzx r12, r6, r0
/* 805F0ADC  7D 89 03 A6 */	mtctr r12
/* 805F0AE0  4E 80 04 21 */	bctrl 
/* 805F0AE4  7C 7D 1B 78 */	mr r29, r3
/* 805F0AE8  48 00 00 C0 */	b lbl_805F0BA8
lbl_805F0AEC:
/* 805F0AEC  80 19 00 38 */	lwz r0, 0x38(r25)
/* 805F0AF0  2C 00 00 00 */	cmpwi r0, 0
/* 805F0AF4  40 82 00 AC */	bne lbl_805F0BA0
/* 805F0AF8  38 60 00 00 */	li r3, 0
/* 805F0AFC  57 80 07 BD */	rlwinm. r0, r28, 0, 0x1e, 0x1e
/* 805F0B00  98 79 00 02 */	stb r3, 2(r25)
/* 805F0B04  3B C0 00 01 */	li r30, 1
/* 805F0B08  41 82 00 A0 */	beq lbl_805F0BA8
/* 805F0B0C  38 61 00 2C */	addi r3, r1, 0x2c
/* 805F0B10  38 80 00 23 */	li r4, 0x23
/* 805F0B14  38 A0 00 20 */	li r5, 0x20
/* 805F0B18  4B DC 9F 31 */	bl mem_clear
/* 805F0B1C  38 61 00 08 */	addi r3, r1, 8
/* 805F0B20  38 80 00 23 */	li r4, 0x23
/* 805F0B24  38 A0 00 20 */	li r5, 0x20
/* 805F0B28  4B DC 9F 21 */	bl mem_clear
/* 805F0B2C  7E C5 B3 78 */	mr r5, r22
/* 805F0B30  38 61 00 2C */	addi r3, r1, 0x2c
/* 805F0B34  38 81 00 08 */	addi r4, r1, 8
/* 805F0B38  4B DF 29 15 */	bl mQst_GetToFromName
/* 805F0B3C  2C 03 00 01 */	cmpwi r3, 1
/* 805F0B40  40 82 00 68 */	bne lbl_805F0BA8
/* 805F0B44  38 61 00 50 */	addi r3, r1, 0x50
/* 805F0B48  38 81 00 2C */	addi r4, r1, 0x2c
/* 805F0B4C  38 A0 00 23 */	li r5, 0x23
/* 805F0B50  38 C0 00 23 */	li r6, 0x23
/* 805F0B54  4B FF F5 E5 */	bl mTG_strcpy
/* 805F0B58  38 60 00 23 */	li r3, 0x23
/* 805F0B5C  38 00 00 00 */	li r0, 0
/* 805F0B60  90 61 00 74 */	stw r3, 0x74(r1)
/* 805F0B64  7E E3 BB 78 */	mr r3, r23
/* 805F0B68  38 81 00 08 */	addi r4, r1, 8
/* 805F0B6C  38 A0 00 23 */	li r5, 0x23
/* 805F0B70  90 01 00 78 */	stw r0, 0x78(r1)
/* 805F0B74  38 C0 00 23 */	li r6, 0x23
/* 805F0B78  4B FF F5 C1 */	bl mTG_strcpy
/* 805F0B7C  38 80 00 23 */	li r4, 0x23
/* 805F0B80  38 00 00 01 */	li r0, 1
/* 805F0B84  90 81 00 A0 */	stw r4, 0xa0(r1)
/* 805F0B88  3C 60 80 65 */	lis r3, lit_875@ha /* 0x8064B86C@ha */
/* 805F0B8C  C3 E3 B8 6C */	lfs f31, lit_875@l(r3)  /* 0x8064B86C@l */
/* 805F0B90  3B A0 00 05 */	li r29, 5
/* 805F0B94  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 805F0B98  98 19 00 02 */	stb r0, 2(r25)
/* 805F0B9C  48 00 00 0C */	b lbl_805F0BA8
lbl_805F0BA0:
/* 805F0BA0  38 00 00 00 */	li r0, 0
/* 805F0BA4  98 19 00 02 */	stb r0, 2(r25)
lbl_805F0BA8:
/* 805F0BA8  88 19 00 02 */	lbz r0, 2(r25)
/* 805F0BAC  28 00 00 00 */	cmplwi r0, 0
/* 805F0BB0  40 82 00 78 */	bne lbl_805F0C28
/* 805F0BB4  2C 1C 00 01 */	cmpwi r28, 1
/* 805F0BB8  40 82 00 18 */	bne lbl_805F0BD0
/* 805F0BBC  38 79 00 48 */	addi r3, r25, 0x48
/* 805F0BC0  38 9F 10 E8 */	addi r4, r31, 0x10e8
/* 805F0BC4  38 A0 00 07 */	li r5, 7
/* 805F0BC8  4B DC 9E 5D */	bl func_803BAA24
/* 805F0BCC  48 00 00 58 */	b lbl_805F0C24
lbl_805F0BD0:
/* 805F0BD0  57 63 04 3E */	clrlwi r3, r27, 0x10
/* 805F0BD4  28 03 22 24 */	cmplwi r3, 0x2224
/* 805F0BD8  41 80 00 40 */	blt lbl_805F0C18
/* 805F0BDC  28 03 22 2B */	cmplwi r3, 0x222b
/* 805F0BE0  41 81 00 38 */	bgt lbl_805F0C18
/* 805F0BE4  38 03 DD DC */	addi r0, r3, -8740
/* 805F0BE8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805F0BEC  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 805F0BF0  38 79 00 48 */	addi r3, r25, 0x48
/* 805F0BF4  38 C4 85 38 */	addi r6, r4, common_data@l /* 0x81138538@l */
/* 805F0BF8  38 A0 00 10 */	li r5, 0x10
/* 805F0BFC  1C 80 02 20 */	mulli r4, r0, 0x220
/* 805F0C00  3C C6 00 02 */	addis r6, r6, 2
/* 805F0C04  80 06 61 3C */	lwz r0, 0x613c(r6)
/* 805F0C08  38 84 12 40 */	addi r4, r4, 0x1240
/* 805F0C0C  7C 80 22 14 */	add r4, r0, r4
/* 805F0C10  4B DC 9E 15 */	bl func_803BAA24
/* 805F0C14  48 00 00 10 */	b lbl_805F0C24
lbl_805F0C18:
/* 805F0C18  7F 64 DB 78 */	mr r4, r27
/* 805F0C1C  38 79 00 48 */	addi r3, r25, 0x48
/* 805F0C20  4B DC 4D 85 */	bl mIN_copy_name_str
lbl_805F0C24:
/* 805F0C24  3B C0 00 00 */	li r30, 0
lbl_805F0C28:
/* 805F0C28  88 19 00 02 */	lbz r0, 2(r25)
/* 805F0C2C  28 00 00 00 */	cmplwi r0, 0
/* 805F0C30  41 82 00 58 */	beq lbl_805F0C88
/* 805F0C34  28 00 00 01 */	cmplwi r0, 1
/* 805F0C38  40 82 00 1C */	bne lbl_805F0C54
/* 805F0C3C  38 79 00 8E */	addi r3, r25, 0x8e
/* 805F0C40  38 9F 02 DC */	addi r4, r31, 0x2dc
/* 805F0C44  38 A0 00 23 */	li r5, 0x23
/* 805F0C48  38 C0 00 0C */	li r6, 0xc
/* 805F0C4C  4B FF F4 ED */	bl mTG_strcpy
/* 805F0C50  48 00 00 38 */	b lbl_805F0C88
lbl_805F0C54:
/* 805F0C54  28 00 00 09 */	cmplwi r0, 9
/* 805F0C58  40 82 00 1C */	bne lbl_805F0C74
/* 805F0C5C  38 79 00 8E */	addi r3, r25, 0x8e
/* 805F0C60  38 9F 02 B8 */	addi r4, r31, 0x2b8
/* 805F0C64  38 A0 00 23 */	li r5, 0x23
/* 805F0C68  38 C0 00 07 */	li r6, 7
/* 805F0C6C  4B FF F4 CD */	bl mTG_strcpy
/* 805F0C70  48 00 00 18 */	b lbl_805F0C88
lbl_805F0C74:
/* 805F0C74  38 79 00 8E */	addi r3, r25, 0x8e
/* 805F0C78  38 9F 02 E8 */	addi r4, r31, 0x2e8
/* 805F0C7C  38 A0 00 23 */	li r5, 0x23
/* 805F0C80  38 C0 00 09 */	li r6, 9
/* 805F0C84  4B FF F4 B5 */	bl mTG_strcpy
lbl_805F0C88:
/* 805F0C88  7F 23 CB 78 */	mr r3, r25
/* 805F0C8C  7F A5 EB 78 */	mr r5, r29
/* 805F0C90  38 81 00 50 */	addi r4, r1, 0x50
/* 805F0C94  4B FF FA E1 */	bl mTG_init_tag_data_item_win_sub_mail_item_set_string
/* 805F0C98  38 79 00 48 */	addi r3, r25, 0x48
/* 805F0C9C  38 80 00 23 */	li r4, 0x23
/* 805F0CA0  38 A0 00 20 */	li r5, 0x20
/* 805F0CA4  4B DC B9 81 */	bl func_803BC624
/* 805F0CA8  7C 60 1B 78 */	mr r0, r3
/* 805F0CAC  38 79 00 6B */	addi r3, r25, 0x6b
/* 805F0CB0  7C 17 03 78 */	mr r23, r0
/* 805F0CB4  38 80 00 23 */	li r4, 0x23
/* 805F0CB8  38 A0 00 20 */	li r5, 0x20
/* 805F0CBC  4B DC B9 69 */	bl func_803BC624
/* 805F0CC0  7C 60 1B 78 */	mr r0, r3
/* 805F0CC4  38 79 00 8E */	addi r3, r25, 0x8e
/* 805F0CC8  7C 1A 03 78 */	mr r26, r0
/* 805F0CCC  38 80 00 23 */	li r4, 0x23
/* 805F0CD0  38 A0 00 20 */	li r5, 0x20
/* 805F0CD4  4B DC B9 51 */	bl func_803BC624
/* 805F0CD8  7E E4 BB 78 */	mr r4, r23
/* 805F0CDC  7C 77 1B 78 */	mr r23, r3
/* 805F0CE0  38 79 00 48 */	addi r3, r25, 0x48
/* 805F0CE4  38 A0 00 01 */	li r5, 1
/* 805F0CE8  4B DB EA 51 */	bl mFont_GetStringWidth2
/* 805F0CEC  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805F0CF0  3C 00 43 30 */	lis r0, 0x4330
/* 805F0CF4  3C 80 80 65 */	lis r4, lit_523@ha /* 0x8064B824@ha */
/* 805F0CF8  90 61 00 DC */	stw r3, 0xdc(r1)
/* 805F0CFC  38 A4 B8 24 */	addi r5, r4, lit_523@l /* 0x8064B824@l */
/* 805F0D00  7F 44 D3 78 */	mr r4, r26
/* 805F0D04  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 805F0D08  38 79 00 6B */	addi r3, r25, 0x6b
/* 805F0D0C  C8 25 00 00 */	lfd f1, 0(r5)
/* 805F0D10  38 A0 00 01 */	li r5, 1
/* 805F0D14  C8 01 00 D8 */	lfd f0, 0xd8(r1)
/* 805F0D18  EF C0 08 28 */	fsubs f30, f0, f1
/* 805F0D1C  4B DB EA 1D */	bl mFont_GetStringWidth2
/* 805F0D20  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805F0D24  3C 00 43 30 */	lis r0, 0x4330
/* 805F0D28  3C 80 80 65 */	lis r4, lit_523@ha /* 0x8064B824@ha */
/* 805F0D2C  90 61 00 E4 */	stw r3, 0xe4(r1)
/* 805F0D30  38 A4 B8 24 */	addi r5, r4, lit_523@l /* 0x8064B824@l */
/* 805F0D34  7E E4 BB 78 */	mr r4, r23
/* 805F0D38  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 805F0D3C  38 79 00 8E */	addi r3, r25, 0x8e
/* 805F0D40  C8 25 00 00 */	lfd f1, 0(r5)
/* 805F0D44  38 A0 00 01 */	li r5, 1
/* 805F0D48  C8 01 00 E0 */	lfd f0, 0xe0(r1)
/* 805F0D4C  EF A0 08 28 */	fsubs f29, f0, f1
/* 805F0D50  4B DB E9 E9 */	bl mFont_GetStringWidth2
/* 805F0D54  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805F0D58  3C 00 43 30 */	lis r0, 0x4330
/* 805F0D5C  90 61 00 EC */	stw r3, 0xec(r1)
/* 805F0D60  3C 80 80 65 */	lis r4, lit_523@ha /* 0x8064B824@ha */
/* 805F0D64  C8 24 B8 24 */	lfd f1, lit_523@l(r4)  /* 0x8064B824@l */
/* 805F0D68  FC 1D F0 40 */	fcmpo cr0, f29, f30
/* 805F0D6C  90 01 00 E8 */	stw r0, 0xe8(r1)
/* 805F0D70  C8 01 00 E8 */	lfd f0, 0xe8(r1)
/* 805F0D74  EC 00 08 28 */	fsubs f0, f0, f1
/* 805F0D78  40 81 00 08 */	ble lbl_805F0D80
/* 805F0D7C  FF C0 E8 90 */	fmr f30, f29
lbl_805F0D80:
/* 805F0D80  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 805F0D84  40 81 00 08 */	ble lbl_805F0D8C
/* 805F0D88  FF C0 00 90 */	fmr f30, f0
lbl_805F0D8C:
/* 805F0D8C  EF DE 07 F2 */	fmuls f30, f30, f31
/* 805F0D90  3C 60 80 65 */	lis r3, data_8064B814@ha /* 0x8064B814@ha */
/* 805F0D94  38 83 B8 14 */	addi r4, r3, data_8064B814@l /* 0x8064B814@l */
/* 805F0D98  7F 23 CB 78 */	mr r3, r25
/* 805F0D9C  C0 44 00 00 */	lfs f2, 0(r4)
/* 805F0DA0  7F C4 F3 78 */	mr r4, r30
/* 805F0DA4  FC 20 F0 90 */	fmr f1, f30
/* 805F0DA8  4B FF EC 55 */	bl mTG_set_tag_win_scale_p
/* 805F0DAC  2C 1E 00 01 */	cmpwi r30, 1
/* 805F0DB0  40 82 00 38 */	bne lbl_805F0DE8
/* 805F0DB4  7F 23 CB 78 */	mr r3, r25
/* 805F0DB8  4B FF EB E1 */	bl mTG_quest_disp_up_check
/* 805F0DBC  2C 03 00 00 */	cmpwi r3, 0
/* 805F0DC0  40 82 00 28 */	bne lbl_805F0DE8
/* 805F0DC4  7F 23 CB 78 */	mr r3, r25
/* 805F0DC8  4B FF EC 0D */	bl mTG_quest_disp_low_check
/* 805F0DCC  2C 03 00 00 */	cmpwi r3, 0
/* 805F0DD0  40 82 00 18 */	bne lbl_805F0DE8
/* 805F0DD4  3C 60 80 65 */	lis r3, lit_876@ha /* 0x8064B870@ha */
/* 805F0DD8  C0 39 00 28 */	lfs f1, 0x28(r25)
/* 805F0DDC  C0 03 B8 70 */	lfs f0, lit_876@l(r3)  /* 0x8064B870@l */
/* 805F0DE0  EC 01 00 2A */	fadds f0, f1, f0
/* 805F0DE4  D0 19 00 28 */	stfs f0, 0x28(r25)
lbl_805F0DE8:
/* 805F0DE8  7F 23 CB 78 */	mr r3, r25
/* 805F0DEC  4B FF ED A9 */	bl mTG_check_edge_right_item
/* 805F0DF0  2C 03 00 01 */	cmpwi r3, 1
/* 805F0DF4  40 82 00 10 */	bne lbl_805F0E04
/* 805F0DF8  38 00 00 01 */	li r0, 1
/* 805F0DFC  98 19 00 01 */	stb r0, 1(r25)
/* 805F0E00  48 00 00 20 */	b lbl_805F0E20
lbl_805F0E04:
/* 805F0E04  3C 60 80 65 */	lis r3, lit_877@ha /* 0x8064B874@ha */
/* 805F0E08  C0 39 00 24 */	lfs f1, 0x24(r25)
/* 805F0E0C  C0 03 B8 74 */	lfs f0, lit_877@l(r3)  /* 0x8064B874@l */
/* 805F0E10  38 00 00 02 */	li r0, 2
/* 805F0E14  EC 01 00 32 */	fmuls f0, f1, f0
/* 805F0E18  D0 19 00 24 */	stfs f0, 0x24(r25)
/* 805F0E1C  98 19 00 01 */	stb r0, 1(r25)
lbl_805F0E20:
/* 805F0E20  7F 23 CB 78 */	mr r3, r25
/* 805F0E24  4B FF EA 49 */	bl mTG_get_item_name_wait_time
/* 805F0E28  80 98 00 2C */	lwz r4, 0x2c(r24)
/* 805F0E2C  80 84 09 7C */	lwz r4, 0x97c(r4)
/* 805F0E30  B0 64 02 F0 */	sth r3, 0x2f0(r4)
/* 805F0E34  E3 E1 01 48 */	psq_l f31, 328(r1), 0, 0 /* qr0 */
/* 805F0E38  CB E1 01 40 */	lfd f31, 0x140(r1)
/* 805F0E3C  E3 C1 01 38 */	psq_l f30, 312(r1), 0, 0 /* qr0 */
/* 805F0E40  CB C1 01 30 */	lfd f30, 0x130(r1)
/* 805F0E44  E3 A1 01 28 */	psq_l f29, 296(r1), 0, 0 /* qr0 */
/* 805F0E48  39 61 01 20 */	addi r11, r1, 0x120
/* 805F0E4C  CB A1 01 20 */	lfd f29, 0x120(r1)
/* 805F0E50  4B AA A0 B5 */	bl func_8009AF04
/* 805F0E54  80 01 01 54 */	lwz r0, 0x154(r1)
/* 805F0E58  7C 08 03 A6 */	mtlr r0
/* 805F0E5C  38 21 01 50 */	addi r1, r1, 0x150
/* 805F0E60  4E 80 00 20 */	blr 
