lbl_8042E8A4:
/* 8042E8A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8042E8A8  7C 08 02 A6 */	mflr r0
/* 8042E8AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8042E8B0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8042E8B4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8042E8B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8042E8BC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8042E8C0  A8 03 00 00 */	lha r0, 0(r3)
/* 8042E8C4  7C 7F 1B 78 */	mr r31, r3
/* 8042E8C8  2C 00 00 01 */	cmpwi r0, 1
/* 8042E8CC  40 82 00 10 */	bne lbl_8042E8DC
/* 8042E8D0  3C 60 80 64 */	lis r3, lit_476@ha /* 0x80644160@ha */
/* 8042E8D4  C3 E3 41 60 */	lfs f31, lit_476@l(r3)  /* 0x80644160@l */
/* 8042E8D8  48 00 00 0C */	b lbl_8042E8E4
lbl_8042E8DC:
/* 8042E8DC  3C 60 80 64 */	lis r3, lit_454@ha /* 0x80644158@ha */
/* 8042E8E0  C3 E3 41 58 */	lfs f31, lit_454@l(r3)  /* 0x80644158@l */
lbl_8042E8E4:
/* 8042E8E4  7F E3 FB 78 */	mr r3, r31
/* 8042E8E8  3B DF 00 28 */	addi r30, r31, 0x28
/* 8042E8EC  4B FF FE D9 */	bl aMSN_SetNeedleOffsetPosition
/* 8042E8F0  3C 60 80 64 */	lis r3, lit_657@ha /* 0x80644194@ha */
/* 8042E8F4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8042E8F8  C0 23 41 94 */	lfs f1, lit_657@l(r3)  /* 0x80644194@l */
/* 8042E8FC  7F C3 F3 78 */	mr r3, r30
/* 8042E900  A8 9F 00 24 */	lha r4, 0x24(r31)
/* 8042E904  EC 01 00 32 */	fmuls f0, f1, f0
/* 8042E908  FC 00 00 1E */	fctiwz f0, f0
/* 8042E90C  D8 01 00 08 */	stfd f0, 8(r1)
/* 8042E910  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8042E914  7C 04 02 14 */	add r0, r4, r0
/* 8042E918  B0 1F 00 24 */	sth r0, 0x24(r31)
/* 8042E91C  4B F4 26 F9 */	bl cKF_SkeletonInfo_R_play
/* 8042E920  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8042E924  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8042E928  40 80 00 18 */	bge lbl_8042E940
/* 8042E92C  3C 60 80 64 */	lis r3, lit_521@ha /* 0x80644164@ha */
/* 8042E930  C0 03 41 64 */	lfs f0, lit_521@l(r3)  /* 0x80644164@l */
/* 8042E934  EC 01 00 2A */	fadds f0, f1, f0
/* 8042E938  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8042E93C  48 00 00 14 */	b lbl_8042E950
lbl_8042E940:
/* 8042E940  3C 60 80 64 */	lis r3, lit_521@ha /* 0x80644164@ha */
/* 8042E944  C0 03 41 64 */	lfs f0, lit_521@l(r3)  /* 0x80644164@l */
/* 8042E948  EC 01 00 28 */	fsubs f0, f1, f0
/* 8042E94C  D0 1F 00 04 */	stfs f0, 4(r31)
lbl_8042E950:
/* 8042E950  3C 60 80 64 */	lis r3, lit_454@ha /* 0x80644158@ha */
/* 8042E954  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8042E958  C0 03 41 58 */	lfs f0, lit_454@l(r3)  /* 0x80644158@l */
/* 8042E95C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8042E960  40 80 00 0C */	bge lbl_8042E96C
/* 8042E964  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8042E968  48 00 00 18 */	b lbl_8042E980
lbl_8042E96C:
/* 8042E96C  3C 60 80 64 */	lis r3, lit_476@ha /* 0x80644160@ha */
/* 8042E970  C0 03 41 60 */	lfs f0, lit_476@l(r3)  /* 0x80644160@l */
/* 8042E974  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8042E978  40 81 00 08 */	ble lbl_8042E980
/* 8042E97C  D0 1F 00 04 */	stfs f0, 4(r31)
lbl_8042E980:
/* 8042E980  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8042E984  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 8042E988  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8042E98C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8042E990  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8042E994  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8042E998  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8042E99C  7C 08 03 A6 */	mtlr r0
/* 8042E9A0  38 21 00 30 */	addi r1, r1, 0x30
/* 8042E9A4  4E 80 00 20 */	blr 
