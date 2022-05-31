lbl_80597AFC:
/* 80597AFC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80597B00  7C 08 02 A6 */	mflr r0
/* 80597B04  90 01 00 44 */	stw r0, 0x44(r1)
/* 80597B08  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80597B0C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80597B10  39 61 00 30 */	addi r11, r1, 0x30
/* 80597B14  4B B0 33 BD */	bl func_8009AED0
/* 80597B18  88 03 00 98 */	lbz r0, 0x98(r3)
/* 80597B1C  7C 7C 1B 78 */	mr r28, r3
/* 80597B20  7C 9D 23 78 */	mr r29, r4
/* 80597B24  3B E0 00 00 */	li r31, 0
/* 80597B28  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80597B2C  41 82 00 9C */	beq lbl_80597BC8
/* 80597B30  C0 3C 02 10 */	lfs f1, 0x210(r28)
/* 80597B34  C0 1C 00 74 */	lfs f0, 0x74(r28)
/* 80597B38  80 7C 00 28 */	lwz r3, 0x28(r28)
/* 80597B3C  80 9C 00 2C */	lwz r4, 0x2c(r28)
/* 80597B40  EF E1 00 2A */	fadds f31, f1, f0
/* 80597B44  80 1C 00 30 */	lwz r0, 0x30(r28)
/* 80597B48  AB DC 00 36 */	lha r30, 0x36(r28)
/* 80597B4C  90 61 00 14 */	stw r3, 0x14(r1)
/* 80597B50  7F C3 F3 78 */	mr r3, r30
/* 80597B54  90 81 00 18 */	stw r4, 0x18(r1)
/* 80597B58  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80597B5C  4B E2 2F 95 */	bl sin_s
/* 80597B60  EC 3F 00 72 */	fmuls f1, f31, f1
/* 80597B64  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80597B68  7F C3 F3 78 */	mr r3, r30
/* 80597B6C  EC 00 08 2A */	fadds f0, f0, f1
/* 80597B70  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80597B74  4B E2 2F 29 */	bl cos_s
/* 80597B78  EC 3F 00 72 */	fmuls f1, f31, f1
/* 80597B7C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80597B80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80597B84  38 61 00 08 */	addi r3, r1, 8
/* 80597B88  80 81 00 18 */	lwz r4, 0x18(r1)
/* 80597B8C  EC 00 08 2A */	fadds f0, f0, f1
/* 80597B90  90 01 00 08 */	stw r0, 8(r1)
/* 80597B94  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80597B98  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80597B9C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80597BA0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80597BA4  4B DF 86 A1 */	bl mCoBG_Wpos2BgAttribute_Original
/* 80597BA8  4B DF C7 25 */	bl mCoBG_CheckWaterAttribute
/* 80597BAC  2C 03 00 00 */	cmpwi r3, 0
/* 80597BB0  41 82 00 18 */	beq lbl_80597BC8
/* 80597BB4  7F 83 E3 78 */	mr r3, r28
/* 80597BB8  7F A5 EB 78 */	mr r5, r29
/* 80597BBC  38 80 00 05 */	li r4, 5
/* 80597BC0  48 00 06 95 */	bl aIDG_setupAction
/* 80597BC4  3B E0 00 01 */	li r31, 1
lbl_80597BC8:
/* 80597BC8  7F E3 FB 78 */	mr r3, r31
/* 80597BCC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80597BD0  39 61 00 30 */	addi r11, r1, 0x30
/* 80597BD4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80597BD8  4B B0 33 45 */	bl func_8009AF1C
/* 80597BDC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80597BE0  7C 08 03 A6 */	mtlr r0
/* 80597BE4  38 21 00 40 */	addi r1, r1, 0x40
/* 80597BE8  4E 80 00 20 */	blr 
