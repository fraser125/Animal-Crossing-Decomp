lbl_80581A84:
/* 80581A84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80581A88  7C 08 02 A6 */	mflr r0
/* 80581A8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80581A90  38 00 00 00 */	li r0, 0
/* 80581A94  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80581A98  7C 7F 1B 78 */	mr r31, r3
/* 80581A9C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80581AA0  80 C4 01 74 */	lwz r6, 0x174(r4)
/* 80581AA4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80581AA8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80581AAC  A3 C6 00 00 */	lhz r30, 0(r6)
/* 80581AB0  3C A4 00 02 */	addis r5, r4, 2
/* 80581AB4  80 85 61 3C */	lwz r4, 0x613c(r5)
/* 80581AB8  90 01 00 08 */	stw r0, 8(r1)
/* 80581ABC  88 06 00 02 */	lbz r0, 2(r6)
/* 80581AC0  80 64 00 88 */	lwz r3, 0x88(r4)
/* 80581AC4  54 00 08 3C */	slwi r0, r0, 1
/* 80581AC8  7C 60 04 30 */	srw r0, r3, r0
/* 80581ACC  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80581AD0  41 82 00 0C */	beq lbl_80581ADC
/* 80581AD4  38 60 00 03 */	li r3, 3
/* 80581AD8  48 00 00 A4 */	b lbl_80581B7C
lbl_80581ADC:
/* 80581ADC  57 C0 A7 3E */	rlwinm r0, r30, 0x14, 0x1c, 0x1f
/* 80581AE0  2C 00 00 02 */	cmpwi r0, 2
/* 80581AE4  40 82 00 4C */	bne lbl_80581B30
/* 80581AE8  57 C0 C7 3E */	rlwinm r0, r30, 0x18, 0x1c, 0x1f
/* 80581AEC  2C 00 00 0F */	cmpwi r0, 0xf
/* 80581AF0  40 82 00 40 */	bne lbl_80581B30
/* 80581AF4  28 1E 2F 03 */	cmplwi r30, 0x2f03
/* 80581AF8  40 82 00 14 */	bne lbl_80581B0C
/* 80581AFC  38 00 00 01 */	li r0, 1
/* 80581B00  38 60 00 04 */	li r3, 4
/* 80581B04  90 01 00 08 */	stw r0, 8(r1)
/* 80581B08  48 00 00 74 */	b lbl_80581B7C
lbl_80581B0C:
/* 80581B0C  88 05 61 24 */	lbz r0, 0x6124(r5)
/* 80581B10  28 00 00 00 */	cmplwi r0, 0
/* 80581B14  40 82 00 0C */	bne lbl_80581B20
/* 80581B18  38 60 00 02 */	li r3, 2
/* 80581B1C  48 00 00 60 */	b lbl_80581B7C
lbl_80581B20:
/* 80581B20  7F C4 F3 78 */	mr r4, r30
/* 80581B24  38 61 00 08 */	addi r3, r1, 8
/* 80581B28  4B FF FD C9 */	bl aNSC_check_buy_item_sub
/* 80581B2C  48 00 00 50 */	b lbl_80581B7C
lbl_80581B30:
/* 80581B30  7F C3 F3 78 */	mr r3, r30
/* 80581B34  4B E6 6B 6D */	bl mSP_ItemNo2ItemPrice
/* 80581B38  54 60 F0 BF */	rlwinm. r0, r3, 0x1e, 2, 0x1f
/* 80581B3C  40 82 00 14 */	bne lbl_80581B50
/* 80581B40  38 00 00 01 */	li r0, 1
/* 80581B44  38 60 00 04 */	li r3, 4
/* 80581B48  90 01 00 08 */	stw r0, 8(r1)
/* 80581B4C  48 00 00 30 */	b lbl_80581B7C
lbl_80581B50:
/* 80581B50  28 1E 20 00 */	cmplwi r30, 0x2000
/* 80581B54  41 80 00 1C */	blt lbl_80581B70
/* 80581B58  28 1E 20 FF */	cmplwi r30, 0x20ff
/* 80581B5C  41 81 00 14 */	bgt lbl_80581B70
/* 80581B60  7F C4 F3 78 */	mr r4, r30
/* 80581B64  38 61 00 08 */	addi r3, r1, 8
/* 80581B68  4B FF FE 2D */	bl aNSC_check_buy_paper
/* 80581B6C  48 00 00 10 */	b lbl_80581B7C
lbl_80581B70:
/* 80581B70  7F C4 F3 78 */	mr r4, r30
/* 80581B74  38 61 00 08 */	addi r3, r1, 8
/* 80581B78  4B FF FD 79 */	bl aNSC_check_buy_item_sub
lbl_80581B7C:
/* 80581B7C  80 01 00 08 */	lwz r0, 8(r1)
/* 80581B80  90 1F 09 B0 */	stw r0, 0x9b0(r31)
/* 80581B84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80581B88  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80581B8C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80581B90  7C 08 03 A6 */	mtlr r0
/* 80581B94  38 21 00 20 */	addi r1, r1, 0x20
/* 80581B98  4E 80 00 20 */	blr 
