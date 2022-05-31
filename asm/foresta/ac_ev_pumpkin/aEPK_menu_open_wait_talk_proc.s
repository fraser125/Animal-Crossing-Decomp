lbl_80522B34:
/* 80522B34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80522B38  7C 08 02 A6 */	mflr r0
/* 80522B3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80522B40  39 61 00 20 */	addi r11, r1, 0x20
/* 80522B44  4B B7 83 91 */	bl func_8009AED4
/* 80522B48  7C 7D 1B 78 */	mr r29, r3
/* 80522B4C  7C 9E 23 78 */	mr r30, r4
/* 80522B50  4B E9 CB 59 */	bl func_803BF6A8
/* 80522B54  7C 7F 1B 78 */	mr r31, r3
/* 80522B58  4B E9 CB E9 */	bl mMsg_Check_main_wait
/* 80522B5C  2C 03 00 01 */	cmpwi r3, 1
/* 80522B60  40 82 00 2C */	bne lbl_80522B8C
/* 80522B64  38 7E 1D EC */	addi r3, r30, 0x1dec
/* 80522B68  38 80 00 01 */	li r4, 1
/* 80522B6C  38 A0 00 06 */	li r5, 6
/* 80522B70  38 C0 00 00 */	li r6, 0
/* 80522B74  4B EC CB 69 */	bl mSM_open_submenu
/* 80522B78  7F E3 FB 78 */	mr r3, r31
/* 80522B7C  4B E9 E1 C5 */	bl mMsg_Set_LockContinue
/* 80522B80  7F A3 EB 78 */	mr r3, r29
/* 80522B84  38 80 00 03 */	li r4, 3
/* 80522B88  48 00 06 59 */	bl aEPK_change_talk_proc
lbl_80522B8C:
/* 80522B8C  39 61 00 20 */	addi r11, r1, 0x20
/* 80522B90  4B B7 83 91 */	bl func_8009AF20
/* 80522B94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80522B98  7C 08 03 A6 */	mtlr r0
/* 80522B9C  38 21 00 20 */	addi r1, r1, 0x20
/* 80522BA0  4E 80 00 20 */	blr 
