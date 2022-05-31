lbl_8041F88C:
/* 8041F88C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041F890  7C 08 02 A6 */	mflr r0
/* 8041F894  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041F898  39 61 00 20 */	addi r11, r1, 0x20
/* 8041F89C  4B C7 B6 39 */	bl func_8009AED4
/* 8041F8A0  7C 9E 23 78 */	mr r30, r4
/* 8041F8A4  7C 7D 1B 78 */	mr r29, r3
/* 8041F8A8  80 64 00 00 */	lwz r3, 0(r4)
/* 8041F8AC  3B E0 00 02 */	li r31, 2
/* 8041F8B0  4B F7 E3 3D */	bl mEv_check_keep
/* 8041F8B4  2C 03 00 00 */	cmpwi r3, 0
/* 8041F8B8  41 82 00 34 */	beq lbl_8041F8EC
/* 8041F8BC  80 9E 00 00 */	lwz r4, 0(r30)
/* 8041F8C0  7F A3 EB 78 */	mr r3, r29
/* 8041F8C4  38 A0 00 09 */	li r5, 9
/* 8041F8C8  38 C0 00 00 */	li r6, 0
/* 8041F8CC  4B FF E1 B1 */	bl title_fade
/* 8041F8D0  2C 03 00 00 */	cmpwi r3, 0
/* 8041F8D4  41 82 00 14 */	beq lbl_8041F8E8
/* 8041F8D8  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041F8DC  4B F7 E2 DD */	bl mEv_clear_keep
/* 8041F8E0  3B E0 00 01 */	li r31, 1
/* 8041F8E4  48 00 00 08 */	b lbl_8041F8EC
lbl_8041F8E8:
/* 8041F8E8  3B E0 00 00 */	li r31, 0
lbl_8041F8EC:
/* 8041F8EC  2C 1F 00 00 */	cmpwi r31, 0
/* 8041F8F0  41 82 00 10 */	beq lbl_8041F900
/* 8041F8F4  7F C3 F3 78 */	mr r3, r30
/* 8041F8F8  38 80 00 05 */	li r4, 5
/* 8041F8FC  4B FF C1 F9 */	bl delete_FG
lbl_8041F900:
/* 8041F900  7F E3 FB 78 */	mr r3, r31
/* 8041F904  39 61 00 20 */	addi r11, r1, 0x20
/* 8041F908  4B C7 B6 19 */	bl func_8009AF20
/* 8041F90C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041F910  7C 08 03 A6 */	mtlr r0
/* 8041F914  38 21 00 20 */	addi r1, r1, 0x20
/* 8041F918  4E 80 00 20 */	blr 
