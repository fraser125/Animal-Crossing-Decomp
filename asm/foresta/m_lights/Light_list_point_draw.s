lbl_803BC278:
/* 803BC278  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803BC27C  7C 08 02 A6 */	mflr r0
/* 803BC280  90 01 00 54 */	stw r0, 0x54(r1)
/* 803BC284  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 803BC288  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 803BC28C  39 61 00 40 */	addi r11, r1, 0x40
/* 803BC290  4B CD EC 3D */	bl func_8009AECC
/* 803BC294  7C 7B 1B 78 */	mr r27, r3
/* 803BC298  83 A3 00 00 */	lwz r29, 0(r3)
/* 803BC29C  83 C3 1D 90 */	lwz r30, 0x1d90(r3)
/* 803BC2A0  80 7D 02 E0 */	lwz r3, 0x2e0(r29)
/* 803BC2A4  48 02 90 95 */	bl gfx_softsprite_prim_xlu
/* 803BC2A8  3C C0 E3 00 */	lis r6, 0xE300 /* 0xE3001A01@ha */
/* 803BC2AC  3C A0 80 EE */	lis r5, point_light_init_model@ha /* 0x80EE3240@ha */
/* 803BC2B0  38 06 1A 01 */	addi r0, r6, 0x1A01 /* 0xE3001A01@l */
/* 803BC2B4  3C 80 80 EE */	lis r4, point_light_model@ha /* 0x80EE3280@ha */
/* 803BC2B8  90 03 00 00 */	stw r0, 0(r3)
/* 803BC2BC  38 00 00 20 */	li r0, 0x20
/* 803BC2C0  39 06 18 01 */	addi r8, r6, 0x1801
/* 803BC2C4  38 E0 00 00 */	li r7, 0
/* 803BC2C8  90 03 00 04 */	stw r0, 4(r3)
/* 803BC2CC  3C C0 DE 00 */	lis r6, 0xde00
/* 803BC2D0  38 05 32 40 */	addi r0, r5, point_light_init_model@l /* 0x80EE3240@l */
/* 803BC2D4  3B E4 32 80 */	addi r31, r4, point_light_model@l /* 0x80EE3280@l */
/* 803BC2D8  91 03 00 08 */	stw r8, 8(r3)
/* 803BC2DC  3B 83 00 18 */	addi r28, r3, 0x18
/* 803BC2E0  90 E3 00 0C */	stw r7, 0xc(r3)
/* 803BC2E4  90 C3 00 10 */	stw r6, 0x10(r3)
/* 803BC2E8  90 03 00 14 */	stw r0, 0x14(r3)
/* 803BC2EC  48 00 01 10 */	b lbl_803BC3FC
lbl_803BC2F0:
/* 803BC2F0  81 5E 00 00 */	lwz r10, 0(r30)
/* 803BC2F4  88 0A 00 00 */	lbz r0, 0(r10)
/* 803BC2F8  28 00 00 02 */	cmplwi r0, 2
/* 803BC2FC  40 82 00 FC */	bne lbl_803BC3F8
/* 803BC300  88 0A 00 0B */	lbz r0, 0xb(r10)
/* 803BC304  28 00 00 00 */	cmplwi r0, 0
/* 803BC308  41 82 00 F0 */	beq lbl_803BC3F8
/* 803BC30C  A8 8A 00 0C */	lha r4, 0xc(r10)
/* 803BC310  3C C0 43 30 */	lis r6, 0x4330
/* 803BC314  3C 00 FA 00 */	lis r0, 0xfa00
/* 803BC318  3C 60 80 64 */	lis r3, lit_463@ha /* 0x806425B4@ha */
/* 803BC31C  90 1C 00 00 */	stw r0, 0(r28)
/* 803BC320  7C E4 21 D6 */	mullw r7, r4, r4
/* 803BC324  39 03 25 B4 */	addi r8, r3, lit_463@l /* 0x806425B4@l */
/* 803BC328  88 0A 00 09 */	lbz r0, 9(r10)
/* 803BC32C  3D 20 80 64 */	lis r9, lit_645@ha /* 0x806425E8@ha */
/* 803BC330  88 8A 00 08 */	lbz r4, 8(r10)
/* 803BC334  38 60 00 00 */	li r3, 0
/* 803BC338  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 803BC33C  6C E7 80 00 */	xoris r7, r7, 0x8000
/* 803BC340  88 AA 00 0A */	lbz r5, 0xa(r10)
/* 803BC344  50 80 C0 0E */	rlwimi r0, r4, 0x18, 0, 7
/* 803BC348  90 E1 00 0C */	stw r7, 0xc(r1)
/* 803BC34C  50 A0 44 2E */	rlwimi r0, r5, 8, 0x10, 0x17
/* 803BC350  C8 68 00 00 */	lfd f3, 0(r8)
/* 803BC354  60 00 00 32 */	ori r0, r0, 0x32
/* 803BC358  90 C1 00 08 */	stw r6, 8(r1)
/* 803BC35C  C0 29 25 E8 */	lfs f1, lit_645@l(r9)  /* 0x806425E8@l */
/* 803BC360  90 1C 00 04 */	stw r0, 4(r28)
/* 803BC364  C8 01 00 08 */	lfd f0, 8(r1)
/* 803BC368  A8 AA 00 02 */	lha r5, 2(r10)
/* 803BC36C  A8 8A 00 04 */	lha r4, 4(r10)
/* 803BC370  EC 00 18 28 */	fsubs f0, f0, f3
/* 803BC374  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 803BC378  A8 0A 00 06 */	lha r0, 6(r10)
/* 803BC37C  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 803BC380  90 A1 00 14 */	stw r5, 0x14(r1)
/* 803BC384  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 803BC388  90 C1 00 10 */	stw r6, 0x10(r1)
/* 803BC38C  EF E1 00 32 */	fmuls f31, f1, f0
/* 803BC390  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803BC394  90 81 00 1C */	stw r4, 0x1c(r1)
/* 803BC398  EC 20 18 28 */	fsubs f1, f0, f3
/* 803BC39C  90 C1 00 18 */	stw r6, 0x18(r1)
/* 803BC3A0  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 803BC3A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803BC3A8  EC 40 18 28 */	fsubs f2, f0, f3
/* 803BC3AC  90 C1 00 20 */	stw r6, 0x20(r1)
/* 803BC3B0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 803BC3B4  EC 60 18 28 */	fsubs f3, f0, f3
/* 803BC3B8  48 04 FF 49 */	bl Matrix_translate
/* 803BC3BC  FC 20 F8 90 */	fmr f1, f31
/* 803BC3C0  38 60 00 01 */	li r3, 1
/* 803BC3C4  FC 40 F8 90 */	fmr f2, f31
/* 803BC3C8  FC 60 F8 90 */	fmr f3, f31
/* 803BC3CC  48 05 00 21 */	bl Matrix_scale
/* 803BC3D0  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 803BC3D4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 803BC3D8  90 1C 00 08 */	stw r0, 8(r28)
/* 803BC3DC  80 7B 00 00 */	lwz r3, 0(r27)
/* 803BC3E0  48 05 0F F5 */	bl _Matrix_to_Mtx_new
/* 803BC3E4  90 7C 00 0C */	stw r3, 0xc(r28)
/* 803BC3E8  3C 00 DE 00 */	lis r0, 0xde00
/* 803BC3EC  90 1C 00 10 */	stw r0, 0x10(r28)
/* 803BC3F0  93 FC 00 14 */	stw r31, 0x14(r28)
/* 803BC3F4  3B 9C 00 18 */	addi r28, r28, 0x18
lbl_803BC3F8:
/* 803BC3F8  83 DE 00 08 */	lwz r30, 8(r30)
lbl_803BC3FC:
/* 803BC3FC  28 1E 00 00 */	cmplwi r30, 0
/* 803BC400  40 82 FE F0 */	bne lbl_803BC2F0
/* 803BC404  93 9D 02 E0 */	stw r28, 0x2e0(r29)
/* 803BC408  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 803BC40C  39 61 00 40 */	addi r11, r1, 0x40
/* 803BC410  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 803BC414  4B CD EB 05 */	bl func_8009AF18
/* 803BC418  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803BC41C  7C 08 03 A6 */	mtlr r0
/* 803BC420  38 21 00 50 */	addi r1, r1, 0x50
/* 803BC424  4E 80 00 20 */	blr 
