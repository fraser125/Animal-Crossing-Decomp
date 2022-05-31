lbl_8038FA54:
/* 8038FA54  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8038FA58  7C 08 02 A6 */	mflr r0
/* 8038FA5C  3C A0 80 65 */	lis r5, norm0@ha /* 0x80650DDC@ha */
/* 8038FA60  90 01 00 54 */	stw r0, 0x54(r1)
/* 8038FA64  38 C5 0D DC */	addi r6, r5, norm0@l /* 0x80650DDC@l */
/* 8038FA68  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8038FA6C  7C 7F 1B 78 */	mr r31, r3
/* 8038FA70  38 61 00 18 */	addi r3, r1, 0x18
/* 8038FA74  80 A6 00 00 */	lwz r5, 0(r6)
/* 8038FA78  80 06 00 04 */	lwz r0, 4(r6)
/* 8038FA7C  90 BF 00 00 */	stw r5, 0(r31)
/* 8038FA80  90 1F 00 04 */	stw r0, 4(r31)
/* 8038FA84  80 06 00 08 */	lwz r0, 8(r6)
/* 8038FA88  90 1F 00 08 */	stw r0, 8(r31)
/* 8038FA8C  80 C4 00 00 */	lwz r6, 0(r4)
/* 8038FA90  80 A4 00 04 */	lwz r5, 4(r4)
/* 8038FA94  80 04 00 08 */	lwz r0, 8(r4)
/* 8038FA98  38 81 00 0C */	addi r4, r1, 0xc
/* 8038FA9C  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8038FAA0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8038FAA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038FAA8  4B FF 61 61 */	bl mCoBG_Wpos2UnitInfo
/* 8038FAAC  38 61 00 18 */	addi r3, r1, 0x18
/* 8038FAB0  38 81 00 08 */	addi r4, r1, 8
/* 8038FAB4  4B FF 62 1D */	bl mCoBG_GetUnitArea
/* 8038FAB8  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 8038FABC  88 65 00 00 */	lbz r3, 0(r5)
/* 8038FAC0  54 60 CF FE */	rlwinm r0, r3, 0x19, 0x1f, 0x1f
/* 8038FAC4  2C 00 00 01 */	cmpwi r0, 1
/* 8038FAC8  41 82 00 BC */	beq lbl_8038FB84
/* 8038FACC  40 80 00 DC */	bge lbl_8038FBA8
/* 8038FAD0  2C 00 00 00 */	cmpwi r0, 0
/* 8038FAD4  40 80 00 08 */	bge lbl_8038FADC
/* 8038FAD8  48 00 00 D0 */	b lbl_8038FBA8
lbl_8038FADC:
/* 8038FADC  A0 05 00 00 */	lhz r0, 0(r5)
/* 8038FAE0  54 63 F6 FE */	rlwinm r3, r3, 0x1e, 0x1b, 0x1f
/* 8038FAE4  54 00 DE FE */	rlwinm r0, r0, 0x1b, 0x1b, 0x1f
/* 8038FAE8  7C 03 00 00 */	cmpw r3, r0
/* 8038FAEC  40 82 00 34 */	bne lbl_8038FB20
/* 8038FAF0  88 05 00 01 */	lbz r0, 1(r5)
/* 8038FAF4  54 00 06 FE */	clrlwi r0, r0, 0x1b
/* 8038FAF8  7C 03 00 40 */	cmplw r3, r0
/* 8038FAFC  40 82 00 24 */	bne lbl_8038FB20
/* 8038FB00  88 05 00 02 */	lbz r0, 2(r5)
/* 8038FB04  54 00 EE FE */	rlwinm r0, r0, 0x1d, 0x1b, 0x1f
/* 8038FB08  7C 03 00 40 */	cmplw r3, r0
/* 8038FB0C  40 82 00 14 */	bne lbl_8038FB20
/* 8038FB10  A0 05 00 02 */	lhz r0, 2(r5)
/* 8038FB14  54 00 D6 FE */	rlwinm r0, r0, 0x1a, 0x1b, 0x1f
/* 8038FB18  7C 03 00 00 */	cmpw r3, r0
/* 8038FB1C  41 82 00 44 */	beq lbl_8038FB60
lbl_8038FB20:
/* 8038FB20  A8 C1 00 08 */	lha r6, 8(r1)
/* 8038FB24  7F E3 FB 78 */	mr r3, r31
/* 8038FB28  38 80 00 00 */	li r4, 0
/* 8038FB2C  4B FF 66 59 */	bl mCoBG_GetNormTriangle
/* 8038FB30  3C 60 80 64 */	lis r3, lit_2548@ha /* 0x80641A98@ha */
/* 8038FB34  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8038FB38  C0 23 1A 98 */	lfs f1, lit_2548@l(r3)  /* 0x80641A98@l */
/* 8038FB3C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8038FB40  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8038FB44  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8038FB48  EC 00 00 72 */	fmuls f0, f0, f1
/* 8038FB4C  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8038FB50  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8038FB54  EC 00 00 72 */	fmuls f0, f0, f1
/* 8038FB58  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8038FB5C  48 00 00 64 */	b lbl_8038FBC0
lbl_8038FB60:
/* 8038FB60  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 8038FB64  3C 80 80 64 */	lis r4, lit_2821@ha /* 0x80641AB4@ha */
/* 8038FB68  38 A3 19 A4 */	addi r5, r3, data_806419A4@l /* 0x806419A4@l */
/* 8038FB6C  C0 44 1A B4 */	lfs f2, lit_2821@l(r4)  /* 0x80641AB4@l */
/* 8038FB70  C0 25 00 00 */	lfs f1, 0(r5)
/* 8038FB74  7F E3 FB 78 */	mr r3, r31
/* 8038FB78  FC 60 08 90 */	fmr f3, f1
/* 8038FB7C  4B FF 5E 79 */	bl mCoBG_SetXyz_t
/* 8038FB80  48 00 00 40 */	b lbl_8038FBC0
lbl_8038FB84:
/* 8038FB84  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 8038FB88  3C 80 80 64 */	lis r4, lit_2821@ha /* 0x80641AB4@ha */
/* 8038FB8C  38 A3 19 A4 */	addi r5, r3, data_806419A4@l /* 0x806419A4@l */
/* 8038FB90  C0 44 1A B4 */	lfs f2, lit_2821@l(r4)  /* 0x80641AB4@l */
/* 8038FB94  C0 25 00 00 */	lfs f1, 0(r5)
/* 8038FB98  7F E3 FB 78 */	mr r3, r31
/* 8038FB9C  FC 60 08 90 */	fmr f3, f1
/* 8038FBA0  4B FF 5E 55 */	bl mCoBG_SetXyz_t
/* 8038FBA4  48 00 00 1C */	b lbl_8038FBC0
lbl_8038FBA8:
/* 8038FBA8  3C 80 80 64 */	lis r4, data_806419A4@ha /* 0x806419A4@ha */
/* 8038FBAC  7F E3 FB 78 */	mr r3, r31
/* 8038FBB0  C0 24 19 A4 */	lfs f1, data_806419A4@l(r4)  /* 0x806419A4@l */
/* 8038FBB4  FC 40 08 90 */	fmr f2, f1
/* 8038FBB8  FC 60 08 90 */	fmr f3, f1
/* 8038FBBC  4B FF 5E 39 */	bl mCoBG_SetXyz_t
lbl_8038FBC0:
/* 8038FBC0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8038FBC4  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8038FBC8  7C 08 03 A6 */	mtlr r0
/* 8038FBCC  38 21 00 50 */	addi r1, r1, 0x50
/* 8038FBD0  4E 80 00 20 */	blr 
