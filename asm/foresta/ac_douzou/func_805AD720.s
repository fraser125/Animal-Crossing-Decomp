lbl_805AD720:
/* 805AD720  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805AD724  7C 08 02 A6 */	mflr r0
/* 805AD728  90 01 00 24 */	stw r0, 0x24(r1)
/* 805AD72C  39 61 00 20 */	addi r11, r1, 0x20
/* 805AD730  4B AE D7 A5 */	bl func_8009AED4
/* 805AD734  7C 7D 1B 78 */	mr r29, r3
/* 805AD738  4B E0 5E A1 */	bl mHS_get_pl_no
/* 805AD73C  7C 7F 1B 78 */	mr r31, r3
/* 805AD740  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805AD744  1C 1D 26 B0 */	mulli r0, r29, 0x26b0
/* 805AD748  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 805AD74C  1C BF 24 40 */	mulli r5, r31, 0x2440
/* 805AD750  7C 64 02 14 */	add r3, r4, r0
/* 805AD754  7C 84 2A 14 */	add r4, r4, r5
/* 805AD758  3F A3 00 01 */	addis r29, r3, 1
/* 805AD75C  3B C4 00 20 */	addi r30, r4, 0x20
/* 805AD760  3B BD 9C E8 */	addi r29, r29, -25368
/* 805AD764  4B DE D7 55 */	bl mEv_CheckTitleDemo
/* 805AD768  2C 03 00 00 */	cmpwi r3, 0
/* 805AD76C  41 82 00 24 */	beq lbl_805AD790
/* 805AD770  4B DE D7 49 */	bl mEv_CheckTitleDemo
/* 805AD774  2C 03 FF FF */	cmpwi r3, -1
/* 805AD778  41 82 00 18 */	beq lbl_805AD790
/* 805AD77C  4B DE D7 3D */	bl mEv_CheckTitleDemo
/* 805AD780  2C 03 FF F7 */	cmpwi r3, -9
/* 805AD784  41 82 00 0C */	beq lbl_805AD790
/* 805AD788  38 60 00 00 */	li r3, 0
/* 805AD78C  48 00 00 58 */	b lbl_805AD7E4
lbl_805AD790:
/* 805AD790  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 805AD794  4B E0 63 5D */	bl mLd_PlayerManKindCheckNo
/* 805AD798  2C 03 00 00 */	cmpwi r3, 0
/* 805AD79C  40 82 00 14 */	bne lbl_805AD7B0
/* 805AD7A0  7F C3 F3 78 */	mr r3, r30
/* 805AD7A4  4B E3 2E AD */	bl mPr_CheckPrivate
/* 805AD7A8  2C 03 00 00 */	cmpwi r3, 0
/* 805AD7AC  40 82 00 0C */	bne lbl_805AD7B8
lbl_805AD7B0:
/* 805AD7B0  38 60 00 00 */	li r3, 0
/* 805AD7B4  48 00 00 30 */	b lbl_805AD7E4
lbl_805AD7B8:
/* 805AD7B8  7F A3 EB 78 */	mr r3, r29
/* 805AD7BC  4B E3 28 89 */	bl mPr_NullCheckPersonalID
/* 805AD7C0  2C 03 00 00 */	cmpwi r3, 0
/* 805AD7C4  40 82 00 1C */	bne lbl_805AD7E0
/* 805AD7C8  88 1D 00 2A */	lbz r0, 0x2a(r29)
/* 805AD7CC  54 00 F7 7E */	rlwinm r0, r0, 0x1e, 0x1d, 0x1f
/* 805AD7D0  28 00 00 04 */	cmplwi r0, 4
/* 805AD7D4  40 82 00 0C */	bne lbl_805AD7E0
/* 805AD7D8  38 60 00 01 */	li r3, 1
/* 805AD7DC  48 00 00 08 */	b lbl_805AD7E4
lbl_805AD7E0:
/* 805AD7E0  38 60 00 00 */	li r3, 0
lbl_805AD7E4:
/* 805AD7E4  39 61 00 20 */	addi r11, r1, 0x20
/* 805AD7E8  4B AE D7 39 */	bl func_8009AF20
/* 805AD7EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805AD7F0  7C 08 03 A6 */	mtlr r0
/* 805AD7F4  38 21 00 20 */	addi r1, r1, 0x20
/* 805AD7F8  4E 80 00 20 */	blr 
