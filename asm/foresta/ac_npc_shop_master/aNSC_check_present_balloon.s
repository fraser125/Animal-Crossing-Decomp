lbl_805770C0:
/* 805770C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805770C4  7C 08 02 A6 */	mflr r0
/* 805770C8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805770CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805770D0  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 805770D4  3C 64 00 03 */	addis r3, r4, 3
/* 805770D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805770DC  3B E0 00 00 */	li r31, 0
/* 805770E0  80 03 88 9C */	lwz r0, -0x7764(r3)
/* 805770E4  2C 00 00 01 */	cmpwi r0, 1
/* 805770E8  40 82 00 2C */	bne lbl_80577114
/* 805770EC  88 03 88 7F */	lbz r0, -0x7781(r3)
/* 805770F0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 805770F4  40 82 00 20 */	bne lbl_80577114
/* 805770F8  3C 64 00 02 */	addis r3, r4, 2
/* 805770FC  38 80 00 00 */	li r4, 0
/* 80577100  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80577104  4B E6 96 25 */	bl mPr_GetPossessionItemIdx
/* 80577108  2C 03 FF FF */	cmpwi r3, -1
/* 8057710C  41 82 00 08 */	beq lbl_80577114
/* 80577110  3B E0 00 01 */	li r31, 1
lbl_80577114:
/* 80577114  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80577118  7F E3 FB 78 */	mr r3, r31
/* 8057711C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80577120  7C 08 03 A6 */	mtlr r0
/* 80577124  38 21 00 10 */	addi r1, r1, 0x10
/* 80577128  4E 80 00 20 */	blr 