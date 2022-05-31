lbl_8045B930:
/* 8045B930  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8045B934  7C 08 02 A6 */	mflr r0
/* 8045B938  90 01 00 54 */	stw r0, 0x54(r1)
/* 8045B93C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8045B940  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8045B944  39 61 00 40 */	addi r11, r1, 0x40
/* 8045B948  4B C3 F5 89 */	bl func_8009AED0
/* 8045B94C  3C A0 80 64 */	lis r5, lit_5117@ha /* 0x80644944@ha */
/* 8045B950  7C 9F 23 78 */	mr r31, r4
/* 8045B954  C0 63 00 24 */	lfs f3, 0x24(r3)
/* 8045B958  C0 05 49 44 */	lfs f0, lit_5117@l(r5)  /* 0x80644944@l */
/* 8045B95C  88 1F 1D 84 */	lbz r0, 0x1d84(r31)
/* 8045B960  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8045B964  40 81 00 20 */	ble lbl_8045B984
/* 8045B968  3C 80 80 64 */	lis r4, lit_502@ha /* 0x806445D8@ha */
/* 8045B96C  C0 04 45 D8 */	lfs f0, lit_502@l(r4)  /* 0x806445D8@l */
/* 8045B970  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8045B974  40 80 00 10 */	bge lbl_8045B984
/* 8045B978  3C 80 80 64 */	lis r4, lit_5118@ha /* 0x80644948@ha */
/* 8045B97C  C0 44 49 48 */	lfs f2, lit_5118@l(r4)  /* 0x80644948@l */
/* 8045B980  48 00 00 74 */	b lbl_8045B9F4
lbl_8045B984:
/* 8045B984  3C 80 80 64 */	lis r4, lit_823@ha /* 0x8064469C@ha */
/* 8045B988  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 8045B98C  C0 24 46 9C */	lfs f1, lit_823@l(r4)  /* 0x8064469C@l */
/* 8045B990  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8045B994  40 81 00 58 */	ble lbl_8045B9EC
/* 8045B998  3C 80 80 64 */	lis r4, lit_5119@ha /* 0x8064494C@ha */
/* 8045B99C  C0 04 49 4C */	lfs f0, lit_5119@l(r4)  /* 0x8064494C@l */
/* 8045B9A0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8045B9A4  40 80 00 48 */	bge lbl_8045B9EC
/* 8045B9A8  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 8045B9AC  40 81 00 14 */	ble lbl_8045B9C0
/* 8045B9B0  3C 80 80 64 */	lis r4, lit_936@ha /* 0x806446C8@ha */
/* 8045B9B4  C0 04 46 C8 */	lfs f0, lit_936@l(r4)  /* 0x806446C8@l */
/* 8045B9B8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8045B9BC  41 80 00 24 */	blt lbl_8045B9E0
lbl_8045B9C0:
/* 8045B9C0  3C 80 80 64 */	lis r4, lit_762@ha /* 0x80644664@ha */
/* 8045B9C4  C0 04 46 64 */	lfs f0, lit_762@l(r4)  /* 0x80644664@l */
/* 8045B9C8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8045B9CC  40 81 00 20 */	ble lbl_8045B9EC
/* 8045B9D0  3C 80 80 64 */	lis r4, lit_5120@ha /* 0x80644950@ha */
/* 8045B9D4  C0 04 49 50 */	lfs f0, lit_5120@l(r4)  /* 0x80644950@l */
/* 8045B9D8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8045B9DC  40 80 00 10 */	bge lbl_8045B9EC
lbl_8045B9E0:
/* 8045B9E0  3C 80 80 64 */	lis r4, lit_1349@ha /* 0x8064473C@ha */
/* 8045B9E4  C0 44 47 3C */	lfs f2, lit_1349@l(r4)  /* 0x8064473C@l */
/* 8045B9E8  48 00 00 0C */	b lbl_8045B9F4
lbl_8045B9EC:
/* 8045B9EC  3C 80 80 64 */	lis r4, lit_502@ha /* 0x806445D8@ha */
/* 8045B9F0  C0 44 45 D8 */	lfs f2, lit_502@l(r4)  /* 0x806445D8@l */
lbl_8045B9F4:
/* 8045B9F4  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 8045B9F8  3D 40 43 30 */	lis r10, 0x4330
/* 8045B9FC  38 A4 61 38 */	addi r5, r4, debug_mode@l /* 0x81166138@l */
/* 8045BA00  C0 83 00 20 */	lfs f4, 0x20(r3)
/* 8045BA04  81 85 00 00 */	lwz r12, 0(r5)
/* 8045BA08  3C 80 80 64 */	lis r4, lit_589@ha /* 0x8064463C@ha */
/* 8045BA0C  39 24 46 3C */	addi r9, r4, lit_589@l /* 0x8064463C@l */
/* 8045BA10  3C A0 80 64 */	lis r5, lit_1584@ha /* 0x8064475C@ha */
/* 8045BA14  A8 8C 1B 6A */	lha r4, 0x1b6a(r12)
/* 8045BA18  3C E0 80 64 */	lis r7, lit_935@ha /* 0x806446C4@ha */
/* 8045BA1C  C0 25 47 5C */	lfs f1, lit_1584@l(r5)  /* 0x8064475C@l */
/* 8045BA20  39 07 46 C4 */	addi r8, r7, lit_935@l /* 0x806446C4@l */
/* 8045BA24  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 8045BA28  A9 6C 1B 6C */	lha r11, 0x1b6c(r12)
/* 8045BA2C  90 81 00 14 */	stw r4, 0x14(r1)
/* 8045BA30  3C C0 80 64 */	lis r6, lit_511@ha /* 0x8064460C@ha */
/* 8045BA34  EC A4 10 28 */	fsubs f5, f4, f2
/* 8045BA38  6D 6B 80 00 */	xoris r11, r11, 0x8000
/* 8045BA3C  91 41 00 10 */	stw r10, 0x10(r1)
/* 8045BA40  3C 80 80 64 */	lis r4, lit_502@ha /* 0x806445D8@ha */
/* 8045BA44  C9 09 00 00 */	lfd f8, 0(r9)
/* 8045BA48  39 24 45 D8 */	addi r9, r4, lit_502@l /* 0x806445D8@l */
/* 8045BA4C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8045BA50  3C 80 80 64 */	lis r4, lit_3587@ha /* 0x80644858@ha */
/* 8045BA54  38 E4 48 58 */	addi r7, r4, lit_3587@l /* 0x80644858@l */
/* 8045BA58  80 A3 00 00 */	lwz r5, 0(r3)
/* 8045BA5C  EC 00 40 28 */	fsubs f0, f0, f8
/* 8045BA60  C0 C8 00 00 */	lfs f6, 0(r8)
/* 8045BA64  C0 86 46 0C */	lfs f4, lit_511@l(r6)  /* 0x8064460C@l */
/* 8045BA68  54 A5 10 3A */	slwi r5, r5, 2
/* 8045BA6C  A8 8C 1B 64 */	lha r4, 0x1b64(r12)
/* 8045BA70  EC 01 00 32 */	fmuls f0, f1, f0
/* 8045BA74  EC 26 28 28 */	fsubs f1, f6, f5
/* 8045BA78  6C 86 80 00 */	xoris r6, r4, 0x8000
/* 8045BA7C  91 61 00 0C */	stw r11, 0xc(r1)
/* 8045BA80  3C 80 80 64 */	lis r4, lit_585@ha /* 0x80644630@ha */
/* 8045BA84  EC 04 00 2A */	fadds f0, f4, f0
/* 8045BA88  91 41 00 08 */	stw r10, 8(r1)
/* 8045BA8C  C0 89 00 00 */	lfs f4, 0(r9)
/* 8045BA90  39 04 46 30 */	addi r8, r4, lit_585@l /* 0x80644630@l */
/* 8045BA94  EC 01 00 32 */	fmuls f0, f1, f0
/* 8045BA98  C8 A1 00 08 */	lfd f5, 8(r1)
/* 8045BA9C  3C 80 80 68 */	lis r4, minsect_shadow_scale_tbl@ha /* 0x806867CC@ha */
/* 8045BAA0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 8045BAA4  EC C5 40 28 */	fsubs f6, f5, f8
/* 8045BAA8  90 C1 00 24 */	stw r6, 0x24(r1)
/* 8045BAAC  EC 84 00 2A */	fadds f4, f4, f0
/* 8045BAB0  91 41 00 20 */	stw r10, 0x20(r1)
/* 8045BAB4  38 84 67 CC */	addi r4, r4, minsect_shadow_scale_tbl@l /* 0x806867CC@l */
/* 8045BAB8  C0 A7 00 00 */	lfs f5, 0(r7)
/* 8045BABC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8045BAC0  38 60 00 00 */	li r3, 0
/* 8045BAC4  EC E6 20 2A */	fadds f7, f6, f4
/* 8045BAC8  C0 C8 00 00 */	lfs f6, 0(r8)
/* 8045BACC  EC 80 40 28 */	fsubs f4, f0, f8
/* 8045BAD0  7C 04 2C 2E */	lfsx f0, r4, r5
/* 8045BAD4  FC E0 38 1E */	fctiwz f7, f7
/* 8045BAD8  EC 85 01 32 */	fmuls f4, f5, f4
/* 8045BADC  D8 E1 00 18 */	stfd f7, 0x18(r1)
/* 8045BAE0  EF E6 20 2A */	fadds f31, f6, f4
/* 8045BAE4  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8045BAE8  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 8045BAEC  EF FF 00 32 */	fmuls f31, f31, f0
/* 8045BAF0  7C 04 01 D6 */	mullw r0, r4, r0
/* 8045BAF4  7C 00 46 70 */	srawi r0, r0, 8
/* 8045BAF8  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 8045BAFC  4B FB 08 05 */	bl Matrix_translate
/* 8045BB00  FC 20 F8 90 */	fmr f1, f31
/* 8045BB04  38 60 00 01 */	li r3, 1
/* 8045BB08  FC 40 F8 90 */	fmr f2, f31
/* 8045BB0C  FC 60 F8 90 */	fmr f3, f31
/* 8045BB10  4B FB 08 DD */	bl Matrix_scale
/* 8045BB14  80 7F 00 00 */	lwz r3, 0(r31)
/* 8045BB18  4B F8 96 19 */	bl _texture_z_light_fog_prim_shadow
/* 8045BB1C  83 BF 00 00 */	lwz r29, 0(r31)
/* 8045BB20  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 8045BB24  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8045BB28  83 9D 03 00 */	lwz r28, 0x300(r29)
/* 8045BB2C  38 84 00 FF */	addi r4, r4, 0x00FF /* 0xFA0000FF@l */
/* 8045BB30  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8045BB34  90 9C 00 00 */	stw r4, 0(r28)
/* 8045BB38  93 DC 00 04 */	stw r30, 4(r28)
/* 8045BB3C  3B 9C 00 08 */	addi r28, r28, 8
/* 8045BB40  7F 9E E3 78 */	mr r30, r28
/* 8045BB44  90 1C 00 00 */	stw r0, 0(r28)
/* 8045BB48  3B 9C 00 08 */	addi r28, r28, 8
/* 8045BB4C  80 7F 00 00 */	lwz r3, 0(r31)
/* 8045BB50  4B FB 18 85 */	bl _Matrix_to_Mtx_new
/* 8045BB54  90 7E 00 04 */	stw r3, 4(r30)
/* 8045BB58  7F 84 E3 78 */	mr r4, r28
/* 8045BB5C  3C 00 DE 00 */	lis r0, 0xde00
/* 8045BB60  3C 60 80 EC */	lis r3, ef_shadow_insect_modelT@ha /* 0x80EC4E88@ha */
/* 8045BB64  90 1C 00 00 */	stw r0, 0(r28)
/* 8045BB68  38 03 4E 88 */	addi r0, r3, ef_shadow_insect_modelT@l /* 0x80EC4E88@l */
/* 8045BB6C  3B 9C 00 08 */	addi r28, r28, 8
/* 8045BB70  90 04 00 04 */	stw r0, 4(r4)
/* 8045BB74  93 9D 03 00 */	stw r28, 0x300(r29)
/* 8045BB78  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8045BB7C  39 61 00 40 */	addi r11, r1, 0x40
/* 8045BB80  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8045BB84  4B C3 F3 99 */	bl func_8009AF1C
/* 8045BB88  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8045BB8C  7C 08 03 A6 */	mtlr r0
/* 8045BB90  38 21 00 50 */	addi r1, r1, 0x50
/* 8045BB94  4E 80 00 20 */	blr 
