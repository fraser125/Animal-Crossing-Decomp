lbl_80577F78:
/* 80577F78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80577F7C  7C 08 02 A6 */	mflr r0
/* 80577F80  90 01 00 24 */	stw r0, 0x24(r1)
/* 80577F84  38 00 00 00 */	li r0, 0
/* 80577F88  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80577F8C  7C 7F 1B 78 */	mr r31, r3
/* 80577F90  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80577F94  80 C4 01 74 */	lwz r6, 0x174(r4)
/* 80577F98  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80577F9C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80577FA0  A3 C6 00 00 */	lhz r30, 0(r6)
/* 80577FA4  3C A4 00 02 */	addis r5, r4, 2
/* 80577FA8  80 85 61 3C */	lwz r4, 0x613c(r5)
/* 80577FAC  90 01 00 08 */	stw r0, 8(r1)
/* 80577FB0  88 06 00 02 */	lbz r0, 2(r6)
/* 80577FB4  80 64 00 88 */	lwz r3, 0x88(r4)
/* 80577FB8  54 00 08 3C */	slwi r0, r0, 1
/* 80577FBC  7C 60 04 30 */	srw r0, r3, r0
/* 80577FC0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80577FC4  41 82 00 0C */	beq lbl_80577FD0
/* 80577FC8  38 60 00 03 */	li r3, 3
/* 80577FCC  48 00 00 A4 */	b lbl_80578070
lbl_80577FD0:
/* 80577FD0  57 C0 A7 3E */	rlwinm r0, r30, 0x14, 0x1c, 0x1f
/* 80577FD4  2C 00 00 02 */	cmpwi r0, 2
/* 80577FD8  40 82 00 4C */	bne lbl_80578024
/* 80577FDC  57 C0 C7 3E */	rlwinm r0, r30, 0x18, 0x1c, 0x1f
/* 80577FE0  2C 00 00 0F */	cmpwi r0, 0xf
/* 80577FE4  40 82 00 40 */	bne lbl_80578024
/* 80577FE8  28 1E 2F 03 */	cmplwi r30, 0x2f03
/* 80577FEC  40 82 00 14 */	bne lbl_80578000
/* 80577FF0  38 00 00 01 */	li r0, 1
/* 80577FF4  38 60 00 04 */	li r3, 4
/* 80577FF8  90 01 00 08 */	stw r0, 8(r1)
/* 80577FFC  48 00 00 74 */	b lbl_80578070
lbl_80578000:
/* 80578000  88 05 61 24 */	lbz r0, 0x6124(r5)
/* 80578004  28 00 00 00 */	cmplwi r0, 0
/* 80578008  40 82 00 0C */	bne lbl_80578014
/* 8057800C  38 60 00 02 */	li r3, 2
/* 80578010  48 00 00 60 */	b lbl_80578070
lbl_80578014:
/* 80578014  7F C4 F3 78 */	mr r4, r30
/* 80578018  38 61 00 08 */	addi r3, r1, 8
/* 8057801C  4B FF FD C9 */	bl aNSC_check_buy_item_sub
/* 80578020  48 00 00 50 */	b lbl_80578070
lbl_80578024:
/* 80578024  7F C3 F3 78 */	mr r3, r30
/* 80578028  4B E7 06 79 */	bl mSP_ItemNo2ItemPrice
/* 8057802C  54 60 F0 BF */	rlwinm. r0, r3, 0x1e, 2, 0x1f
/* 80578030  40 82 00 14 */	bne lbl_80578044
/* 80578034  38 00 00 01 */	li r0, 1
/* 80578038  38 60 00 04 */	li r3, 4
/* 8057803C  90 01 00 08 */	stw r0, 8(r1)
/* 80578040  48 00 00 30 */	b lbl_80578070
lbl_80578044:
/* 80578044  28 1E 20 00 */	cmplwi r30, 0x2000
/* 80578048  41 80 00 1C */	blt lbl_80578064
/* 8057804C  28 1E 20 FF */	cmplwi r30, 0x20ff
/* 80578050  41 81 00 14 */	bgt lbl_80578064
/* 80578054  7F C4 F3 78 */	mr r4, r30
/* 80578058  38 61 00 08 */	addi r3, r1, 8
/* 8057805C  4B FF FE 2D */	bl aNSC_check_buy_paper
/* 80578060  48 00 00 10 */	b lbl_80578070
lbl_80578064:
/* 80578064  7F C4 F3 78 */	mr r4, r30
/* 80578068  38 61 00 08 */	addi r3, r1, 8
/* 8057806C  4B FF FD 79 */	bl aNSC_check_buy_item_sub
lbl_80578070:
/* 80578070  80 01 00 08 */	lwz r0, 8(r1)
/* 80578074  90 1F 09 B0 */	stw r0, 0x9b0(r31)
/* 80578078  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057807C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80578080  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80578084  7C 08 03 A6 */	mtlr r0
/* 80578088  38 21 00 20 */	addi r1, r1, 0x20
/* 8057808C  4E 80 00 20 */	blr 
