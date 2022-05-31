lbl_8041F6AC:
/* 8041F6AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041F6B0  7C 08 02 A6 */	mflr r0
/* 8041F6B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041F6B8  39 61 00 20 */	addi r11, r1, 0x20
/* 8041F6BC  4B C7 B8 19 */	bl func_8009AED4
/* 8041F6C0  7C 9E 23 78 */	mr r30, r4
/* 8041F6C4  7C 7D 1B 78 */	mr r29, r3
/* 8041F6C8  80 64 00 00 */	lwz r3, 0(r4)
/* 8041F6CC  3B E0 00 02 */	li r31, 2
/* 8041F6D0  4B F7 E5 1D */	bl mEv_check_keep
/* 8041F6D4  2C 03 00 00 */	cmpwi r3, 0
/* 8041F6D8  41 82 00 34 */	beq lbl_8041F70C
/* 8041F6DC  80 9E 00 00 */	lwz r4, 0(r30)
/* 8041F6E0  7F A3 EB 78 */	mr r3, r29
/* 8041F6E4  38 A0 00 09 */	li r5, 9
/* 8041F6E8  38 C0 00 00 */	li r6, 0
/* 8041F6EC  4B FF E3 91 */	bl title_fade
/* 8041F6F0  2C 03 00 00 */	cmpwi r3, 0
/* 8041F6F4  41 82 00 14 */	beq lbl_8041F708
/* 8041F6F8  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041F6FC  4B F7 E4 BD */	bl mEv_clear_keep
/* 8041F700  3B E0 00 01 */	li r31, 1
/* 8041F704  48 00 00 08 */	b lbl_8041F70C
lbl_8041F708:
/* 8041F708  3B E0 00 00 */	li r31, 0
lbl_8041F70C:
/* 8041F70C  2C 1F 00 00 */	cmpwi r31, 0
/* 8041F710  41 82 00 1C */	beq lbl_8041F72C
/* 8041F714  7F C3 F3 78 */	mr r3, r30
/* 8041F718  38 80 00 6E */	li r4, 0x6e
/* 8041F71C  4B FF C3 D9 */	bl delete_FG
/* 8041F720  7F C3 F3 78 */	mr r3, r30
/* 8041F724  38 80 00 6F */	li r4, 0x6f
/* 8041F728  4B FF C3 CD */	bl delete_FG
lbl_8041F72C:
/* 8041F72C  7F E3 FB 78 */	mr r3, r31
/* 8041F730  39 61 00 20 */	addi r11, r1, 0x20
/* 8041F734  4B C7 B7 ED */	bl func_8009AF20
/* 8041F738  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041F73C  7C 08 03 A6 */	mtlr r0
/* 8041F740  38 21 00 20 */	addi r1, r1, 0x20
/* 8041F744  4E 80 00 20 */	blr 
