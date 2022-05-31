lbl_8055B2D8:
/* 8055B2D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055B2DC  7C 08 02 A6 */	mflr r0
/* 8055B2E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055B2E4  38 00 00 00 */	li r0, 0
/* 8055B2E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8055B2EC  7C 7F 1B 78 */	mr r31, r3
/* 8055B2F0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8055B2F4  80 C4 01 74 */	lwz r6, 0x174(r4)
/* 8055B2F8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8055B2FC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8055B300  A3 C6 00 00 */	lhz r30, 0(r6)
/* 8055B304  3C A4 00 02 */	addis r5, r4, 2
/* 8055B308  80 85 61 3C */	lwz r4, 0x613c(r5)
/* 8055B30C  90 01 00 08 */	stw r0, 8(r1)
/* 8055B310  88 06 00 02 */	lbz r0, 2(r6)
/* 8055B314  80 64 00 88 */	lwz r3, 0x88(r4)
/* 8055B318  54 00 08 3C */	slwi r0, r0, 1
/* 8055B31C  7C 60 04 30 */	srw r0, r3, r0
/* 8055B320  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8055B324  41 82 00 0C */	beq lbl_8055B330
/* 8055B328  38 60 00 03 */	li r3, 3
/* 8055B32C  48 00 00 A4 */	b lbl_8055B3D0
lbl_8055B330:
/* 8055B330  57 C0 A7 3E */	rlwinm r0, r30, 0x14, 0x1c, 0x1f
/* 8055B334  2C 00 00 02 */	cmpwi r0, 2
/* 8055B338  40 82 00 4C */	bne lbl_8055B384
/* 8055B33C  57 C0 C7 3E */	rlwinm r0, r30, 0x18, 0x1c, 0x1f
/* 8055B340  2C 00 00 0F */	cmpwi r0, 0xf
/* 8055B344  40 82 00 40 */	bne lbl_8055B384
/* 8055B348  28 1E 2F 03 */	cmplwi r30, 0x2f03
/* 8055B34C  40 82 00 14 */	bne lbl_8055B360
/* 8055B350  38 00 00 01 */	li r0, 1
/* 8055B354  38 60 00 04 */	li r3, 4
/* 8055B358  90 01 00 08 */	stw r0, 8(r1)
/* 8055B35C  48 00 00 74 */	b lbl_8055B3D0
lbl_8055B360:
/* 8055B360  88 05 61 24 */	lbz r0, 0x6124(r5)
/* 8055B364  28 00 00 00 */	cmplwi r0, 0
/* 8055B368  40 82 00 0C */	bne lbl_8055B374
/* 8055B36C  38 60 00 02 */	li r3, 2
/* 8055B370  48 00 00 60 */	b lbl_8055B3D0
lbl_8055B374:
/* 8055B374  7F C4 F3 78 */	mr r4, r30
/* 8055B378  38 61 00 08 */	addi r3, r1, 8
/* 8055B37C  4B FF FD C9 */	bl aNSC_check_buy_item_sub
/* 8055B380  48 00 00 50 */	b lbl_8055B3D0
lbl_8055B384:
/* 8055B384  7F C3 F3 78 */	mr r3, r30
/* 8055B388  4B E8 D3 19 */	bl mSP_ItemNo2ItemPrice
/* 8055B38C  54 60 F0 BF */	rlwinm. r0, r3, 0x1e, 2, 0x1f
/* 8055B390  40 82 00 14 */	bne lbl_8055B3A4
/* 8055B394  38 00 00 01 */	li r0, 1
/* 8055B398  38 60 00 04 */	li r3, 4
/* 8055B39C  90 01 00 08 */	stw r0, 8(r1)
/* 8055B3A0  48 00 00 30 */	b lbl_8055B3D0
lbl_8055B3A4:
/* 8055B3A4  28 1E 20 00 */	cmplwi r30, 0x2000
/* 8055B3A8  41 80 00 1C */	blt lbl_8055B3C4
/* 8055B3AC  28 1E 20 FF */	cmplwi r30, 0x20ff
/* 8055B3B0  41 81 00 14 */	bgt lbl_8055B3C4
/* 8055B3B4  7F C4 F3 78 */	mr r4, r30
/* 8055B3B8  38 61 00 08 */	addi r3, r1, 8
/* 8055B3BC  4B FF FE 2D */	bl aNSC_check_buy_paper
/* 8055B3C0  48 00 00 10 */	b lbl_8055B3D0
lbl_8055B3C4:
/* 8055B3C4  7F C4 F3 78 */	mr r4, r30
/* 8055B3C8  38 61 00 08 */	addi r3, r1, 8
/* 8055B3CC  4B FF FD 79 */	bl aNSC_check_buy_item_sub
lbl_8055B3D0:
/* 8055B3D0  80 01 00 08 */	lwz r0, 8(r1)
/* 8055B3D4  90 1F 09 B0 */	stw r0, 0x9b0(r31)
/* 8055B3D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055B3DC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8055B3E0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8055B3E4  7C 08 03 A6 */	mtlr r0
/* 8055B3E8  38 21 00 20 */	addi r1, r1, 0x20
/* 8055B3EC  4E 80 00 20 */	blr 
