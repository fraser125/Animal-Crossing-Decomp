lbl_805AEC5C:
/* 805AEC5C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805AEC60  7C 08 02 A6 */	mflr r0
/* 805AEC64  90 01 00 54 */	stw r0, 0x54(r1)
/* 805AEC68  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 805AEC6C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 805AEC70  39 61 00 40 */	addi r11, r1, 0x40
/* 805AEC74  4B AE C2 59 */	bl func_8009AECC
/* 805AEC78  83 C4 00 00 */	lwz r30, 0(r4)
/* 805AEC7C  7C 7B 1B 78 */	mr r27, r3
/* 805AEC80  7C 9F 23 78 */	mr r31, r4
/* 805AEC84  7F C3 F3 78 */	mr r3, r30
/* 805AEC88  4B E3 64 D1 */	bl _texture_z_light_fog_prim_xlu
/* 805AEC8C  83 9E 02 E0 */	lwz r28, 0x2e0(r30)
/* 805AEC90  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805AEC94  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805AEC98  7F C3 F3 78 */	mr r3, r30
/* 805AEC9C  90 1C 00 00 */	stw r0, 0(r28)
/* 805AECA0  7F 9D E3 78 */	mr r29, r28
/* 805AECA4  3B 9C 00 08 */	addi r28, r28, 8
/* 805AECA8  4B E5 E7 2D */	bl _Matrix_to_Mtx_new
/* 805AECAC  90 7D 00 04 */	stw r3, 4(r29)
/* 805AECB0  3C 60 80 B7 */	lis r3, obj_fallS_evw_anime@ha /* 0x80B719B0@ha */
/* 805AECB4  38 83 19 B0 */	addi r4, r3, obj_fallS_evw_anime@l /* 0x80B719B0@l */
/* 805AECB8  93 9E 02 E0 */	stw r28, 0x2e0(r30)
/* 805AECBC  7F E3 FB 78 */	mr r3, r31
/* 805AECC0  4B DC 48 9D */	bl Evw_Anime_Set
/* 805AECC4  83 BE 02 E0 */	lwz r29, 0x2e0(r30)
/* 805AECC8  3C 00 DE 00 */	lis r0, 0xde00
/* 805AECCC  3C 80 80 B7 */	lis r4, obj_fallS_model@ha /* 0x80B71950@ha */
/* 805AECD0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805AECD4  90 1D 00 00 */	stw r0, 0(r29)
/* 805AECD8  38 04 19 50 */	addi r0, r4, obj_fallS_model@l /* 0x80B71950@l */
/* 805AECDC  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 805AECE0  3C 60 80 65 */	lis r3, lit_495@ha /* 0x8064A72C@ha */
/* 805AECE4  90 1D 00 04 */	stw r0, 4(r29)
/* 805AECE8  3C 84 00 03 */	addis r4, r4, 3
/* 805AECEC  C0 03 A7 2C */	lfs f0, lit_495@l(r3)  /* 0x8064A72C@l */
/* 805AECF0  3B BD 00 08 */	addi r29, r29, 8
/* 805AECF4  C0 24 DB B4 */	lfs f1, -0x244c(r4)
/* 805AECF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805AECFC  40 81 01 7C */	ble lbl_805AEE78
/* 805AED00  3C 60 80 65 */	lis r3, lit_496@ha /* 0x8064A730@ha */
/* 805AED04  C0 03 A7 30 */	lfs f0, lit_496@l(r3)  /* 0x8064A730@l */
/* 805AED08  EC 00 00 72 */	fmuls f0, f0, f1
/* 805AED0C  FC 00 00 1E */	fctiwz f0, f0
/* 805AED10  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805AED14  83 81 00 24 */	lwz r28, 0x24(r1)
/* 805AED18  2C 1C 00 FF */	cmpwi r28, 0xff
/* 805AED1C  40 81 00 08 */	ble lbl_805AED24
/* 805AED20  3B 80 00 FF */	li r28, 0xff
lbl_805AED24:
/* 805AED24  C0 1F 20 6C */	lfs f0, 0x206c(r31)
/* 805AED28  3C 60 80 65 */	lis r3, shape_norm_vec@ha /* 0x8064A720@ha */
/* 805AED2C  38 63 A7 20 */	addi r3, r3, shape_norm_vec@l /* 0x8064A720@l */
/* 805AED30  38 81 00 14 */	addi r4, r1, 0x14
/* 805AED34  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805AED38  38 A1 00 08 */	addi r5, r1, 8
/* 805AED3C  C0 1F 20 70 */	lfs f0, 0x2070(r31)
/* 805AED40  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805AED44  C0 1F 20 74 */	lfs f0, 0x2074(r31)
/* 805AED48  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805AED4C  4B E5 A2 85 */	bl Math3DVectorProduct2Vec
/* 805AED50  38 61 00 08 */	addi r3, r1, 8
/* 805AED54  4B E5 A0 C9 */	bl Math3DVecLength
/* 805AED58  3C 60 80 65 */	lis r3, lit_497@ha /* 0x8064A734@ha */
/* 805AED5C  C0 03 A7 34 */	lfs f0, lit_497@l(r3)  /* 0x8064A734@l */
/* 805AED60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805AED64  4C 41 13 82 */	cror 2, 1, 2
/* 805AED68  40 82 01 10 */	bne lbl_805AEE78
/* 805AED6C  3C 80 80 65 */	lis r4, lit_498@ha /* 0x8064A738@ha */
/* 805AED70  38 61 00 08 */	addi r3, r1, 8
/* 805AED74  C0 04 A7 38 */	lfs f0, lit_498@l(r4)  /* 0x8064A738@l */
/* 805AED78  EC 20 08 24 */	fdivs f1, f0, f1
/* 805AED7C  4B E0 C2 31 */	bl xyz_t_mult_v
/* 805AED80  3C 60 80 65 */	lis r3, shape_norm_vec@ha /* 0x8064A720@ha */
/* 805AED84  C4 63 A7 20 */	lfsu f3, shape_norm_vec@l(r3)  /* 0x8064A720@l */
/* 805AED88  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 805AED8C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805AED90  C0 23 00 04 */	lfs f1, 4(r3)
/* 805AED94  EC 43 00 B2 */	fmuls f2, f3, f2
/* 805AED98  C0 63 00 08 */	lfs f3, 8(r3)
/* 805AED9C  EC 01 00 32 */	fmuls f0, f1, f0
/* 805AEDA0  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 805AEDA4  EC 23 00 72 */	fmuls f1, f3, f1
/* 805AEDA8  EC 02 00 2A */	fadds f0, f2, f0
/* 805AEDAC  EC 21 00 2A */	fadds f1, f1, f0
/* 805AEDB0  4B AA DE F9 */	bl facos
/* 805AEDB4  FF E0 08 90 */	fmr f31, f1
/* 805AEDB8  C0 3B 00 28 */	lfs f1, 0x28(r27)
/* 805AEDBC  C0 5B 00 2C */	lfs f2, 0x2c(r27)
/* 805AEDC0  38 60 00 00 */	li r3, 0
/* 805AEDC4  C0 7B 00 30 */	lfs f3, 0x30(r27)
/* 805AEDC8  4B E5 D5 39 */	bl Matrix_translate
/* 805AEDCC  3C 60 80 65 */	lis r3, lit_499@ha /* 0x8064A73C@ha */
/* 805AEDD0  38 81 00 08 */	addi r4, r1, 8
/* 805AEDD4  C0 03 A7 3C */	lfs f0, lit_499@l(r3)  /* 0x8064A73C@l */
/* 805AEDD8  38 A0 00 01 */	li r5, 1
/* 805AEDDC  EC 00 07 F2 */	fmuls f0, f0, f31
/* 805AEDE0  FC 00 00 1E */	fctiwz f0, f0
/* 805AEDE4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805AEDE8  80 61 00 24 */	lwz r3, 0x24(r1)
/* 805AEDEC  4B E5 F1 01 */	bl Matrix_RotateVector
/* 805AEDF0  C0 3B 00 5C */	lfs f1, 0x5c(r27)
/* 805AEDF4  38 60 00 01 */	li r3, 1
/* 805AEDF8  C0 5B 00 60 */	lfs f2, 0x60(r27)
/* 805AEDFC  C0 7B 00 64 */	lfs f3, 0x64(r27)
/* 805AEE00  4B E5 D5 ED */	bl Matrix_scale
/* 805AEE04  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805AEE08  7F C3 F3 78 */	mr r3, r30
/* 805AEE0C  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805AEE10  90 1D 00 00 */	stw r0, 0(r29)
/* 805AEE14  4B E5 E5 C1 */	bl _Matrix_to_Mtx_new
/* 805AEE18  3C 80 E2 00 */	lis r4, 0xE200 /* 0xE200001C@ha */
/* 805AEE1C  90 7D 00 04 */	stw r3, 4(r29)
/* 805AEE20  38 04 00 1C */	addi r0, r4, 0x001C /* 0xE200001C@l */
/* 805AEE24  3C 60 C8 10 */	lis r3, 0xC810 /* 0xC8104240@ha */
/* 805AEE28  90 1D 00 08 */	stw r0, 8(r29)
/* 805AEE2C  38 63 42 40 */	addi r3, r3, 0x4240 /* 0xC8104240@l */
/* 805AEE30  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 805AEE34  3C 80 00 21 */	lis r4, 0x0021 /* 0x00210004@ha */
/* 805AEE38  90 7D 00 0C */	stw r3, 0xc(r29)
/* 805AEE3C  3C A0 FB 00 */	lis r5, 0xfb00
/* 805AEE40  64 00 FF FF */	oris r0, r0, 0xffff
/* 805AEE44  3C 60 80 B7 */	lis r3, obj_fallS_rainbowT_model@ha /* 0x80B718B8@ha */
/* 805AEE48  90 BD 00 10 */	stw r5, 0x10(r29)
/* 805AEE4C  60 00 FF 00 */	ori r0, r0, 0xff00
/* 805AEE50  3C C0 D9 00 */	lis r6, 0xd900
/* 805AEE54  38 A4 00 04 */	addi r5, r4, 0x0004 /* 0x00210004@l */
/* 805AEE58  90 1D 00 14 */	stw r0, 0x14(r29)
/* 805AEE5C  3C 80 DE 00 */	lis r4, 0xde00
/* 805AEE60  38 03 18 B8 */	addi r0, r3, obj_fallS_rainbowT_model@l /* 0x80B718B8@l */
/* 805AEE64  90 DD 00 18 */	stw r6, 0x18(r29)
/* 805AEE68  90 BD 00 1C */	stw r5, 0x1c(r29)
/* 805AEE6C  90 9D 00 20 */	stw r4, 0x20(r29)
/* 805AEE70  90 1D 00 24 */	stw r0, 0x24(r29)
/* 805AEE74  3B BD 00 28 */	addi r29, r29, 0x28
lbl_805AEE78:
/* 805AEE78  93 BE 02 E0 */	stw r29, 0x2e0(r30)
/* 805AEE7C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 805AEE80  39 61 00 40 */	addi r11, r1, 0x40
/* 805AEE84  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 805AEE88  4B AE C0 91 */	bl func_8009AF18
/* 805AEE8C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805AEE90  7C 08 03 A6 */	mtlr r0
/* 805AEE94  38 21 00 50 */	addi r1, r1, 0x50
/* 805AEE98  4E 80 00 20 */	blr 
