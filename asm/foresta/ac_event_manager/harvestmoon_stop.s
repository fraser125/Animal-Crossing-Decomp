lbl_80420400:
/* 80420400  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80420404  7C 08 02 A6 */	mflr r0
/* 80420408  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042040C  39 61 00 20 */	addi r11, r1, 0x20
/* 80420410  4B C7 AA C5 */	bl func_8009AED4
/* 80420414  7C 9E 23 78 */	mr r30, r4
/* 80420418  7C 7D 1B 78 */	mr r29, r3
/* 8042041C  80 64 00 00 */	lwz r3, 0(r4)
/* 80420420  3B E0 00 02 */	li r31, 2
/* 80420424  4B F7 D7 C9 */	bl mEv_check_keep
/* 80420428  2C 03 00 00 */	cmpwi r3, 0
/* 8042042C  41 82 00 34 */	beq lbl_80420460
/* 80420430  80 9E 00 00 */	lwz r4, 0(r30)
/* 80420434  7F A3 EB 78 */	mr r3, r29
/* 80420438  38 A0 00 09 */	li r5, 9
/* 8042043C  38 C0 00 00 */	li r6, 0
/* 80420440  4B FF D6 3D */	bl title_fade
/* 80420444  2C 03 00 00 */	cmpwi r3, 0
/* 80420448  41 82 00 14 */	beq lbl_8042045C
/* 8042044C  80 7E 00 00 */	lwz r3, 0(r30)
/* 80420450  4B F7 D7 69 */	bl mEv_clear_keep
/* 80420454  3B E0 00 01 */	li r31, 1
/* 80420458  48 00 00 08 */	b lbl_80420460
lbl_8042045C:
/* 8042045C  3B E0 00 00 */	li r31, 0
lbl_80420460:
/* 80420460  2C 1F 00 00 */	cmpwi r31, 0
/* 80420464  41 82 00 0C */	beq lbl_80420470
/* 80420468  38 60 00 41 */	li r3, 0x41
/* 8042046C  4B FF CF 01 */	bl delete_effect
lbl_80420470:
/* 80420470  7F E3 FB 78 */	mr r3, r31
/* 80420474  39 61 00 20 */	addi r11, r1, 0x20
/* 80420478  4B C7 AA A9 */	bl func_8009AF20
/* 8042047C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80420480  7C 08 03 A6 */	mtlr r0
/* 80420484  38 21 00 20 */	addi r1, r1, 0x20
/* 80420488  4E 80 00 20 */	blr 
