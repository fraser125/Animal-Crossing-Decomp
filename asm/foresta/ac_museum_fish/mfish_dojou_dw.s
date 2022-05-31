lbl_8044D888:
/* 8044D888  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8044D88C  7C 08 02 A6 */	mflr r0
/* 8044D890  90 01 00 34 */	stw r0, 0x34(r1)
/* 8044D894  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8044D898  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8044D89C  39 61 00 20 */	addi r11, r1, 0x20
/* 8044D8A0  4B C4 D6 29 */	bl func_8009AEC8
/* 8044D8A4  80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 8044D8A8  7C 7B 1B 78 */	mr r27, r3
/* 8044D8AC  7C 9C 23 78 */	mr r28, r4
/* 8044D8B0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8044D8B4  3B FB 00 38 */	addi r31, r27, 0x38
/* 8044D8B8  41 82 00 0C */	beq lbl_8044D8C4
/* 8044D8BC  3B DF 00 70 */	addi r30, r31, 0x70
/* 8044D8C0  48 00 00 08 */	b lbl_8044D8C8
lbl_8044D8C4:
/* 8044D8C4  3B DF 02 B0 */	addi r30, r31, 0x2b0
lbl_8044D8C8:
/* 8044D8C8  AB 5B 06 0C */	lha r26, 0x60c(r27)
/* 8044D8CC  38 60 00 00 */	li r3, 0
/* 8044D8D0  83 BC 00 00 */	lwz r29, 0(r28)
/* 8044D8D4  C0 3B 05 A0 */	lfs f1, 0x5a0(r27)
/* 8044D8D8  C0 5B 05 A4 */	lfs f2, 0x5a4(r27)
/* 8044D8DC  C0 7B 05 A8 */	lfs f3, 0x5a8(r27)
/* 8044D8E0  4B FB EA 21 */	bl Matrix_translate
/* 8044D8E4  A8 7B 06 0E */	lha r3, 0x60e(r27)
/* 8044D8E8  38 80 00 01 */	li r4, 1
/* 8044D8EC  4B FB ED 71 */	bl Matrix_RotateY
/* 8044D8F0  7F 43 D3 78 */	mr r3, r26
/* 8044D8F4  4B F6 D1 A9 */	bl cos_s
/* 8044D8F8  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8044D8FC  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8044D900  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8044D904  4C 41 13 82 */	cror 2, 1, 2
/* 8044D908  40 82 00 14 */	bne lbl_8044D91C
/* 8044D90C  7F 43 D3 78 */	mr r3, r26
/* 8044D910  4B F6 D1 8D */	bl cos_s
/* 8044D914  FF E0 08 90 */	fmr f31, f1
/* 8044D918  48 00 00 10 */	b lbl_8044D928
lbl_8044D91C:
/* 8044D91C  7F 43 D3 78 */	mr r3, r26
/* 8044D920  4B F6 D1 7D */	bl cos_s
/* 8044D924  FF E0 08 50 */	fneg f31, f1
lbl_8044D928:
/* 8044D928  7F 43 D3 78 */	mr r3, r26
/* 8044D92C  4B F6 D1 71 */	bl cos_s
/* 8044D930  3C 80 80 64 */	lis r4, lit_471@ha /* 0x8064425C@ha */
/* 8044D934  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8044D938  C0 44 42 5C */	lfs f2, lit_471@l(r4)  /* 0x8064425C@l */
/* 8044D93C  38 83 42 48 */	addi r4, r3, lit_468@l /* 0x80644248@l */
/* 8044D940  C0 1B 00 24 */	lfs f0, 0x24(r27)
/* 8044D944  38 60 00 01 */	li r3, 1
/* 8044D948  EC 62 00 72 */	fmuls f3, f2, f1
/* 8044D94C  C0 24 00 00 */	lfs f1, 0(r4)
/* 8044D950  FC 40 08 90 */	fmr f2, f1
/* 8044D954  EC 63 F8 2A */	fadds f3, f3, f31
/* 8044D958  EC 60 00 F2 */	fmuls f3, f0, f3
/* 8044D95C  4B FB E9 A5 */	bl Matrix_translate
/* 8044D960  7F 43 D3 78 */	mr r3, r26
/* 8044D964  38 80 00 01 */	li r4, 1
/* 8044D968  4B FB EB 51 */	bl Matrix_RotateX
/* 8044D96C  7F 43 D3 78 */	mr r3, r26
/* 8044D970  4B F6 D1 2D */	bl cos_s
/* 8044D974  C0 1B 00 24 */	lfs f0, 0x24(r27)
/* 8044D978  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 8044D97C  38 83 42 5C */	addi r4, r3, lit_471@l /* 0x8064425C@l */
/* 8044D980  FC 00 00 50 */	fneg f0, f0
/* 8044D984  C0 44 00 00 */	lfs f2, 0(r4)
/* 8044D988  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8044D98C  38 83 42 48 */	addi r4, r3, lit_468@l /* 0x80644248@l */
/* 8044D990  EC 02 00 32 */	fmuls f0, f2, f0
/* 8044D994  38 60 00 01 */	li r3, 1
/* 8044D998  EC 60 00 72 */	fmuls f3, f0, f1
/* 8044D99C  C0 24 00 00 */	lfs f1, 0(r4)
/* 8044D9A0  FC 40 08 90 */	fmr f2, f1
/* 8044D9A4  4B FB E9 5D */	bl Matrix_translate
/* 8044D9A8  C0 3B 00 00 */	lfs f1, 0(r27)
/* 8044D9AC  38 60 00 01 */	li r3, 1
/* 8044D9B0  FC 40 08 90 */	fmr f2, f1
/* 8044D9B4  FC 60 08 90 */	fmr f3, f1
/* 8044D9B8  4B FB EA 35 */	bl Matrix_scale
/* 8044D9BC  83 5D 02 D0 */	lwz r26, 0x2d0(r29)
/* 8044D9C0  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8044D9C4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8044D9C8  38 7A 00 08 */	addi r3, r26, 8
/* 8044D9CC  90 7D 02 D0 */	stw r3, 0x2d0(r29)
/* 8044D9D0  90 1A 00 00 */	stw r0, 0(r26)
/* 8044D9D4  80 7C 00 00 */	lwz r3, 0(r28)
/* 8044D9D8  4B FB F9 FD */	bl _Matrix_to_Mtx_new
/* 8044D9DC  3C 80 80 45 */	lis r4, mfish_dojou_before_disp@ha /* 0x8044D6B8@ha */
/* 8044D9E0  90 7A 00 04 */	stw r3, 4(r26)
/* 8044D9E4  38 C4 D6 B8 */	addi r6, r4, mfish_dojou_before_disp@l /* 0x8044D6B8@l */
/* 8044D9E8  7F 83 E3 78 */	mr r3, r28
/* 8044D9EC  7F E4 FB 78 */	mr r4, r31
/* 8044D9F0  7F C5 F3 78 */	mr r5, r30
/* 8044D9F4  7F 68 DB 78 */	mr r8, r27
/* 8044D9F8  38 E0 00 00 */	li r7, 0
/* 8044D9FC  4B F2 3D 3D */	bl cKF_Si3_draw_R_SV
/* 8044DA00  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8044DA04  39 61 00 20 */	addi r11, r1, 0x20
/* 8044DA08  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8044DA0C  4B C4 D5 09 */	bl func_8009AF14
/* 8044DA10  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8044DA14  7C 08 03 A6 */	mtlr r0
/* 8044DA18  38 21 00 30 */	addi r1, r1, 0x30
/* 8044DA1C  4E 80 00 20 */	blr 
