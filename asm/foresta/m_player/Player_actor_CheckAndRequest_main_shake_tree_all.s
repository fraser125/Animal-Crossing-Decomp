lbl_804DC50C:
/* 804DC50C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804DC510  7C 08 02 A6 */	mflr r0
/* 804DC514  90 01 00 44 */	stw r0, 0x44(r1)
/* 804DC518  39 61 00 40 */	addi r11, r1, 0x40
/* 804DC51C  4B BB E9 B9 */	bl func_8009AED4
/* 804DC520  7C 7D 1B 78 */	mr r29, r3
/* 804DC524  4B FF 83 79 */	bl Player_actor_CheckController_forShake_tree
/* 804DC528  2C 03 00 00 */	cmpwi r3, 0
/* 804DC52C  41 82 00 98 */	beq lbl_804DC5C4
/* 804DC530  7F A3 EB 78 */	mr r3, r29
/* 804DC534  4B EF D1 0D */	bl get_player_actor_withoutCheck
/* 804DC538  38 81 00 1C */	addi r4, r1, 0x1c
/* 804DC53C  7C 7F 1B 78 */	mr r31, r3
/* 804DC540  4B FF F3 21 */	bl Player_actor_Get_shake_tree_position_and_itemNo
/* 804DC544  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 804DC548  7C 7E 1B 78 */	mr r30, r3
/* 804DC54C  41 82 00 78 */	beq lbl_804DC5C4
/* 804DC550  80 E1 00 1C */	lwz r7, 0x1c(r1)
/* 804DC554  38 61 00 0C */	addi r3, r1, 0xc
/* 804DC558  80 C1 00 20 */	lwz r6, 0x20(r1)
/* 804DC55C  38 81 00 08 */	addi r4, r1, 8
/* 804DC560  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DC564  38 A1 00 10 */	addi r5, r1, 0x10
/* 804DC568  90 E1 00 10 */	stw r7, 0x10(r1)
/* 804DC56C  90 C1 00 14 */	stw r6, 0x14(r1)
/* 804DC570  90 01 00 18 */	stw r0, 0x18(r1)
/* 804DC574  4B EC 8D F5 */	bl mFI_Wpos2UtNum
/* 804DC578  2C 03 00 00 */	cmpwi r3, 0
/* 804DC57C  41 82 00 48 */	beq lbl_804DC5C4
/* 804DC580  3C 60 80 64 */	lis r3, lit_4068@ha /* 0x80647A90@ha */
/* 804DC584  80 81 00 0C */	lwz r4, 0xc(r1)
/* 804DC588  C0 23 7A 90 */	lfs f1, lit_4068@l(r3)  /* 0x80647A90@l */
/* 804DC58C  7F E3 FB 78 */	mr r3, r31
/* 804DC590  80 A1 00 08 */	lwz r5, 8(r1)
/* 804DC594  38 C0 00 00 */	li r6, 0
/* 804DC598  4B FF F9 7D */	bl Player_actor_Check_able_shake_tree_table
/* 804DC59C  2C 03 00 00 */	cmpwi r3, 0
/* 804DC5A0  41 82 00 24 */	beq lbl_804DC5C4
/* 804DC5A4  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 804DC5A8  7F A3 EB 78 */	mr r3, r29
/* 804DC5AC  80 E1 00 08 */	lwz r7, 8(r1)
/* 804DC5B0  7F C5 F3 78 */	mr r5, r30
/* 804DC5B4  38 81 00 1C */	addi r4, r1, 0x1c
/* 804DC5B8  39 00 00 05 */	li r8, 5
/* 804DC5BC  48 02 44 CD */	bl func_80500A88
/* 804DC5C0  48 00 00 08 */	b lbl_804DC5C8
lbl_804DC5C4:
/* 804DC5C4  38 60 00 00 */	li r3, 0
lbl_804DC5C8:
/* 804DC5C8  39 61 00 40 */	addi r11, r1, 0x40
/* 804DC5CC  4B BB E9 55 */	bl func_8009AF20
/* 804DC5D0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804DC5D4  7C 08 03 A6 */	mtlr r0
/* 804DC5D8  38 21 00 40 */	addi r1, r1, 0x40
/* 804DC5DC  4E 80 00 20 */	blr 
