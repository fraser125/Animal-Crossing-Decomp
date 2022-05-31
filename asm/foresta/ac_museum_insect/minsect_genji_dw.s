lbl_8046C820:
/* 8046C820  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8046C824  7C 08 02 A6 */	mflr r0
/* 8046C828  90 01 00 34 */	stw r0, 0x34(r1)
/* 8046C82C  39 61 00 30 */	addi r11, r1, 0x30
/* 8046C830  4B C2 E6 A1 */	bl func_8009AED0
/* 8046C834  3C A0 81 1D */	lis r5, data_811CDFD0@ha /* 0x811CDFD0@ha */
/* 8046C838  7C 7E 1B 78 */	mr r30, r3
/* 8046C83C  38 65 DF D0 */	addi r3, r5, data_811CDFD0@l /* 0x811CDFD0@l */
/* 8046C840  7C 9F 23 78 */	mr r31, r4
/* 8046C844  80 63 00 00 */	lwz r3, 0(r3)
/* 8046C848  3B 80 00 00 */	li r28, 0
/* 8046C84C  3B A3 18 94 */	addi r29, r3, 0x1894
lbl_8046C850:
/* 8046C850  A8 1D 00 8C */	lha r0, 0x8c(r29)
/* 8046C854  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8046C858  41 82 00 10 */	beq lbl_8046C868
/* 8046C85C  7F A3 EB 78 */	mr r3, r29
/* 8046C860  7F E4 FB 78 */	mr r4, r31
/* 8046C864  4B FF F7 35 */	bl genji_light_draw
lbl_8046C868:
/* 8046C868  3B 9C 00 01 */	addi r28, r28, 1
/* 8046C86C  3B BD 00 94 */	addi r29, r29, 0x94
/* 8046C870  2C 1C 00 06 */	cmpwi r28, 6
/* 8046C874  41 80 FF DC */	blt lbl_8046C850
/* 8046C878  80 7F 00 00 */	lwz r3, 0(r31)
/* 8046C87C  4B F7 88 8D */	bl _texture_z_light_fog_prim
/* 8046C880  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8046C884  3C A0 43 30 */	lis r5, 0x4330
/* 8046C888  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8046C88C  3C 60 80 64 */	lis r3, lit_589@ha /* 0x8064463C@ha */
/* 8046C890  81 24 00 00 */	lwz r9, 0(r4)
/* 8046C894  38 E3 46 3C */	addi r7, r3, lit_589@l /* 0x8064463C@l */
/* 8046C898  3C 60 80 64 */	lis r3, lit_678@ha /* 0x80644654@ha */
/* 8046C89C  90 A1 00 08 */	stw r5, 8(r1)
/* 8046C8A0  A8 C9 16 B4 */	lha r6, 0x16b4(r9)
/* 8046C8A4  39 03 46 54 */	addi r8, r3, lit_678@l /* 0x80644654@l */
/* 8046C8A8  A8 89 16 B6 */	lha r4, 0x16b6(r9)
/* 8046C8AC  38 60 00 00 */	li r3, 0
/* 8046C8B0  A8 09 16 B8 */	lha r0, 0x16b8(r9)
/* 8046C8B4  6C C6 80 00 */	xoris r6, r6, 0x8000
/* 8046C8B8  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 8046C8BC  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8046C8C0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8046C8C4  C8 A7 00 00 */	lfd f5, 0(r7)
/* 8046C8C8  C8 01 00 08 */	lfd f0, 8(r1)
/* 8046C8CC  90 81 00 14 */	stw r4, 0x14(r1)
/* 8046C8D0  EC 20 28 28 */	fsubs f1, f0, f5
/* 8046C8D4  C0 C8 00 00 */	lfs f6, 0(r8)
/* 8046C8D8  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8046C8DC  C0 7E 00 1C */	lfs f3, 0x1c(r30)
/* 8046C8E0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8046C8E4  EC 26 00 72 */	fmuls f1, f6, f1
/* 8046C8E8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8046C8EC  EC 40 28 28 */	fsubs f2, f0, f5
/* 8046C8F0  C0 9E 00 20 */	lfs f4, 0x20(r30)
/* 8046C8F4  90 A1 00 18 */	stw r5, 0x18(r1)
/* 8046C8F8  EC 23 08 2A */	fadds f1, f3, f1
/* 8046C8FC  C0 7E 00 24 */	lfs f3, 0x24(r30)
/* 8046C900  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8046C904  EC 46 00 B2 */	fmuls f2, f6, f2
/* 8046C908  83 9F 00 00 */	lwz r28, 0(r31)
/* 8046C90C  EC 00 28 28 */	fsubs f0, f0, f5
/* 8046C910  EC 44 10 2A */	fadds f2, f4, f2
/* 8046C914  EC 06 00 32 */	fmuls f0, f6, f0
/* 8046C918  EC 63 00 2A */	fadds f3, f3, f0
/* 8046C91C  4B F9 F9 E5 */	bl Matrix_translate
/* 8046C920  A8 BE 00 6C */	lha r5, 0x6c(r30)
/* 8046C924  38 60 00 00 */	li r3, 0
/* 8046C928  38 80 00 00 */	li r4, 0
/* 8046C92C  38 C0 00 01 */	li r6, 1
/* 8046C930  4B FA 00 65 */	bl Matrix_rotateXYZ
/* 8046C934  A8 7E 00 7E */	lha r3, 0x7e(r30)
/* 8046C938  38 80 00 00 */	li r4, 0
/* 8046C93C  38 A0 00 00 */	li r5, 0
/* 8046C940  38 C0 00 01 */	li r6, 1
/* 8046C944  4B FA 00 51 */	bl Matrix_rotateXYZ
/* 8046C948  38 60 4E 38 */	li r3, 0x4e38
/* 8046C94C  38 80 00 00 */	li r4, 0
/* 8046C950  38 A0 80 00 */	li r5, -32768
/* 8046C954  38 C0 00 01 */	li r6, 1
/* 8046C958  4B FA 00 3D */	bl Matrix_rotateXYZ
/* 8046C95C  3C 80 80 64 */	lis r4, lit_678@ha /* 0x80644654@ha */
/* 8046C960  38 60 00 01 */	li r3, 1
/* 8046C964  C0 24 46 54 */	lfs f1, lit_678@l(r4)  /* 0x80644654@l */
/* 8046C968  FC 40 08 90 */	fmr f2, f1
/* 8046C96C  FC 60 08 90 */	fmr f3, f1
/* 8046C970  4B F9 FA 7D */	bl Matrix_scale
/* 8046C974  83 BC 02 D0 */	lwz r29, 0x2d0(r28)
/* 8046C978  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8046C97C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8046C980  38 7D 00 08 */	addi r3, r29, 8
/* 8046C984  90 7C 02 D0 */	stw r3, 0x2d0(r28)
/* 8046C988  90 1D 00 00 */	stw r0, 0(r29)
/* 8046C98C  80 7F 00 00 */	lwz r3, 0(r31)
/* 8046C990  4B FA 0A 45 */	bl _Matrix_to_Mtx_new
/* 8046C994  90 7D 00 04 */	stw r3, 4(r29)
/* 8046C998  3C 80 80 EC */	lis r4, act_m_mu_genji_modelT@ha /* 0x80EBA900@ha */
/* 8046C99C  3C A0 DE 00 */	lis r5, 0xde00
/* 8046C9A0  7F C3 F3 78 */	mr r3, r30
/* 8046C9A4  80 FC 02 D0 */	lwz r7, 0x2d0(r28)
/* 8046C9A8  38 04 A9 00 */	addi r0, r4, act_m_mu_genji_modelT@l /* 0x80EBA900@l */
/* 8046C9AC  7F E4 FB 78 */	mr r4, r31
/* 8046C9B0  38 C7 00 08 */	addi r6, r7, 8
/* 8046C9B4  90 DC 02 D0 */	stw r6, 0x2d0(r28)
/* 8046C9B8  90 A7 00 00 */	stw r5, 0(r7)
/* 8046C9BC  90 07 00 04 */	stw r0, 4(r7)
/* 8046C9C0  4B FF F5 D9 */	bl genji_light_draw
/* 8046C9C4  39 61 00 30 */	addi r11, r1, 0x30
/* 8046C9C8  4B C2 E5 55 */	bl func_8009AF1C
/* 8046C9CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8046C9D0  7C 08 03 A6 */	mtlr r0
/* 8046C9D4  38 21 00 30 */	addi r1, r1, 0x30
/* 8046C9D8  4E 80 00 20 */	blr 
