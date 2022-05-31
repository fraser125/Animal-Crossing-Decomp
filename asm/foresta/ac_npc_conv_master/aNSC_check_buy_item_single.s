lbl_805469E0:
/* 805469E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805469E4  7C 08 02 A6 */	mflr r0
/* 805469E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805469EC  38 00 00 00 */	li r0, 0
/* 805469F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805469F4  7C 7F 1B 78 */	mr r31, r3
/* 805469F8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805469FC  80 C4 01 74 */	lwz r6, 0x174(r4)
/* 80546A00  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80546A04  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80546A08  A3 C6 00 00 */	lhz r30, 0(r6)
/* 80546A0C  3C A4 00 02 */	addis r5, r4, 2
/* 80546A10  80 85 61 3C */	lwz r4, 0x613c(r5)
/* 80546A14  90 01 00 08 */	stw r0, 8(r1)
/* 80546A18  88 06 00 02 */	lbz r0, 2(r6)
/* 80546A1C  80 64 00 88 */	lwz r3, 0x88(r4)
/* 80546A20  54 00 08 3C */	slwi r0, r0, 1
/* 80546A24  7C 60 04 30 */	srw r0, r3, r0
/* 80546A28  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80546A2C  41 82 00 0C */	beq lbl_80546A38
/* 80546A30  38 60 00 03 */	li r3, 3
/* 80546A34  48 00 00 A4 */	b lbl_80546AD8
lbl_80546A38:
/* 80546A38  57 C0 A7 3E */	rlwinm r0, r30, 0x14, 0x1c, 0x1f
/* 80546A3C  2C 00 00 02 */	cmpwi r0, 2
/* 80546A40  40 82 00 4C */	bne lbl_80546A8C
/* 80546A44  57 C0 C7 3E */	rlwinm r0, r30, 0x18, 0x1c, 0x1f
/* 80546A48  2C 00 00 0F */	cmpwi r0, 0xf
/* 80546A4C  40 82 00 40 */	bne lbl_80546A8C
/* 80546A50  28 1E 2F 03 */	cmplwi r30, 0x2f03
/* 80546A54  40 82 00 14 */	bne lbl_80546A68
/* 80546A58  38 00 00 01 */	li r0, 1
/* 80546A5C  38 60 00 04 */	li r3, 4
/* 80546A60  90 01 00 08 */	stw r0, 8(r1)
/* 80546A64  48 00 00 74 */	b lbl_80546AD8
lbl_80546A68:
/* 80546A68  88 05 61 24 */	lbz r0, 0x6124(r5)
/* 80546A6C  28 00 00 00 */	cmplwi r0, 0
/* 80546A70  40 82 00 0C */	bne lbl_80546A7C
/* 80546A74  38 60 00 02 */	li r3, 2
/* 80546A78  48 00 00 60 */	b lbl_80546AD8
lbl_80546A7C:
/* 80546A7C  7F C4 F3 78 */	mr r4, r30
/* 80546A80  38 61 00 08 */	addi r3, r1, 8
/* 80546A84  4B FF FD C9 */	bl aNSC_check_buy_item_sub
/* 80546A88  48 00 00 50 */	b lbl_80546AD8
lbl_80546A8C:
/* 80546A8C  7F C3 F3 78 */	mr r3, r30
/* 80546A90  4B EA 1C 11 */	bl mSP_ItemNo2ItemPrice
/* 80546A94  54 60 F0 BF */	rlwinm. r0, r3, 0x1e, 2, 0x1f
/* 80546A98  40 82 00 14 */	bne lbl_80546AAC
/* 80546A9C  38 00 00 01 */	li r0, 1
/* 80546AA0  38 60 00 04 */	li r3, 4
/* 80546AA4  90 01 00 08 */	stw r0, 8(r1)
/* 80546AA8  48 00 00 30 */	b lbl_80546AD8
lbl_80546AAC:
/* 80546AAC  28 1E 20 00 */	cmplwi r30, 0x2000
/* 80546AB0  41 80 00 1C */	blt lbl_80546ACC
/* 80546AB4  28 1E 20 FF */	cmplwi r30, 0x20ff
/* 80546AB8  41 81 00 14 */	bgt lbl_80546ACC
/* 80546ABC  7F C4 F3 78 */	mr r4, r30
/* 80546AC0  38 61 00 08 */	addi r3, r1, 8
/* 80546AC4  4B FF FE 2D */	bl aNSC_check_buy_paper
/* 80546AC8  48 00 00 10 */	b lbl_80546AD8
lbl_80546ACC:
/* 80546ACC  7F C4 F3 78 */	mr r4, r30
/* 80546AD0  38 61 00 08 */	addi r3, r1, 8
/* 80546AD4  4B FF FD 79 */	bl aNSC_check_buy_item_sub
lbl_80546AD8:
/* 80546AD8  80 01 00 08 */	lwz r0, 8(r1)
/* 80546ADC  90 1F 09 B0 */	stw r0, 0x9b0(r31)
/* 80546AE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80546AE4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80546AE8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80546AEC  7C 08 03 A6 */	mtlr r0
/* 80546AF0  38 21 00 20 */	addi r1, r1, 0x20
/* 80546AF4  4E 80 00 20 */	blr 
