lbl_805F90B0:
/* 805F90B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F90B4  7C 08 02 A6 */	mflr r0
/* 805F90B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F90BC  39 61 00 20 */	addi r11, r1, 0x20
/* 805F90C0  4B AA 1E 15 */	bl func_8009AED4
/* 805F90C4  7C 7D 1B 78 */	mr r29, r3
/* 805F90C8  7C 9E 23 78 */	mr r30, r4
/* 805F90CC  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805F90D0  7C BF 2B 78 */	mr r31, r5
/* 805F90D4  80 C6 09 7C */	lwz r6, 0x97c(r6)
/* 805F90D8  A8 06 03 6C */	lha r0, 0x36c(r6)
/* 805F90DC  2C 00 00 01 */	cmpwi r0, 1
/* 805F90E0  41 82 00 1C */	beq lbl_805F90FC
/* 805F90E4  40 80 00 2C */	bge lbl_805F9110
/* 805F90E8  2C 00 00 00 */	cmpwi r0, 0
/* 805F90EC  40 80 00 08 */	bge lbl_805F90F4
/* 805F90F0  48 00 00 20 */	b lbl_805F9110
lbl_805F90F4:
/* 805F90F4  38 C0 00 00 */	li r6, 0
/* 805F90F8  4B FF FB 0D */	bl mTG_cpack_change_mail_mark_decide
lbl_805F90FC:
/* 805F90FC  7F A3 EB 78 */	mr r3, r29
/* 805F9100  7F C4 F3 78 */	mr r4, r30
/* 805F9104  7F E5 FB 78 */	mr r5, r31
/* 805F9108  38 C0 00 00 */	li r6, 0
/* 805F910C  4B FF F7 E5 */	bl mTG_cpack_change_mail_mark_move
lbl_805F9110:
/* 805F9110  38 60 00 01 */	li r3, 1
/* 805F9114  39 61 00 20 */	addi r11, r1, 0x20
/* 805F9118  4B AA 1E 09 */	bl func_8009AF20
/* 805F911C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F9120  7C 08 03 A6 */	mtlr r0
/* 805F9124  38 21 00 20 */	addi r1, r1, 0x20
/* 805F9128  4E 80 00 20 */	blr 
