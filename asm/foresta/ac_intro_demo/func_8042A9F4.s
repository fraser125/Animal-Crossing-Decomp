lbl_8042A9F4:
/* 8042A9F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042A9F8  7C 08 02 A6 */	mflr r0
/* 8042A9FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042AA00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042AA04  7C 7F 1B 78 */	mr r31, r3
/* 8042AA08  4B FA EC 69 */	bl mPlib_get_player_actor_main_index
/* 8042AA0C  2C 03 00 4F */	cmpwi r3, 0x4f
/* 8042AA10  41 82 00 0C */	beq lbl_8042AA1C
/* 8042AA14  7F E3 FB 78 */	mr r3, r31
/* 8042AA18  4B FB 04 F9 */	bl mPlib_request_main_demo_standing_train_type1
lbl_8042AA1C:
/* 8042AA1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042AA20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042AA24  7C 08 03 A6 */	mtlr r0
/* 8042AA28  38 21 00 10 */	addi r1, r1, 0x10
/* 8042AA2C  4E 80 00 20 */	blr 
