lbl_80388B50:
/* 80388B50  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80388B54  7C 08 02 A6 */	mflr r0
/* 80388B58  90 01 00 34 */	stw r0, 0x34(r1)
/* 80388B5C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80388B60  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80388B64  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80388B68  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80388B6C  7C 9F 23 78 */	mr r31, r4
/* 80388B70  7C 7E 1B 78 */	mr r30, r3
/* 80388B74  80 84 00 00 */	lwz r4, 0(r4)
/* 80388B78  A0 64 00 00 */	lhz r3, 0(r4)
/* 80388B7C  88 04 00 02 */	lbz r0, 2(r4)
/* 80388B80  54 63 DE FE */	rlwinm r3, r3, 0x1b, 0x1b, 0x1f
/* 80388B84  54 00 EE FE */	rlwinm r0, r0, 0x1d, 0x1b, 0x1f
/* 80388B88  7C 03 00 00 */	cmpw r3, r0
/* 80388B8C  41 82 00 38 */	beq lbl_80388BC4
/* 80388B90  7F E3 FB 78 */	mr r3, r31
/* 80388B94  38 81 00 08 */	addi r4, r1, 8
/* 80388B98  4B FF D1 39 */	bl mCoBG_GetUnitArea
/* 80388B9C  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80388BA0  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 80388BA4  48 01 D5 09 */	bl mFI_UtNum2BaseHeight
/* 80388BA8  FF E0 08 90 */	fmr f31, f1
/* 80388BAC  A8 A1 00 08 */	lha r5, 8(r1)
/* 80388BB0  7F E3 FB 78 */	mr r3, r31
/* 80388BB4  38 80 00 04 */	li r4, 4
/* 80388BB8  4B FF FC E1 */	bl mCoBG_GetAreaYSlatingUnit
/* 80388BBC  EC 21 F8 2A */	fadds f1, f1, f31
/* 80388BC0  48 00 00 34 */	b lbl_80388BF4
lbl_80388BC4:
/* 80388BC4  7F E3 FB 78 */	mr r3, r31
/* 80388BC8  38 81 00 08 */	addi r4, r1, 8
/* 80388BCC  4B FF D1 05 */	bl mCoBG_GetUnitArea
/* 80388BD0  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80388BD4  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 80388BD8  48 01 D4 D5 */	bl mFI_UtNum2BaseHeight
/* 80388BDC  FF E0 08 90 */	fmr f31, f1
/* 80388BE0  A8 A1 00 08 */	lha r5, 8(r1)
/* 80388BE4  7F E3 FB 78 */	mr r3, r31
/* 80388BE8  38 80 00 05 */	li r4, 5
/* 80388BEC  4B FF FC AD */	bl mCoBG_GetAreaYSlatingUnit
/* 80388BF0  EC 21 F8 2A */	fadds f1, f1, f31
lbl_80388BF4:
/* 80388BF4  28 1E 00 00 */	cmplwi r30, 0
/* 80388BF8  41 82 00 14 */	beq lbl_80388C0C
/* 80388BFC  38 00 00 00 */	li r0, 0
/* 80388C00  B0 1E 00 00 */	sth r0, 0(r30)
/* 80388C04  B0 1E 00 02 */	sth r0, 2(r30)
/* 80388C08  B0 1E 00 04 */	sth r0, 4(r30)
lbl_80388C0C:
/* 80388C0C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80388C10  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80388C14  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80388C18  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80388C1C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80388C20  7C 08 03 A6 */	mtlr r0
/* 80388C24  38 21 00 30 */	addi r1, r1, 0x30
/* 80388C28  4E 80 00 20 */	blr 
