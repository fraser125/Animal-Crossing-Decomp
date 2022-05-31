lbl_805110B4:
/* 805110B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805110B8  7C 08 02 A6 */	mflr r0
/* 805110BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805110C0  39 61 00 20 */	addi r11, r1, 0x20
/* 805110C4  4B B8 9E 11 */	bl func_8009AED4
/* 805110C8  7C 7D 1B 78 */	mr r29, r3
/* 805110CC  4B EB 5F 7D */	bl mMsm_GetDepositBlockNum
/* 805110D0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 805110D4  28 00 00 05 */	cmplwi r0, 5
/* 805110D8  40 80 00 3C */	bge lbl_80511114
/* 805110DC  3C 60 80 6A */	lis r3, l_magrw_bee_table@ha /* 0x8069FA6C@ha */
/* 805110E0  57 BE 06 3E */	clrlwi r30, r29, 0x18
/* 805110E4  3B E3 FA 6C */	addi r31, r3, l_magrw_bee_table@l /* 0x8069FA6C@l */
/* 805110E8  3B A0 00 00 */	li r29, 0
lbl_805110EC:
/* 805110EC  38 1D 00 01 */	addi r0, r29, 1
/* 805110F0  7F C0 06 30 */	sraw r0, r30, r0
/* 805110F4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805110F8  40 82 00 10 */	bne lbl_80511108
/* 805110FC  7F A3 EB 78 */	mr r3, r29
/* 80511100  7F E4 FB 78 */	mr r4, r31
/* 80511104  4B FF FE 85 */	bl mAGrw_SetTreeBlockLine
lbl_80511108:
/* 80511108  3B BD 00 01 */	addi r29, r29, 1
/* 8051110C  2C 1D 00 05 */	cmpwi r29, 5
/* 80511110  41 80 FF DC */	blt lbl_805110EC
lbl_80511114:
/* 80511114  39 61 00 20 */	addi r11, r1, 0x20
/* 80511118  4B B8 9E 09 */	bl func_8009AF20
/* 8051111C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80511120  7C 08 03 A6 */	mtlr r0
/* 80511124  38 21 00 20 */	addi r1, r1, 0x20
/* 80511128  4E 80 00 20 */	blr 
