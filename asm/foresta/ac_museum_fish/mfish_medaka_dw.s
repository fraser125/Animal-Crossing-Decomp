lbl_8044A25C:
/* 8044A25C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8044A260  7C 08 02 A6 */	mflr r0
/* 8044A264  90 01 00 44 */	stw r0, 0x44(r1)
/* 8044A268  39 61 00 40 */	addi r11, r1, 0x40
/* 8044A26C  4B C5 0C 5D */	bl func_8009AEC8
/* 8044A270  80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 8044A274  7C 7B 1B 78 */	mr r27, r3
/* 8044A278  7C 9C 23 78 */	mr r28, r4
/* 8044A27C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8044A280  3B FB 00 38 */	addi r31, r27, 0x38
/* 8044A284  41 82 00 0C */	beq lbl_8044A290
/* 8044A288  3B DF 00 70 */	addi r30, r31, 0x70
/* 8044A28C  48 00 00 08 */	b lbl_8044A294
lbl_8044A290:
/* 8044A290  3B DF 02 B0 */	addi r30, r31, 0x2b0
lbl_8044A294:
/* 8044A294  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8044A298  3C C0 43 30 */	lis r6, 0x4330
/* 8044A29C  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 8044A2A0  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 8044A2A4  80 63 00 00 */	lwz r3, 0(r3)
/* 8044A2A8  39 04 42 8C */	addi r8, r4, lit_570@l /* 0x8064428C@l */
/* 8044A2AC  A8 BB 06 0C */	lha r5, 0x60c(r27)
/* 8044A2B0  3C 80 80 64 */	lis r4, lit_793@ha /* 0x806442C4@ha */
/* 8044A2B4  A8 03 1B 96 */	lha r0, 0x1b96(r3)
/* 8044A2B8  3C 60 80 64 */	lis r3, lit_792@ha /* 0x806442C0@ha */
/* 8044A2BC  6C A7 80 00 */	xoris r7, r5, 0x8000
/* 8044A2C0  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8044A2C4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8044A2C8  38 A3 42 C0 */	addi r5, r3, lit_792@l /* 0x806442C0@l */
/* 8044A2CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8044A2D0  38 60 00 00 */	li r3, 0
/* 8044A2D4  C8 88 00 00 */	lfd f4, 0(r8)
/* 8044A2D8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8044A2DC  C0 24 42 C4 */	lfs f1, lit_793@l(r4)  /* 0x806442C4@l */
/* 8044A2E0  EC 00 20 28 */	fsubs f0, f0, f4
/* 8044A2E4  90 E1 00 0C */	stw r7, 0xc(r1)
/* 8044A2E8  C0 65 00 00 */	lfs f3, 0(r5)
/* 8044A2EC  90 C1 00 08 */	stw r6, 8(r1)
/* 8044A2F0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8044A2F4  83 BC 00 00 */	lwz r29, 0(r28)
/* 8044A2F8  C8 41 00 08 */	lfd f2, 8(r1)
/* 8044A2FC  C0 3B 05 A0 */	lfs f1, 0x5a0(r27)
/* 8044A300  EC 82 20 28 */	fsubs f4, f2, f4
/* 8044A304  C0 5B 05 A4 */	lfs f2, 0x5a4(r27)
/* 8044A308  EC 03 00 2A */	fadds f0, f3, f0
/* 8044A30C  C0 7B 05 A8 */	lfs f3, 0x5a8(r27)
/* 8044A310  EC 04 00 32 */	fmuls f0, f4, f0
/* 8044A314  FC 00 00 1E */	fctiwz f0, f0
/* 8044A318  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8044A31C  83 41 00 1C */	lwz r26, 0x1c(r1)
/* 8044A320  4B FC 1F E1 */	bl Matrix_translate
/* 8044A324  A8 7B 06 0E */	lha r3, 0x60e(r27)
/* 8044A328  38 80 00 01 */	li r4, 1
/* 8044A32C  4B FC 23 31 */	bl Matrix_RotateY
/* 8044A330  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 8044A334  3C 60 80 64 */	lis r3, lit_1315@ha /* 0x80644334@ha */
/* 8044A338  C0 24 42 48 */	lfs f1, lit_468@l(r4)  /* 0x80644248@l */
/* 8044A33C  C0 63 43 34 */	lfs f3, lit_1315@l(r3)  /* 0x80644334@l */
/* 8044A340  38 60 00 01 */	li r3, 1
/* 8044A344  C0 1B 00 24 */	lfs f0, 0x24(r27)
/* 8044A348  FC 40 08 90 */	fmr f2, f1
/* 8044A34C  EC 63 00 32 */	fmuls f3, f3, f0
/* 8044A350  4B FC 1F B1 */	bl Matrix_translate
/* 8044A354  7F 43 D3 78 */	mr r3, r26
/* 8044A358  38 80 00 01 */	li r4, 1
/* 8044A35C  4B FC 21 5D */	bl Matrix_RotateX
/* 8044A360  C0 1B 00 24 */	lfs f0, 0x24(r27)
/* 8044A364  3C A0 80 64 */	lis r5, lit_468@ha /* 0x80644248@ha */
/* 8044A368  3C 80 80 64 */	lis r4, lit_471@ha /* 0x8064425C@ha */
/* 8044A36C  C0 25 42 48 */	lfs f1, lit_468@l(r5)  /* 0x80644248@l */
/* 8044A370  FC 00 00 50 */	fneg f0, f0
/* 8044A374  C0 64 42 5C */	lfs f3, lit_471@l(r4)  /* 0x8064425C@l */
/* 8044A378  FC 40 08 90 */	fmr f2, f1
/* 8044A37C  38 60 00 01 */	li r3, 1
/* 8044A380  EC 63 00 32 */	fmuls f3, f3, f0
/* 8044A384  4B FC 1F 7D */	bl Matrix_translate
/* 8044A388  C0 3B 00 00 */	lfs f1, 0(r27)
/* 8044A38C  38 60 00 01 */	li r3, 1
/* 8044A390  FC 40 08 90 */	fmr f2, f1
/* 8044A394  FC 60 08 90 */	fmr f3, f1
/* 8044A398  4B FC 20 55 */	bl Matrix_scale
/* 8044A39C  83 5D 02 D0 */	lwz r26, 0x2d0(r29)
/* 8044A3A0  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8044A3A4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8044A3A8  38 7A 00 08 */	addi r3, r26, 8
/* 8044A3AC  90 7D 02 D0 */	stw r3, 0x2d0(r29)
/* 8044A3B0  90 1A 00 00 */	stw r0, 0(r26)
/* 8044A3B4  80 7C 00 00 */	lwz r3, 0(r28)
/* 8044A3B8  4B FC 30 1D */	bl _Matrix_to_Mtx_new
/* 8044A3BC  3C 80 80 45 */	lis r4, mfish_medaka_before_disp@ha /* 0x8044A138@ha */
/* 8044A3C0  90 7A 00 04 */	stw r3, 4(r26)
/* 8044A3C4  38 C4 A1 38 */	addi r6, r4, mfish_medaka_before_disp@l /* 0x8044A138@l */
/* 8044A3C8  7F 83 E3 78 */	mr r3, r28
/* 8044A3CC  7F E4 FB 78 */	mr r4, r31
/* 8044A3D0  7F C5 F3 78 */	mr r5, r30
/* 8044A3D4  7F 68 DB 78 */	mr r8, r27
/* 8044A3D8  38 E0 00 00 */	li r7, 0
/* 8044A3DC  4B F2 73 5D */	bl cKF_Si3_draw_R_SV
/* 8044A3E0  39 61 00 40 */	addi r11, r1, 0x40
/* 8044A3E4  4B C5 0B 31 */	bl func_8009AF14
/* 8044A3E8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8044A3EC  7C 08 03 A6 */	mtlr r0
/* 8044A3F0  38 21 00 40 */	addi r1, r1, 0x40
/* 8044A3F4  4E 80 00 20 */	blr 
