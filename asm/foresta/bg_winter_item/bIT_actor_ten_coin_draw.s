lbl_804BFA4C:
/* 804BFA4C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 804BFA50  7C 08 02 A6 */	mflr r0
/* 804BFA54  90 01 00 94 */	stw r0, 0x94(r1)
/* 804BFA58  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 804BFA5C  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 804BFA60  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 804BFA64  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 804BFA68  39 61 00 70 */	addi r11, r1, 0x70
/* 804BFA6C  4B BD B4 61 */	bl func_8009AECC
/* 804BFA70  FF E0 08 90 */	fmr f31, f1
/* 804BFA74  7C 7B 1B 78 */	mr r27, r3
/* 804BFA78  7C 9C 23 78 */	mr r28, r4
/* 804BFA7C  7C BD 2B 78 */	mr r29, r5
/* 804BFA80  7C DE 33 78 */	mr r30, r6
/* 804BFA84  3B E0 00 00 */	li r31, 0
lbl_804BFA88:
/* 804BFA88  A8 1D 00 4C */	lha r0, 0x4c(r29)
/* 804BFA8C  2C 00 00 00 */	cmpwi r0, 0
/* 804BFA90  41 82 01 84 */	beq lbl_804BFC14
/* 804BFA94  3C 60 80 64 */	lis r3, data_8064613C@ha /* 0x8064613C@ha */
/* 804BFA98  C0 03 61 3C */	lfs f0, data_8064613C@l(r3)  /* 0x8064613C@l */
/* 804BFA9C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804BFAA0  A8 1D 00 50 */	lha r0, 0x50(r29)
/* 804BFAA4  2C 00 00 00 */	cmpwi r0, 0
/* 804BFAA8  41 82 00 54 */	beq lbl_804BFAFC
/* 804BFAAC  A8 9D 00 52 */	lha r4, 0x52(r29)
/* 804BFAB0  3C 60 43 30 */	lis r3, 0x4330
/* 804BFAB4  A8 1D 00 54 */	lha r0, 0x54(r29)
/* 804BFAB8  3C A0 80 64 */	lis r5, lit_770@ha /* 0x8064615C@ha */
/* 804BFABC  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 804BFAC0  3C C0 80 64 */	lis r6, lit_845@ha /* 0x80646164@ha */
/* 804BFAC4  90 81 00 34 */	stw r4, 0x34(r1)
/* 804BFAC8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804BFACC  C8 45 61 5C */	lfd f2, lit_770@l(r5)  /* 0x8064615C@l */
/* 804BFAD0  90 61 00 30 */	stw r3, 0x30(r1)
/* 804BFAD4  C0 66 61 64 */	lfs f3, lit_845@l(r6)  /* 0x80646164@l */
/* 804BFAD8  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804BFADC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 804BFAE0  EC 20 10 28 */	fsubs f1, f0, f2
/* 804BFAE4  90 61 00 38 */	stw r3, 0x38(r1)
/* 804BFAE8  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 804BFAEC  EC 00 10 28 */	fsubs f0, f0, f2
/* 804BFAF0  EC 01 00 24 */	fdivs f0, f1, f0
/* 804BFAF4  EC 63 00 28 */	fsubs f3, f3, f0
/* 804BFAF8  48 00 00 08 */	b lbl_804BFB00
lbl_804BFAFC:
/* 804BFAFC  FC 60 00 90 */	fmr f3, f0
lbl_804BFB00:
/* 804BFB00  EC 03 00 F2 */	fmuls f0, f3, f3
/* 804BFB04  38 00 00 FF */	li r0, 0xff
/* 804BFB08  3C 60 80 64 */	lis r3, lit_847@ha /* 0x8064616C@ha */
/* 804BFB0C  3C A0 80 64 */	lis r5, lit_846@ha /* 0x80646168@ha */
/* 804BFB10  38 83 61 6C */	addi r4, r3, lit_847@l /* 0x8064616C@l */
/* 804BFB14  C0 45 61 68 */	lfs f2, lit_846@l(r5)  /* 0x80646168@l */
/* 804BFB18  EC 03 00 32 */	fmuls f0, f3, f0
/* 804BFB1C  C0 24 00 00 */	lfs f1, 0(r4)
/* 804BFB20  3C 60 80 64 */	lis r3, lit_848@ha /* 0x80646170@ha */
/* 804BFB24  98 01 00 10 */	stb r0, 0x10(r1)
/* 804BFB28  EC 63 00 32 */	fmuls f3, f3, f0
/* 804BFB2C  C0 03 61 70 */	lfs f0, lit_848@l(r3)  /* 0x80646170@l */
/* 804BFB30  98 01 00 13 */	stb r0, 0x13(r1)
/* 804BFB34  EC 21 00 F2 */	fmuls f1, f1, f3
/* 804BFB38  EC 00 00 F2 */	fmuls f0, f0, f3
/* 804BFB3C  EC 22 08 2A */	fadds f1, f2, f1
/* 804BFB40  FC 00 00 1E */	fctiwz f0, f0
/* 804BFB44  FC 20 08 1E */	fctiwz f1, f1
/* 804BFB48  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 804BFB4C  D8 21 00 40 */	stfd f1, 0x40(r1)
/* 804BFB50  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 804BFB54  80 61 00 44 */	lwz r3, 0x44(r1)
/* 804BFB58  98 01 00 12 */	stb r0, 0x12(r1)
/* 804BFB5C  98 61 00 11 */	stb r3, 0x11(r1)
/* 804BFB60  A8 7D 00 46 */	lha r3, 0x46(r29)
/* 804BFB64  4B EF AF 8D */	bl sin_s
/* 804BFB68  C0 1D 00 3C */	lfs f0, 0x3c(r29)
/* 804BFB6C  A8 7D 00 40 */	lha r3, 0x40(r29)
/* 804BFB70  EF C0 00 72 */	fmuls f30, f0, f1
/* 804BFB74  4B EF AF 7D */	bl sin_s
/* 804BFB78  EC 1E 00 72 */	fmuls f0, f30, f1
/* 804BFB7C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804BFB80  A8 7D 00 40 */	lha r3, 0x40(r29)
/* 804BFB84  4B EF AF 19 */	bl cos_s
/* 804BFB88  EC 1E 00 72 */	fmuls f0, f30, f1
/* 804BFB8C  38 7D 00 30 */	addi r3, r29, 0x30
/* 804BFB90  38 81 00 20 */	addi r4, r1, 0x20
/* 804BFB94  38 A1 00 14 */	addi r5, r1, 0x14
/* 804BFB98  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804BFB9C  4B EF B3 A9 */	bl xyz_t_add
/* 804BFBA0  3C 60 80 4C */	lis r3, bIT_actor_ten_coin_draw_af@ha /* 0x804BF9A8@ha */
/* 804BFBA4  3C A0 80 66 */	lis r5, ZeroSVec@ha /* 0x8065F05C@ha */
/* 804BFBA8  38 03 F9 A8 */	addi r0, r3, bIT_actor_ten_coin_draw_af@l /* 0x804BF9A8@l */
/* 804BFBAC  3C 80 80 6A */	lis r4, d_size_828@ha /* 0x806988F0@ha */
/* 804BFBB0  90 01 00 08 */	stw r0, 8(r1)
/* 804BFBB4  38 01 00 10 */	addi r0, r1, 0x10
/* 804BFBB8  3C 60 80 4C */	lis r3, bIT_actor_ten_coin_draw_bf@ha /* 0x804BF9EC@ha */
/* 804BFBBC  39 04 88 F0 */	addi r8, r4, d_size_828@l /* 0x806988F0@l */
/* 804BFBC0  90 01 00 0C */	stw r0, 0xc(r1)
/* 804BFBC4  38 E5 F0 5C */	addi r7, r5, ZeroSVec@l /* 0x8065F05C@l */
/* 804BFBC8  39 43 F9 EC */	addi r10, r3, bIT_actor_ten_coin_draw_bf@l /* 0x804BF9EC@l */
/* 804BFBCC  7F 63 DB 78 */	mr r3, r27
/* 804BFBD0  A0 BD 00 42 */	lhz r5, 0x42(r29)
/* 804BFBD4  7F 84 E3 78 */	mr r4, r28
/* 804BFBD8  38 C1 00 14 */	addi r6, r1, 0x14
/* 804BFBDC  39 20 00 FF */	li r9, 0xff
/* 804BFBE0  48 00 3C 89 */	bl bit_cmn_single_drawS
/* 804BFBE4  FC 20 F8 90 */	fmr f1, f31
/* 804BFBE8  3C 80 80 66 */	lis r4, ZeroSVec@ha /* 0x8065F05C@ha */
/* 804BFBEC  3C 60 80 6A */	lis r3, d_size_828@ha /* 0x806988F0@ha */
/* 804BFBF0  A0 BD 00 42 */	lhz r5, 0x42(r29)
/* 804BFBF4  38 E4 F0 5C */	addi r7, r4, ZeroSVec@l /* 0x8065F05C@l */
/* 804BFBF8  7F 84 E3 78 */	mr r4, r28
/* 804BFBFC  39 03 88 F0 */	addi r8, r3, d_size_828@l /* 0x806988F0@l */
/* 804BFC00  7F 63 DB 78 */	mr r3, r27
/* 804BFC04  7F CA F3 78 */	mr r10, r30
/* 804BFC08  38 C1 00 14 */	addi r6, r1, 0x14
/* 804BFC0C  39 20 00 FF */	li r9, 0xff
/* 804BFC10  48 00 38 39 */	bl bit_cmn_single_drawS_shadow
lbl_804BFC14:
/* 804BFC14  3B FF 00 01 */	addi r31, r31, 1
/* 804BFC18  3B BD 00 58 */	addi r29, r29, 0x58
/* 804BFC1C  2C 1F 00 05 */	cmpwi r31, 5
/* 804BFC20  41 80 FE 68 */	blt lbl_804BFA88
/* 804BFC24  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 804BFC28  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 804BFC2C  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 804BFC30  39 61 00 70 */	addi r11, r1, 0x70
/* 804BFC34  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 804BFC38  4B BD B2 E1 */	bl func_8009AF18
/* 804BFC3C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 804BFC40  7C 08 03 A6 */	mtlr r0
/* 804BFC44  38 21 00 90 */	addi r1, r1, 0x90
/* 804BFC48  4E 80 00 20 */	blr 
