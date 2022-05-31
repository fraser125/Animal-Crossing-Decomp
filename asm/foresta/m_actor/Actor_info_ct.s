lbl_80374B1C:
/* 80374B1C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80374B20  7C 08 02 A6 */	mflr r0
/* 80374B24  90 01 00 84 */	stw r0, 0x84(r1)
/* 80374B28  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80374B2C  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80374B30  39 61 00 70 */	addi r11, r1, 0x70
/* 80374B34  4B D2 63 91 */	bl func_8009AEC4
/* 80374B38  7C 9D 23 78 */	mr r29, r4
/* 80374B3C  7C 7F 1B 78 */	mr r31, r3
/* 80374B40  7C BE 2B 78 */	mr r30, r5
/* 80374B44  38 80 00 44 */	li r4, 0x44
/* 80374B48  7F A3 EB 78 */	mr r3, r29
/* 80374B4C  4B CE 85 1D */	bl bzero
/* 80374B50  48 00 15 65 */	bl func_803760B4
/* 80374B54  3C 80 80 66 */	lis r4, MtxF_clear@ha /* 0x8065F8B0@ha */
/* 80374B58  38 7F 20 4C */	addi r3, r31, 0x204c
/* 80374B5C  38 84 F8 B0 */	addi r4, r4, MtxF_clear@l /* 0x8065F8B0@l */
/* 80374B60  48 09 8A 1D */	bl Matrix_copy_MtxF
/* 80374B64  3C 80 80 66 */	lis r4, MtxF_clear@ha /* 0x8065F8B0@ha */
/* 80374B68  38 7F 20 0C */	addi r3, r31, 0x200c
/* 80374B6C  38 84 F8 B0 */	addi r4, r4, MtxF_clear@l /* 0x8065F8B0@l */
/* 80374B70  48 09 8A 0D */	bl Matrix_copy_MtxF
/* 80374B74  3C 60 80 65 */	lis r3, actor_dlftbls@ha /* 0x8064D528@ha */
/* 80374B78  38 00 00 F6 */	li r0, 0xf6
/* 80374B7C  38 83 D5 28 */	addi r4, r3, actor_dlftbls@l /* 0x8064D528@l */
/* 80374B80  38 60 00 00 */	li r3, 0
/* 80374B84  7C 09 03 A6 */	mtctr r0
lbl_80374B88:
/* 80374B88  90 64 00 10 */	stw r3, 0x10(r4)
/* 80374B8C  98 64 00 1E */	stb r3, 0x1e(r4)
/* 80374B90  38 84 00 20 */	addi r4, r4, 0x20
/* 80374B94  42 00 FF F4 */	bdnz lbl_80374B88
/* 80374B98  48 02 60 9D */	bl mEv_CheckFirstJob
/* 80374B9C  2C 03 00 01 */	cmpwi r3, 1
/* 80374BA0  40 82 00 18 */	bne lbl_80374BB8
/* 80374BA4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80374BA8  38 00 00 5B */	li r0, 0x5b
/* 80374BAC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80374BB0  3C 63 00 03 */	addis r3, r3, 3
/* 80374BB4  B0 03 85 92 */	sth r0, -0x7a6e(r3)
lbl_80374BB8:
/* 80374BB8  3B 20 00 00 */	li r25, 0
/* 80374BBC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80374BC0  7F 3C CB 78 */	mr r28, r25
/* 80374BC4  3B 63 85 38 */	addi r27, r3, common_data@l /* 0x81138538@l */
lbl_80374BC8:
/* 80374BC8  7C 7B E2 14 */	add r3, r27, r28
/* 80374BCC  3F 43 00 03 */	addis r26, r3, 3
/* 80374BD0  AC BA 85 92 */	lhau r5, -0x7a6e(r26)
/* 80374BD4  2C 05 00 F6 */	cmpwi r5, 0xf6
/* 80374BD8  41 82 00 54 */	beq lbl_80374C2C
/* 80374BDC  39 40 FF FF */	li r10, -1
/* 80374BE0  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80641204@ha */
/* 80374BE4  91 41 00 08 */	stw r10, 8(r1)
/* 80374BE8  38 C3 12 04 */	addi r6, r3, lit_510@l /* 0x80641204@l */
/* 80374BEC  38 00 00 00 */	li r0, 0
/* 80374BF0  C0 26 00 00 */	lfs f1, 0(r6)
/* 80374BF4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80374BF8  7F A3 EB 78 */	mr r3, r29
/* 80374BFC  FC 40 08 90 */	fmr f2, f1
/* 80374C00  7F E4 FB 78 */	mr r4, r31
/* 80374C04  91 41 00 10 */	stw r10, 0x10(r1)
/* 80374C08  FC 60 08 90 */	fmr f3, f1
/* 80374C0C  38 C0 00 00 */	li r6, 0
/* 80374C10  38 E0 00 00 */	li r7, 0
/* 80374C14  91 41 00 14 */	stw r10, 0x14(r1)
/* 80374C18  39 00 00 00 */	li r8, 0
/* 80374C1C  39 20 FF FF */	li r9, -1
/* 80374C20  91 41 00 18 */	stw r10, 0x18(r1)
/* 80374C24  39 40 FF FF */	li r10, -1
/* 80374C28  48 00 0B 21 */	bl Actor_info_make_actor
lbl_80374C2C:
/* 80374C2C  3B 39 00 01 */	addi r25, r25, 1
/* 80374C30  38 00 00 F6 */	li r0, 0xf6
/* 80374C34  2C 19 00 02 */	cmpwi r25, 2
/* 80374C38  B0 1A 00 00 */	sth r0, 0(r26)
/* 80374C3C  3B 9C 00 02 */	addi r28, r28, 2
/* 80374C40  41 80 FF 88 */	blt lbl_80374BC8
/* 80374C44  38 A0 FF FF */	li r5, -1
/* 80374C48  3D 60 43 30 */	lis r11, 0x4330
/* 80374C4C  90 A1 00 08 */	stw r5, 8(r1)
/* 80374C50  38 00 00 00 */	li r0, 0
/* 80374C54  3C 80 80 64 */	lis r4, lit_694@ha /* 0x8064122C@ha */
/* 80374C58  7F A3 EB 78 */	mr r3, r29
/* 80374C5C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80374C60  39 20 FF FF */	li r9, -1
/* 80374C64  C8 64 12 2C */	lfd f3, lit_694@l(r4)  /* 0x8064122C@l */
/* 80374C68  7F E4 FB 78 */	mr r4, r31
/* 80374C6C  A8 1E 00 0E */	lha r0, 0xe(r30)
/* 80374C70  39 40 FF FF */	li r10, -1
/* 80374C74  91 61 00 38 */	stw r11, 0x38(r1)
/* 80374C78  90 01 00 10 */	stw r0, 0x10(r1)
/* 80374C7C  90 A1 00 14 */	stw r5, 0x14(r1)
/* 80374C80  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80374C84  A8 DE 00 02 */	lha r6, 2(r30)
/* 80374C88  A8 BE 00 04 */	lha r5, 4(r30)
/* 80374C8C  6C C7 80 00 */	xoris r7, r6, 0x8000
/* 80374C90  A8 1E 00 06 */	lha r0, 6(r30)
/* 80374C94  90 E1 00 3C */	stw r7, 0x3c(r1)
/* 80374C98  6C A6 80 00 */	xoris r6, r5, 0x8000
/* 80374C9C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80374CA0  A8 BE 00 00 */	lha r5, 0(r30)
/* 80374CA4  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80374CA8  90 C1 00 44 */	stw r6, 0x44(r1)
/* 80374CAC  EC 20 18 28 */	fsubs f1, f0, f3
/* 80374CB0  A8 DE 00 08 */	lha r6, 8(r30)
/* 80374CB4  91 61 00 40 */	stw r11, 0x40(r1)
/* 80374CB8  A8 FE 00 0A */	lha r7, 0xa(r30)
/* 80374CBC  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80374CC0  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80374CC4  EC 40 18 28 */	fsubs f2, f0, f3
/* 80374CC8  A9 1E 00 0C */	lha r8, 0xc(r30)
/* 80374CCC  91 61 00 48 */	stw r11, 0x48(r1)
/* 80374CD0  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80374CD4  EC 60 18 28 */	fsubs f3, f0, f3
/* 80374CD8  48 00 0A 71 */	bl Actor_info_make_actor
/* 80374CDC  7C 7C 1B 79 */	or. r28, r3, r3
/* 80374CE0  41 82 00 58 */	beq lbl_80374D38
/* 80374CE4  80 9C 00 28 */	lwz r4, 0x28(r28)
/* 80374CE8  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80641204@ha */
/* 80374CEC  80 1C 00 2C */	lwz r0, 0x2c(r28)
/* 80374CF0  C0 23 12 04 */	lfs f1, lit_510@l(r3)  /* 0x80641204@l */
/* 80374CF4  38 61 00 2C */	addi r3, r1, 0x2c
/* 80374CF8  90 81 00 2C */	stw r4, 0x2c(r1)
/* 80374CFC  90 01 00 30 */	stw r0, 0x30(r1)
/* 80374D00  80 1C 00 30 */	lwz r0, 0x30(r28)
/* 80374D04  90 01 00 34 */	stw r0, 0x34(r1)
/* 80374D08  48 01 AC 91 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 80374D0C  D0 3C 00 2C */	stfs f1, 0x2c(r28)
/* 80374D10  7F E3 FB 78 */	mr r3, r31
/* 80374D14  38 81 00 20 */	addi r4, r1, 0x20
/* 80374D18  38 A0 00 00 */	li r5, 0
/* 80374D1C  80 DC 00 28 */	lwz r6, 0x28(r28)
/* 80374D20  80 1C 00 2C */	lwz r0, 0x2c(r28)
/* 80374D24  90 C1 00 20 */	stw r6, 0x20(r1)
/* 80374D28  90 01 00 24 */	stw r0, 0x24(r1)
/* 80374D2C  80 1C 00 30 */	lwz r0, 0x30(r28)
/* 80374D30  90 01 00 28 */	stw r0, 0x28(r1)
/* 80374D34  48 03 31 A9 */	bl mFI_SetBearActor
lbl_80374D38:
/* 80374D38  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80374D3C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80374D40  3C 63 00 02 */	addis r3, r3, 2
/* 80374D44  A8 A3 61 52 */	lha r5, 0x6152(r3)
/* 80374D48  7C A0 07 35 */	extsh. r0, r5
/* 80374D4C  41 82 00 54 */	beq lbl_80374DA0
/* 80374D50  39 40 FF FF */	li r10, -1
/* 80374D54  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80641204@ha */
/* 80374D58  91 41 00 08 */	stw r10, 8(r1)
/* 80374D5C  38 C3 12 04 */	addi r6, r3, lit_510@l /* 0x80641204@l */
/* 80374D60  38 00 00 00 */	li r0, 0
/* 80374D64  C0 26 00 00 */	lfs f1, 0(r6)
/* 80374D68  90 01 00 0C */	stw r0, 0xc(r1)
/* 80374D6C  7F A3 EB 78 */	mr r3, r29
/* 80374D70  FC 40 08 90 */	fmr f2, f1
/* 80374D74  7F E4 FB 78 */	mr r4, r31
/* 80374D78  91 41 00 10 */	stw r10, 0x10(r1)
/* 80374D7C  FC 60 08 90 */	fmr f3, f1
/* 80374D80  38 C0 00 00 */	li r6, 0
/* 80374D84  38 E0 00 00 */	li r7, 0
/* 80374D88  91 41 00 14 */	stw r10, 0x14(r1)
/* 80374D8C  39 00 00 00 */	li r8, 0
/* 80374D90  39 20 FF FF */	li r9, -1
/* 80374D94  91 41 00 18 */	stw r10, 0x18(r1)
/* 80374D98  39 40 FF FF */	li r10, -1
/* 80374D9C  48 00 09 AD */	bl Actor_info_make_actor
lbl_80374DA0:
/* 80374DA0  88 1F 20 96 */	lbz r0, 0x2096(r31)
/* 80374DA4  28 00 00 00 */	cmplwi r0, 0
/* 80374DA8  41 82 00 80 */	beq lbl_80374E28
/* 80374DAC  3B 40 00 00 */	li r26, 0
/* 80374DB0  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80641204@ha */
/* 80374DB4  83 3F 20 A0 */	lwz r25, 0x20a0(r31)
/* 80374DB8  7F 5D D3 78 */	mr r29, r26
/* 80374DBC  3B 83 12 04 */	addi r28, r3, lit_510@l /* 0x80641204@l */
/* 80374DC0  3B C0 FF FF */	li r30, -1
/* 80374DC4  48 00 00 50 */	b lbl_80374E14
lbl_80374DC8:
/* 80374DC8  93 C1 00 08 */	stw r30, 8(r1)
/* 80374DCC  7F E4 FB 78 */	mr r4, r31
/* 80374DD0  C0 3C 00 00 */	lfs f1, 0(r28)
/* 80374DD4  38 7F 1D A8 */	addi r3, r31, 0x1da8
/* 80374DD8  93 A1 00 0C */	stw r29, 0xc(r1)
/* 80374DDC  38 C0 00 00 */	li r6, 0
/* 80374DE0  FC 40 08 90 */	fmr f2, f1
/* 80374DE4  38 E0 00 00 */	li r7, 0
/* 80374DE8  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80374DEC  FC 60 08 90 */	fmr f3, f1
/* 80374DF0  39 00 00 00 */	li r8, 0
/* 80374DF4  39 20 FF FF */	li r9, -1
/* 80374DF8  93 C1 00 14 */	stw r30, 0x14(r1)
/* 80374DFC  39 40 FF FF */	li r10, -1
/* 80374E00  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80374E04  A8 B9 00 00 */	lha r5, 0(r25)
/* 80374E08  48 00 09 41 */	bl Actor_info_make_actor
/* 80374E0C  3B 39 00 02 */	addi r25, r25, 2
/* 80374E10  3B 5A 00 01 */	addi r26, r26, 1
lbl_80374E14:
/* 80374E14  88 1F 20 96 */	lbz r0, 0x2096(r31)
/* 80374E18  7C 1A 00 00 */	cmpw r26, r0
/* 80374E1C  41 80 FF AC */	blt lbl_80374DC8
/* 80374E20  38 00 00 00 */	li r0, 0
/* 80374E24  98 1F 20 96 */	stb r0, 0x2096(r31)
lbl_80374E28:
/* 80374E28  7F E3 FB 78 */	mr r3, r31
/* 80374E2C  48 07 B9 51 */	bl mSc_regist_initial_exchange_bank
/* 80374E30  88 1F 20 95 */	lbz r0, 0x2095(r31)
/* 80374E34  28 00 00 00 */	cmplwi r0, 0
/* 80374E38  41 82 00 C4 */	beq lbl_80374EFC
/* 80374E3C  3C 60 80 64 */	lis r3, lit_694@ha /* 0x8064122C@ha */
/* 80374E40  83 3F 20 9C */	lwz r25, 0x209c(r31)
/* 80374E44  CB E3 12 2C */	lfd f31, lit_694@l(r3)  /* 0x8064122C@l */
/* 80374E48  3B 40 00 00 */	li r26, 0
/* 80374E4C  3F 80 43 30 */	lis r28, 0x4330
/* 80374E50  48 00 00 98 */	b lbl_80374EE8
lbl_80374E54:
/* 80374E54  38 A0 FF FF */	li r5, -1
/* 80374E58  38 00 00 00 */	li r0, 0
/* 80374E5C  90 A1 00 08 */	stw r5, 8(r1)
/* 80374E60  7F E4 FB 78 */	mr r4, r31
/* 80374E64  38 7F 1D A8 */	addi r3, r31, 0x1da8
/* 80374E68  39 20 FF FF */	li r9, -1
/* 80374E6C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80374E70  39 40 FF FF */	li r10, -1
/* 80374E74  A8 19 00 0E */	lha r0, 0xe(r25)
/* 80374E78  93 81 00 48 */	stw r28, 0x48(r1)
/* 80374E7C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80374E80  90 A1 00 14 */	stw r5, 0x14(r1)
/* 80374E84  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80374E88  A8 D9 00 02 */	lha r6, 2(r25)
/* 80374E8C  A8 B9 00 04 */	lha r5, 4(r25)
/* 80374E90  A8 19 00 06 */	lha r0, 6(r25)
/* 80374E94  6C C7 80 00 */	xoris r7, r6, 0x8000
/* 80374E98  6C A6 80 00 */	xoris r6, r5, 0x8000
/* 80374E9C  90 E1 00 4C */	stw r7, 0x4c(r1)
/* 80374EA0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80374EA4  A8 B9 00 00 */	lha r5, 0(r25)
/* 80374EA8  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80374EAC  90 C1 00 44 */	stw r6, 0x44(r1)
/* 80374EB0  EC 20 F8 28 */	fsubs f1, f0, f31
/* 80374EB4  A8 D9 00 08 */	lha r6, 8(r25)
/* 80374EB8  93 81 00 40 */	stw r28, 0x40(r1)
/* 80374EBC  A8 F9 00 0A */	lha r7, 0xa(r25)
/* 80374EC0  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80374EC4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80374EC8  EC 40 F8 28 */	fsubs f2, f0, f31
/* 80374ECC  A9 19 00 0C */	lha r8, 0xc(r25)
/* 80374ED0  93 81 00 38 */	stw r28, 0x38(r1)
/* 80374ED4  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80374ED8  EC 60 F8 28 */	fsubs f3, f0, f31
/* 80374EDC  48 00 08 6D */	bl Actor_info_make_actor
/* 80374EE0  3B 39 00 10 */	addi r25, r25, 0x10
/* 80374EE4  3B 5A 00 01 */	addi r26, r26, 1
lbl_80374EE8:
/* 80374EE8  88 1F 20 95 */	lbz r0, 0x2095(r31)
/* 80374EEC  7C 1A 00 00 */	cmpw r26, r0
/* 80374EF0  41 80 FF 64 */	blt lbl_80374E54
/* 80374EF4  38 00 00 00 */	li r0, 0
/* 80374EF8  98 1F 20 95 */	stb r0, 0x2095(r31)
lbl_80374EFC:
/* 80374EFC  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80374F00  39 61 00 70 */	addi r11, r1, 0x70
/* 80374F04  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80374F08  4B D2 60 09 */	bl func_8009AF10
/* 80374F0C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80374F10  7C 08 03 A6 */	mtlr r0
/* 80374F14  38 21 00 80 */	addi r1, r1, 0x80
/* 80374F18  4E 80 00 20 */	blr 
