lbl_803DE520:
/* 803DE520  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DE524  7C 08 02 A6 */	mflr r0
/* 803DE528  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DE52C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DE530  3B E0 00 00 */	li r31, 0
/* 803DE534  93 C1 00 08 */	stw r30, 8(r1)
/* 803DE538  7C 7E 1B 78 */	mr r30, r3
/* 803DE53C  4B FF DB 7D */	bl mPlib_Get_item_net_catch_label
/* 803DE540  28 03 00 00 */	cmplwi r3, 0
/* 803DE544  41 82 00 14 */	beq lbl_803DE558
/* 803DE548  7F C3 F3 78 */	mr r3, r30
/* 803DE54C  4B FF B1 25 */	bl mPlib_get_player_actor_main_index
/* 803DE550  2C 03 00 2C */	cmpwi r3, 0x2c
/* 803DE554  41 82 00 34 */	beq lbl_803DE588
lbl_803DE558:
/* 803DE558  7F C3 F3 78 */	mr r3, r30
/* 803DE55C  4B FF B1 15 */	bl mPlib_get_player_actor_main_index
/* 803DE560  2C 03 00 2D */	cmpwi r3, 0x2d
/* 803DE564  41 82 00 24 */	beq lbl_803DE588
/* 803DE568  7F C3 F3 78 */	mr r3, r30
/* 803DE56C  4B FF B1 05 */	bl mPlib_get_player_actor_main_index
/* 803DE570  2C 03 00 2F */	cmpwi r3, 0x2f
/* 803DE574  41 82 00 14 */	beq lbl_803DE588
/* 803DE578  7F C3 F3 78 */	mr r3, r30
/* 803DE57C  4B FF B0 F5 */	bl mPlib_get_player_actor_main_index
/* 803DE580  2C 03 00 30 */	cmpwi r3, 0x30
/* 803DE584  40 82 00 08 */	bne lbl_803DE58C
lbl_803DE588:
/* 803DE588  3B E0 00 01 */	li r31, 1
lbl_803DE58C:
/* 803DE58C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DE590  7F E3 FB 78 */	mr r3, r31
/* 803DE594  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DE598  83 C1 00 08 */	lwz r30, 8(r1)
/* 803DE59C  7C 08 03 A6 */	mtlr r0
/* 803DE5A0  38 21 00 10 */	addi r1, r1, 0x10
/* 803DE5A4  4E 80 00 20 */	blr 
