lbl_80420720:
/* 80420720  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80420724  7C 08 02 A6 */	mflr r0
/* 80420728  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042072C  39 61 00 20 */	addi r11, r1, 0x20
/* 80420730  4B C7 A7 A5 */	bl func_8009AED4
/* 80420734  7C 9E 23 78 */	mr r30, r4
/* 80420738  7C 7D 1B 78 */	mr r29, r3
/* 8042073C  80 64 00 00 */	lwz r3, 0(r4)
/* 80420740  4B F7 D4 AD */	bl mEv_check_keep
/* 80420744  2C 03 00 00 */	cmpwi r3, 0
/* 80420748  40 82 00 14 */	bne lbl_8042075C
/* 8042074C  80 7E 00 00 */	lwz r3, 0(r30)
/* 80420750  4B F7 D4 35 */	bl mEv_set_keep
/* 80420754  3B E0 00 01 */	li r31, 1
/* 80420758  48 00 00 08 */	b lbl_80420760
lbl_8042075C:
/* 8042075C  3B E0 00 02 */	li r31, 2
lbl_80420760:
/* 80420760  2C 1F 00 00 */	cmpwi r31, 0
/* 80420764  41 82 00 18 */	beq lbl_8042077C
/* 80420768  7F A3 EB 78 */	mr r3, r29
/* 8042076C  7F C4 F3 78 */	mr r4, r30
/* 80420770  38 A0 58 29 */	li r5, 0x5829
/* 80420774  38 C0 00 51 */	li r6, 0x51
/* 80420778  4B FF B5 65 */	bl make_FG_somewhere_lot4sale
lbl_8042077C:
/* 8042077C  7F E3 FB 78 */	mr r3, r31
/* 80420780  39 61 00 20 */	addi r11, r1, 0x20
/* 80420784  4B C7 A7 9D */	bl func_8009AF20
/* 80420788  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042078C  7C 08 03 A6 */	mtlr r0
/* 80420790  38 21 00 20 */	addi r1, r1, 0x20
/* 80420794  4E 80 00 20 */	blr 
