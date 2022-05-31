lbl_8038F8D8:
/* 8038F8D8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8038F8DC  7C 08 02 A6 */	mflr r0
/* 8038F8E0  90 01 00 84 */	stw r0, 0x84(r1)
/* 8038F8E4  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8038F8E8  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 8038F8EC  80 C3 00 00 */	lwz r6, 0(r3)
/* 8038F8F0  38 81 00 08 */	addi r4, r1, 8
/* 8038F8F4  80 A3 00 04 */	lwz r5, 4(r3)
/* 8038F8F8  80 03 00 08 */	lwz r0, 8(r3)
/* 8038F8FC  38 61 00 34 */	addi r3, r1, 0x34
/* 8038F900  90 C1 00 08 */	stw r6, 8(r1)
/* 8038F904  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8038F908  90 01 00 10 */	stw r0, 0x10(r1)
/* 8038F90C  4B FF 62 FD */	bl mCoBG_Wpos2UnitInfo
/* 8038F910  38 61 00 14 */	addi r3, r1, 0x14
/* 8038F914  38 81 00 34 */	addi r4, r1, 0x34
/* 8038F918  38 A0 00 00 */	li r5, 0
/* 8038F91C  38 C0 00 00 */	li r6, 0
/* 8038F920  38 E0 FF FF */	li r7, -1
/* 8038F924  39 00 FF FF */	li r8, -1
/* 8038F928  4B FF E3 E9 */	bl mCoBG_MakeOneColumnCollisionData
/* 8038F92C  2C 03 00 00 */	cmpwi r3, 0
/* 8038F930  41 82 00 0C */	beq lbl_8038F93C
/* 8038F934  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8038F938  48 00 00 48 */	b lbl_8038F980
lbl_8038F93C:
/* 8038F93C  80 81 00 34 */	lwz r4, 0x34(r1)
/* 8038F940  3C 00 43 30 */	lis r0, 0x4330
/* 8038F944  3C 60 80 64 */	lis r3, lit_804@ha /* 0x806419EC@ha */
/* 8038F948  3C A0 80 64 */	lis r5, lit_802@ha /* 0x806419E4@ha */
/* 8038F94C  88 84 00 00 */	lbz r4, 0(r4)
/* 8038F950  90 01 00 68 */	stw r0, 0x68(r1)
/* 8038F954  54 80 F6 FE */	rlwinm r0, r4, 0x1e, 0x1b, 0x1f
/* 8038F958  C8 23 19 EC */	lfd f1, lit_804@l(r3)  /* 0x806419EC@l */
/* 8038F95C  90 01 00 6C */	stw r0, 0x6c(r1)
/* 8038F960  C0 45 19 E4 */	lfs f2, lit_802@l(r5)  /* 0x806419E4@l */
/* 8038F964  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 8038F968  80 61 00 54 */	lwz r3, 0x54(r1)
/* 8038F96C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8038F970  80 81 00 58 */	lwz r4, 0x58(r1)
/* 8038F974  EF E2 00 32 */	fmuls f31, f2, f0
/* 8038F978  48 01 67 35 */	bl mFI_UtNum2BaseHeight
/* 8038F97C  EC 3F 08 2A */	fadds f1, f31, f1
lbl_8038F980:
/* 8038F980  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 8038F984  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8038F988  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8038F98C  7C 08 03 A6 */	mtlr r0
/* 8038F990  38 21 00 80 */	addi r1, r1, 0x80
/* 8038F994  4E 80 00 20 */	blr 
