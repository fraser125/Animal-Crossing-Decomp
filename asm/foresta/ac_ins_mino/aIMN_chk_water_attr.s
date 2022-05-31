lbl_8059E310:
/* 8059E310  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8059E314  7C 08 02 A6 */	mflr r0
/* 8059E318  90 01 00 44 */	stw r0, 0x44(r1)
/* 8059E31C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8059E320  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8059E324  39 61 00 30 */	addi r11, r1, 0x30
/* 8059E328  4B AF CB A9 */	bl func_8009AED0
/* 8059E32C  88 03 00 98 */	lbz r0, 0x98(r3)
/* 8059E330  7C 7C 1B 78 */	mr r28, r3
/* 8059E334  7C 9D 23 78 */	mr r29, r4
/* 8059E338  3B E0 00 00 */	li r31, 0
/* 8059E33C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8059E340  41 82 00 9C */	beq lbl_8059E3DC
/* 8059E344  C0 3C 02 10 */	lfs f1, 0x210(r28)
/* 8059E348  C0 1C 00 74 */	lfs f0, 0x74(r28)
/* 8059E34C  80 7C 00 28 */	lwz r3, 0x28(r28)
/* 8059E350  80 9C 00 2C */	lwz r4, 0x2c(r28)
/* 8059E354  EF E1 00 2A */	fadds f31, f1, f0
/* 8059E358  80 1C 00 30 */	lwz r0, 0x30(r28)
/* 8059E35C  AB DC 00 36 */	lha r30, 0x36(r28)
/* 8059E360  90 61 00 14 */	stw r3, 0x14(r1)
/* 8059E364  7F C3 F3 78 */	mr r3, r30
/* 8059E368  90 81 00 18 */	stw r4, 0x18(r1)
/* 8059E36C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8059E370  4B E1 C7 81 */	bl sin_s
/* 8059E374  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8059E378  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8059E37C  7F C3 F3 78 */	mr r3, r30
/* 8059E380  EC 00 08 2A */	fadds f0, f0, f1
/* 8059E384  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8059E388  4B E1 C7 15 */	bl cos_s
/* 8059E38C  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8059E390  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8059E394  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059E398  38 61 00 08 */	addi r3, r1, 8
/* 8059E39C  80 81 00 18 */	lwz r4, 0x18(r1)
/* 8059E3A0  EC 00 08 2A */	fadds f0, f0, f1
/* 8059E3A4  90 01 00 08 */	stw r0, 8(r1)
/* 8059E3A8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8059E3AC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8059E3B0  90 81 00 0C */	stw r4, 0xc(r1)
/* 8059E3B4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8059E3B8  4B DF 1E 8D */	bl mCoBG_Wpos2BgAttribute_Original
/* 8059E3BC  4B DF 5F 11 */	bl mCoBG_CheckWaterAttribute
/* 8059E3C0  2C 03 00 00 */	cmpwi r3, 0
/* 8059E3C4  41 82 00 18 */	beq lbl_8059E3DC
/* 8059E3C8  7F 83 E3 78 */	mr r3, r28
/* 8059E3CC  7F A5 EB 78 */	mr r5, r29
/* 8059E3D0  38 80 00 07 */	li r4, 7
/* 8059E3D4  48 00 0C 19 */	bl aIMN_setupAction
/* 8059E3D8  3B E0 00 01 */	li r31, 1
lbl_8059E3DC:
/* 8059E3DC  7F E3 FB 78 */	mr r3, r31
/* 8059E3E0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8059E3E4  39 61 00 30 */	addi r11, r1, 0x30
/* 8059E3E8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8059E3EC  4B AF CB 31 */	bl func_8009AF1C
/* 8059E3F0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8059E3F4  7C 08 03 A6 */	mtlr r0
/* 8059E3F8  38 21 00 40 */	addi r1, r1, 0x40
/* 8059E3FC  4E 80 00 20 */	blr 
