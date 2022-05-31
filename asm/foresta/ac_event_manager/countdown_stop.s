lbl_8041F2F0:
/* 8041F2F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041F2F4  7C 08 02 A6 */	mflr r0
/* 8041F2F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041F2FC  39 61 00 20 */	addi r11, r1, 0x20
/* 8041F300  4B C7 BB D5 */	bl func_8009AED4
/* 8041F304  7C 9E 23 78 */	mr r30, r4
/* 8041F308  7C 7D 1B 78 */	mr r29, r3
/* 8041F30C  80 64 00 00 */	lwz r3, 0(r4)
/* 8041F310  3B E0 00 02 */	li r31, 2
/* 8041F314  4B F7 E8 D9 */	bl mEv_check_keep
/* 8041F318  2C 03 00 00 */	cmpwi r3, 0
/* 8041F31C  41 82 00 34 */	beq lbl_8041F350
/* 8041F320  80 9E 00 00 */	lwz r4, 0(r30)
/* 8041F324  7F A3 EB 78 */	mr r3, r29
/* 8041F328  38 A0 00 09 */	li r5, 9
/* 8041F32C  38 C0 00 00 */	li r6, 0
/* 8041F330  4B FF E7 4D */	bl title_fade
/* 8041F334  2C 03 00 00 */	cmpwi r3, 0
/* 8041F338  41 82 00 14 */	beq lbl_8041F34C
/* 8041F33C  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041F340  4B F7 E8 79 */	bl mEv_clear_keep
/* 8041F344  3B E0 00 01 */	li r31, 1
/* 8041F348  48 00 00 08 */	b lbl_8041F350
lbl_8041F34C:
/* 8041F34C  3B E0 00 00 */	li r31, 0
lbl_8041F350:
/* 8041F350  2C 1F 00 00 */	cmpwi r31, 0
/* 8041F354  41 82 00 1C */	beq lbl_8041F370
/* 8041F358  7F C3 F3 78 */	mr r3, r30
/* 8041F35C  38 80 00 05 */	li r4, 5
/* 8041F360  4B FF C7 95 */	bl delete_FG
/* 8041F364  7F C3 F3 78 */	mr r3, r30
/* 8041F368  38 80 00 06 */	li r4, 6
/* 8041F36C  4B FF C7 89 */	bl delete_FG
lbl_8041F370:
/* 8041F370  7F E3 FB 78 */	mr r3, r31
/* 8041F374  39 61 00 20 */	addi r11, r1, 0x20
/* 8041F378  4B C7 BB A9 */	bl func_8009AF20
/* 8041F37C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041F380  7C 08 03 A6 */	mtlr r0
/* 8041F384  38 21 00 20 */	addi r1, r1, 0x20
/* 8041F388  4E 80 00 20 */	blr 
