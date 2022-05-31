lbl_805D858C:
/* 805D858C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805D8590  7C 08 02 A6 */	mflr r0
/* 805D8594  90 01 00 24 */	stw r0, 0x24(r1)
/* 805D8598  39 61 00 20 */	addi r11, r1, 0x20
/* 805D859C  4B AC 29 35 */	bl func_8009AED0
/* 805D85A0  7C 7C 1B 78 */	mr r28, r3
/* 805D85A4  3B A0 00 01 */	li r29, 1
/* 805D85A8  3B DC 00 06 */	addi r30, r28, 6
/* 805D85AC  3B E0 00 00 */	li r31, 0
lbl_805D85B0:
/* 805D85B0  88 7E 00 00 */	lbz r3, 0(r30)
/* 805D85B4  4B FF FF 75 */	bl mED_check_pw_usable_letter_sub
/* 805D85B8  2C 03 00 00 */	cmpwi r3, 0
/* 805D85BC  40 82 00 0C */	bne lbl_805D85C8
/* 805D85C0  3B A0 00 00 */	li r29, 0
/* 805D85C4  48 00 00 14 */	b lbl_805D85D8
lbl_805D85C8:
/* 805D85C8  3B FF 00 01 */	addi r31, r31, 1
/* 805D85CC  3B DE 00 01 */	addi r30, r30, 1
/* 805D85D0  2C 1F 00 0E */	cmpwi r31, 0xe
/* 805D85D4  41 80 FF DC */	blt lbl_805D85B0
lbl_805D85D8:
/* 805D85D8  3B FC 00 14 */	addi r31, r28, 0x14
/* 805D85DC  3B C0 00 00 */	li r30, 0
lbl_805D85E0:
/* 805D85E0  88 7F 00 00 */	lbz r3, 0(r31)
/* 805D85E4  4B FF FF 45 */	bl mED_check_pw_usable_letter_sub
/* 805D85E8  2C 03 00 00 */	cmpwi r3, 0
/* 805D85EC  40 82 00 0C */	bne lbl_805D85F8
/* 805D85F0  3B A0 00 00 */	li r29, 0
/* 805D85F4  48 00 00 14 */	b lbl_805D8608
lbl_805D85F8:
/* 805D85F8  3B DE 00 01 */	addi r30, r30, 1
/* 805D85FC  3B FF 00 01 */	addi r31, r31, 1
/* 805D8600  2C 1E 00 0E */	cmpwi r30, 0xe
/* 805D8604  41 80 FF DC */	blt lbl_805D85E0
lbl_805D8608:
/* 805D8608  7F A3 EB 78 */	mr r3, r29
/* 805D860C  39 61 00 20 */	addi r11, r1, 0x20
/* 805D8610  4B AC 29 0D */	bl func_8009AF1C
/* 805D8614  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805D8618  7C 08 03 A6 */	mtlr r0
/* 805D861C  38 21 00 20 */	addi r1, r1, 0x20
/* 805D8620  4E 80 00 20 */	blr 
