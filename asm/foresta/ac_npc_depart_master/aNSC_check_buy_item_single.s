lbl_8054E2F8:
/* 8054E2F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054E2FC  7C 08 02 A6 */	mflr r0
/* 8054E300  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054E304  38 00 00 00 */	li r0, 0
/* 8054E308  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8054E30C  7C 7F 1B 78 */	mr r31, r3
/* 8054E310  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8054E314  80 C4 01 74 */	lwz r6, 0x174(r4)
/* 8054E318  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8054E31C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8054E320  A3 C6 00 00 */	lhz r30, 0(r6)
/* 8054E324  3C A4 00 02 */	addis r5, r4, 2
/* 8054E328  80 85 61 3C */	lwz r4, 0x613c(r5)
/* 8054E32C  90 01 00 08 */	stw r0, 8(r1)
/* 8054E330  88 06 00 02 */	lbz r0, 2(r6)
/* 8054E334  80 64 00 88 */	lwz r3, 0x88(r4)
/* 8054E338  54 00 08 3C */	slwi r0, r0, 1
/* 8054E33C  7C 60 04 30 */	srw r0, r3, r0
/* 8054E340  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8054E344  41 82 00 0C */	beq lbl_8054E350
/* 8054E348  38 60 00 03 */	li r3, 3
/* 8054E34C  48 00 00 A4 */	b lbl_8054E3F0
lbl_8054E350:
/* 8054E350  57 C0 A7 3E */	rlwinm r0, r30, 0x14, 0x1c, 0x1f
/* 8054E354  2C 00 00 02 */	cmpwi r0, 2
/* 8054E358  40 82 00 4C */	bne lbl_8054E3A4
/* 8054E35C  57 C0 C7 3E */	rlwinm r0, r30, 0x18, 0x1c, 0x1f
/* 8054E360  2C 00 00 0F */	cmpwi r0, 0xf
/* 8054E364  40 82 00 40 */	bne lbl_8054E3A4
/* 8054E368  28 1E 2F 03 */	cmplwi r30, 0x2f03
/* 8054E36C  40 82 00 14 */	bne lbl_8054E380
/* 8054E370  38 00 00 01 */	li r0, 1
/* 8054E374  38 60 00 04 */	li r3, 4
/* 8054E378  90 01 00 08 */	stw r0, 8(r1)
/* 8054E37C  48 00 00 74 */	b lbl_8054E3F0
lbl_8054E380:
/* 8054E380  88 05 61 24 */	lbz r0, 0x6124(r5)
/* 8054E384  28 00 00 00 */	cmplwi r0, 0
/* 8054E388  40 82 00 0C */	bne lbl_8054E394
/* 8054E38C  38 60 00 02 */	li r3, 2
/* 8054E390  48 00 00 60 */	b lbl_8054E3F0
lbl_8054E394:
/* 8054E394  7F C4 F3 78 */	mr r4, r30
/* 8054E398  38 61 00 08 */	addi r3, r1, 8
/* 8054E39C  4B FF FD C9 */	bl aNSC_check_buy_item_sub
/* 8054E3A0  48 00 00 50 */	b lbl_8054E3F0
lbl_8054E3A4:
/* 8054E3A4  7F C3 F3 78 */	mr r3, r30
/* 8054E3A8  4B E9 A2 F9 */	bl mSP_ItemNo2ItemPrice
/* 8054E3AC  54 60 F0 BF */	rlwinm. r0, r3, 0x1e, 2, 0x1f
/* 8054E3B0  40 82 00 14 */	bne lbl_8054E3C4
/* 8054E3B4  38 00 00 01 */	li r0, 1
/* 8054E3B8  38 60 00 04 */	li r3, 4
/* 8054E3BC  90 01 00 08 */	stw r0, 8(r1)
/* 8054E3C0  48 00 00 30 */	b lbl_8054E3F0
lbl_8054E3C4:
/* 8054E3C4  28 1E 20 00 */	cmplwi r30, 0x2000
/* 8054E3C8  41 80 00 1C */	blt lbl_8054E3E4
/* 8054E3CC  28 1E 20 FF */	cmplwi r30, 0x20ff
/* 8054E3D0  41 81 00 14 */	bgt lbl_8054E3E4
/* 8054E3D4  7F C4 F3 78 */	mr r4, r30
/* 8054E3D8  38 61 00 08 */	addi r3, r1, 8
/* 8054E3DC  4B FF FE 2D */	bl aNSC_check_buy_paper
/* 8054E3E0  48 00 00 10 */	b lbl_8054E3F0
lbl_8054E3E4:
/* 8054E3E4  7F C4 F3 78 */	mr r4, r30
/* 8054E3E8  38 61 00 08 */	addi r3, r1, 8
/* 8054E3EC  4B FF FD 79 */	bl aNSC_check_buy_item_sub
lbl_8054E3F0:
/* 8054E3F0  80 01 00 08 */	lwz r0, 8(r1)
/* 8054E3F4  90 1F 09 B0 */	stw r0, 0x9b0(r31)
/* 8054E3F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054E3FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8054E400  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8054E404  7C 08 03 A6 */	mtlr r0
/* 8054E408  38 21 00 20 */	addi r1, r1, 0x20
/* 8054E40C  4E 80 00 20 */	blr 
