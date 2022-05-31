lbl_80527744:
/* 80527744  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80527748  7C 08 02 A6 */	mflr r0
/* 8052774C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80527750  39 61 00 20 */	addi r11, r1, 0x20
/* 80527754  4B B7 37 81 */	bl func_8009AED4
/* 80527758  7C 7D 1B 78 */	mr r29, r3
/* 8052775C  7C 9E 23 78 */	mr r30, r4
/* 80527760  4B E9 7F 49 */	bl func_803BF6A8
/* 80527764  7C 7F 1B 78 */	mr r31, r3
/* 80527768  4B E9 7F D9 */	bl mMsg_Check_main_wait
/* 8052776C  2C 03 00 01 */	cmpwi r3, 1
/* 80527770  40 82 00 2C */	bne lbl_8052779C
/* 80527774  38 7E 1D EC */	addi r3, r30, 0x1dec
/* 80527778  38 80 00 01 */	li r4, 1
/* 8052777C  38 A0 00 06 */	li r5, 6
/* 80527780  38 C0 00 00 */	li r6, 0
/* 80527784  4B EC 7F 59 */	bl mSM_open_submenu
/* 80527788  7F E3 FB 78 */	mr r3, r31
/* 8052778C  4B E9 95 B5 */	bl mMsg_Set_LockContinue
/* 80527790  7F A3 EB 78 */	mr r3, r29
/* 80527794  38 80 00 03 */	li r4, 3
/* 80527798  48 00 05 5D */	bl aHWN_change_talk_proc
lbl_8052779C:
/* 8052779C  39 61 00 20 */	addi r11, r1, 0x20
/* 805277A0  4B B7 37 81 */	bl func_8009AF20
/* 805277A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805277A8  7C 08 03 A6 */	mtlr r0
/* 805277AC  38 21 00 20 */	addi r1, r1, 0x20
/* 805277B0  4E 80 00 20 */	blr 
