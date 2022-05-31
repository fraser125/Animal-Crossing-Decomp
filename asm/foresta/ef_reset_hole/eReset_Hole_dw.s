lbl_8061B284:
/* 8061B284  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8061B288  7C 08 02 A6 */	mflr r0
/* 8061B28C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8061B290  39 61 00 20 */	addi r11, r1, 0x20
/* 8061B294  4B A7 FC 41 */	bl func_8009AED4
/* 8061B298  7C 9E 23 78 */	mr r30, r4
/* 8061B29C  7C 7D 1B 78 */	mr r29, r3
/* 8061B2A0  83 E4 00 00 */	lwz r31, 0(r4)
/* 8061B2A4  7F E3 FB 78 */	mr r3, r31
/* 8061B2A8  4B DC 9E B1 */	bl _texture_z_light_fog_prim_xlu
/* 8061B2AC  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 8061B2B0  38 60 00 00 */	li r3, 0
/* 8061B2B4  C0 5D 00 14 */	lfs f2, 0x14(r29)
/* 8061B2B8  C0 7D 00 18 */	lfs f3, 0x18(r29)
/* 8061B2BC  4B DF 10 45 */	bl Matrix_translate
/* 8061B2C0  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8061B2C4  3C 00 43 30 */	lis r0, 0x4330
/* 8061B2C8  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8061B2CC  3C A0 80 65 */	lis r5, lit_391@ha /* 0x8064CA20@ha */
/* 8061B2D0  80 84 00 00 */	lwz r4, 0(r4)
/* 8061B2D4  3C 60 80 65 */	lis r3, lit_394@ha /* 0x8064CA2C@ha */
/* 8061B2D8  C8 23 CA 2C */	lfd f1, lit_394@l(r3)  /* 0x8064CA2C@l */
/* 8061B2DC  3C C0 80 65 */	lis r6, data_8064CA1C@ha /* 0x8064CA1C@ha */
/* 8061B2E0  A8 84 19 0A */	lha r4, 0x190a(r4)
/* 8061B2E4  38 60 00 01 */	li r3, 1
/* 8061B2E8  90 01 00 08 */	stw r0, 8(r1)
/* 8061B2EC  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8061B2F0  C0 85 CA 20 */	lfs f4, lit_391@l(r5)  /* 0x8064CA20@l */
/* 8061B2F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8061B2F8  C0 A6 CA 1C */	lfs f5, data_8064CA1C@l(r6)  /* 0x8064CA1C@l */
/* 8061B2FC  C8 01 00 08 */	lfd f0, 8(r1)
/* 8061B300  C0 5D 00 38 */	lfs f2, 0x38(r29)
/* 8061B304  EC 60 08 28 */	fsubs f3, f0, f1
/* 8061B308  C0 3D 00 34 */	lfs f1, 0x34(r29)
/* 8061B30C  C0 1D 00 3C */	lfs f0, 0x3c(r29)
/* 8061B310  EC 64 00 F2 */	fmuls f3, f4, f3
/* 8061B314  EC 65 18 2A */	fadds f3, f5, f3
/* 8061B318  EC 21 00 F2 */	fmuls f1, f1, f3
/* 8061B31C  EC 42 00 F2 */	fmuls f2, f2, f3
/* 8061B320  EC 60 00 F2 */	fmuls f3, f0, f3
/* 8061B324  4B DF 10 C9 */	bl Matrix_scale
/* 8061B328  83 BF 02 E0 */	lwz r29, 0x2e0(r31)
/* 8061B32C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8061B330  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8061B334  38 7D 00 08 */	addi r3, r29, 8
/* 8061B338  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 8061B33C  90 1D 00 00 */	stw r0, 0(r29)
/* 8061B340  80 7E 00 00 */	lwz r3, 0(r30)
/* 8061B344  4B DF 20 91 */	bl _Matrix_to_Mtx_new
/* 8061B348  90 7D 00 04 */	stw r3, 4(r29)
/* 8061B34C  3C 60 80 CC */	lis r3, ef_reset_hole_modelT@ha /* 0x80CBD080@ha */
/* 8061B350  3C 80 DE 00 */	lis r4, 0xde00
/* 8061B354  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 8061B358  38 03 D0 80 */	addi r0, r3, ef_reset_hole_modelT@l /* 0x80CBD080@l */
/* 8061B35C  38 65 00 08 */	addi r3, r5, 8
/* 8061B360  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 8061B364  90 85 00 00 */	stw r4, 0(r5)
/* 8061B368  90 05 00 04 */	stw r0, 4(r5)
/* 8061B36C  39 61 00 20 */	addi r11, r1, 0x20
/* 8061B370  4B A7 FB B1 */	bl func_8009AF20
/* 8061B374  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8061B378  7C 08 03 A6 */	mtlr r0
/* 8061B37C  38 21 00 20 */	addi r1, r1, 0x20
/* 8061B380  4E 80 00 20 */	blr 
