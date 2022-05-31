lbl_8050FFA0:
/* 8050FFA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050FFA4  7C 08 02 A6 */	mflr r0
/* 8050FFA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050FFAC  39 61 00 20 */	addi r11, r1, 0x20
/* 8050FFB0  4B B8 AF 25 */	bl func_8009AED4
/* 8050FFB4  7C 9D 23 78 */	mr r29, r4
/* 8050FFB8  7C 64 1B 78 */	mr r4, r3
/* 8050FFBC  38 61 00 08 */	addi r3, r1, 8
/* 8050FFC0  3B E0 00 00 */	li r31, 0
/* 8050FFC4  3B C0 00 00 */	li r30, 0
/* 8050FFC8  4B EF 72 6D */	bl lbRTC_TimeCopy
/* 8050FFCC  88 01 00 0C */	lbz r0, 0xc(r1)
/* 8050FFD0  28 00 00 00 */	cmplwi r0, 0
/* 8050FFD4  41 82 00 10 */	beq lbl_8050FFE4
/* 8050FFD8  28 00 00 07 */	cmplwi r0, 7
/* 8050FFDC  40 80 00 08 */	bge lbl_8050FFE4
/* 8050FFE0  23 E0 00 07 */	subfic r31, r0, 7
lbl_8050FFE4:
/* 8050FFE4  7F E4 FB 78 */	mr r4, r31
/* 8050FFE8  38 61 00 08 */	addi r3, r1, 8
/* 8050FFEC  4B EF 6D 39 */	bl lbRTC_Add_DD
/* 8050FFF0  7F A4 EB 78 */	mr r4, r29
/* 8050FFF4  38 61 00 08 */	addi r3, r1, 8
/* 8050FFF8  4B EF 69 1D */	bl lbRTC_IsOverTime
/* 8050FFFC  2C 03 00 01 */	cmpwi r3, 1
/* 80510000  40 82 00 08 */	bne lbl_80510008
/* 80510004  3B C0 00 01 */	li r30, 1
lbl_80510008:
/* 80510008  7F C3 F3 78 */	mr r3, r30
/* 8051000C  39 61 00 20 */	addi r11, r1, 0x20
/* 80510010  4B B8 AF 11 */	bl func_8009AF20
/* 80510014  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80510018  7C 08 03 A6 */	mtlr r0
/* 8051001C  38 21 00 20 */	addi r1, r1, 0x20
/* 80510020  4E 80 00 20 */	blr 
