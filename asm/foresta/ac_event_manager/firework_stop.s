lbl_8041F4D0:
/* 8041F4D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041F4D4  7C 08 02 A6 */	mflr r0
/* 8041F4D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041F4DC  39 61 00 20 */	addi r11, r1, 0x20
/* 8041F4E0  4B C7 B9 F5 */	bl func_8009AED4
/* 8041F4E4  7C 9E 23 78 */	mr r30, r4
/* 8041F4E8  7C 7D 1B 78 */	mr r29, r3
/* 8041F4EC  80 64 00 00 */	lwz r3, 0(r4)
/* 8041F4F0  3B E0 00 02 */	li r31, 2
/* 8041F4F4  4B F7 E6 F9 */	bl mEv_check_keep
/* 8041F4F8  2C 03 00 00 */	cmpwi r3, 0
/* 8041F4FC  41 82 00 34 */	beq lbl_8041F530
/* 8041F500  80 9E 00 00 */	lwz r4, 0(r30)
/* 8041F504  7F A3 EB 78 */	mr r3, r29
/* 8041F508  38 A0 00 09 */	li r5, 9
/* 8041F50C  38 C0 00 00 */	li r6, 0
/* 8041F510  4B FF E5 6D */	bl title_fade
/* 8041F514  2C 03 00 00 */	cmpwi r3, 0
/* 8041F518  41 82 00 14 */	beq lbl_8041F52C
/* 8041F51C  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041F520  4B F7 E6 99 */	bl mEv_clear_keep
/* 8041F524  3B E0 00 01 */	li r31, 1
/* 8041F528  48 00 00 08 */	b lbl_8041F530
lbl_8041F52C:
/* 8041F52C  3B E0 00 00 */	li r31, 0
lbl_8041F530:
/* 8041F530  2C 1F 00 00 */	cmpwi r31, 0
/* 8041F534  41 82 00 18 */	beq lbl_8041F54C
/* 8041F538  7F C3 F3 78 */	mr r3, r30
/* 8041F53C  38 80 00 06 */	li r4, 6
/* 8041F540  4B FF C5 B5 */	bl delete_FG
/* 8041F544  38 60 00 2B */	li r3, 0x2b
/* 8041F548  4B FF DE 25 */	bl delete_effect
lbl_8041F54C:
/* 8041F54C  7F E3 FB 78 */	mr r3, r31
/* 8041F550  39 61 00 20 */	addi r11, r1, 0x20
/* 8041F554  4B C7 B9 CD */	bl func_8009AF20
/* 8041F558  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041F55C  7C 08 03 A6 */	mtlr r0
/* 8041F560  38 21 00 20 */	addi r1, r1, 0x20
/* 8041F564  4E 80 00 20 */	blr 
