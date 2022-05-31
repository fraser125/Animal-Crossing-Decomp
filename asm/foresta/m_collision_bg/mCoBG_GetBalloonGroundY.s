lbl_80390DBC:
/* 80390DBC  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80390DC0  7C 08 02 A6 */	mflr r0
/* 80390DC4  90 01 00 94 */	stw r0, 0x94(r1)
/* 80390DC8  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80390DCC  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80390DD0  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 80390DD4  93 C1 00 78 */	stw r30, 0x78(r1)
/* 80390DD8  7C 7E 1B 78 */	mr r30, r3
/* 80390DDC  38 61 00 30 */	addi r3, r1, 0x30
/* 80390DE0  80 DE 00 00 */	lwz r6, 0(r30)
/* 80390DE4  38 80 00 00 */	li r4, 0
/* 80390DE8  80 BE 00 04 */	lwz r5, 4(r30)
/* 80390DEC  80 1E 00 08 */	lwz r0, 8(r30)
/* 80390DF0  90 C1 00 30 */	stw r6, 0x30(r1)
/* 80390DF4  90 A1 00 34 */	stw r5, 0x34(r1)
/* 80390DF8  90 01 00 38 */	stw r0, 0x38(r1)
/* 80390DFC  4B FF 82 B1 */	bl mCoBG_Wpos2Attribute
/* 80390E00  80 9E 00 00 */	lwz r4, 0(r30)
/* 80390E04  7C 7F 1B 78 */	mr r31, r3
/* 80390E08  80 DE 00 04 */	lwz r6, 4(r30)
/* 80390E0C  38 61 00 0C */	addi r3, r1, 0xc
/* 80390E10  80 1E 00 08 */	lwz r0, 8(r30)
/* 80390E14  38 A1 00 24 */	addi r5, r1, 0x24
/* 80390E18  90 81 00 24 */	stw r4, 0x24(r1)
/* 80390E1C  38 81 00 08 */	addi r4, r1, 8
/* 80390E20  90 C1 00 28 */	stw r6, 0x28(r1)
/* 80390E24  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80390E28  48 01 49 39 */	bl mFI_Wpos2BlockNum
/* 80390E2C  2C 03 00 00 */	cmpwi r3, 0
/* 80390E30  41 82 00 4C */	beq lbl_80390E7C
/* 80390E34  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80390E38  80 81 00 08 */	lwz r4, 8(r1)
/* 80390E3C  48 01 54 AD */	bl mFI_BkNum2BlockKind
/* 80390E40  54 60 05 29 */	rlwinm. r0, r3, 0, 0x14, 0x14
/* 80390E44  41 82 00 38 */	beq lbl_80390E7C
/* 80390E48  7F E3 FB 78 */	mr r3, r31
/* 80390E4C  48 00 34 81 */	bl mCoBG_CheckWaterAttribute
/* 80390E50  2C 03 00 01 */	cmpwi r3, 1
/* 80390E54  41 82 00 1C */	beq lbl_80390E70
/* 80390E58  28 1F 00 0B */	cmplwi r31, 0xb
/* 80390E5C  41 82 00 14 */	beq lbl_80390E70
/* 80390E60  28 1F 00 16 */	cmplwi r31, 0x16
/* 80390E64  41 82 00 0C */	beq lbl_80390E70
/* 80390E68  28 1F 00 18 */	cmplwi r31, 0x18
/* 80390E6C  40 82 00 10 */	bne lbl_80390E7C
lbl_80390E70:
/* 80390E70  3C 60 80 64 */	lis r3, lit_789@ha /* 0x806419D0@ha */
/* 80390E74  C0 23 19 D0 */	lfs f1, lit_789@l(r3)  /* 0x806419D0@l */
/* 80390E78  48 00 00 5C */	b lbl_80390ED4
lbl_80390E7C:
/* 80390E7C  80 DE 00 00 */	lwz r6, 0(r30)
/* 80390E80  38 61 00 3C */	addi r3, r1, 0x3c
/* 80390E84  80 BE 00 04 */	lwz r5, 4(r30)
/* 80390E88  38 81 00 18 */	addi r4, r1, 0x18
/* 80390E8C  80 1E 00 08 */	lwz r0, 8(r30)
/* 80390E90  90 C1 00 18 */	stw r6, 0x18(r1)
/* 80390E94  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 80390E98  90 01 00 20 */	stw r0, 0x20(r1)
/* 80390E9C  4B FF 4D 6D */	bl mCoBG_Wpos2UnitInfo
/* 80390EA0  38 61 00 10 */	addi r3, r1, 0x10
/* 80390EA4  38 81 00 3C */	addi r4, r1, 0x3c
/* 80390EA8  4B FF 7D 85 */	bl mCoBG_GetBGHeight_Normal
/* 80390EAC  FF E0 08 90 */	fmr f31, f1
/* 80390EB0  7F E3 FB 78 */	mr r3, r31
/* 80390EB4  48 00 34 19 */	bl mCoBG_CheckWaterAttribute
/* 80390EB8  2C 03 00 00 */	cmpwi r3, 0
/* 80390EBC  41 82 00 14 */	beq lbl_80390ED0
/* 80390EC0  3C 60 80 64 */	lis r3, lit_789@ha /* 0x806419D0@ha */
/* 80390EC4  C0 03 19 D0 */	lfs f0, lit_789@l(r3)  /* 0x806419D0@l */
/* 80390EC8  EC 20 F8 2A */	fadds f1, f0, f31
/* 80390ECC  48 00 00 08 */	b lbl_80390ED4
lbl_80390ED0:
/* 80390ED0  FC 20 F8 90 */	fmr f1, f31
lbl_80390ED4:
/* 80390ED4  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80390ED8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80390EDC  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80390EE0  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 80390EE4  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 80390EE8  7C 08 03 A6 */	mtlr r0
/* 80390EEC  38 21 00 90 */	addi r1, r1, 0x90
/* 80390EF0  4E 80 00 20 */	blr 
