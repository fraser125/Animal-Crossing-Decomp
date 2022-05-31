lbl_805CCE58:
/* 805CCE58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805CCE5C  7C 08 02 A6 */	mflr r0
/* 805CCE60  90 01 00 24 */	stw r0, 0x24(r1)
/* 805CCE64  39 61 00 20 */	addi r11, r1, 0x20
/* 805CCE68  4B AC E0 6D */	bl func_8009AED4
/* 805CCE6C  7C 7D 1B 78 */	mr r29, r3
/* 805CCE70  7C 9E 23 78 */	mr r30, r4
/* 805CCE74  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805CCE78  80 05 09 C0 */	lwz r0, 0x9c0(r5)
/* 805CCE7C  3B E5 05 1C */	addi r31, r5, 0x51c
/* 805CCE80  28 00 00 00 */	cmplwi r0, 0
/* 805CCE84  41 82 00 20 */	beq lbl_805CCEA4
/* 805CCE88  81 9F 00 10 */	lwz r12, 0x10(r31)
/* 805CCE8C  7D 89 03 A6 */	mtctr r12
/* 805CCE90  4E 80 04 21 */	bctrl 
/* 805CCE94  7F A3 EB 78 */	mr r3, r29
/* 805CCE98  7F E4 FB 78 */	mr r4, r31
/* 805CCE9C  7F C5 F3 78 */	mr r5, r30
/* 805CCEA0  4B FF FE E9 */	bl mCM_set_dl
lbl_805CCEA4:
/* 805CCEA4  39 61 00 20 */	addi r11, r1, 0x20
/* 805CCEA8  4B AC E0 79 */	bl func_8009AF20
/* 805CCEAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805CCEB0  7C 08 03 A6 */	mtlr r0
/* 805CCEB4  38 21 00 20 */	addi r1, r1, 0x20
/* 805CCEB8  4E 80 00 20 */	blr 
