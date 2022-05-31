lbl_804961D0:
/* 804961D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804961D4  7C 08 02 A6 */	mflr r0
/* 804961D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804961DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804961E0  7C 7F 1B 78 */	mr r31, r3
/* 804961E4  4B F4 34 8D */	bl mPlib_get_player_actor_main_index
/* 804961E8  2C 03 00 4F */	cmpwi r3, 0x4f
/* 804961EC  41 82 00 0C */	beq lbl_804961F8
/* 804961F0  7F E3 FB 78 */	mr r3, r31
/* 804961F4  4B F4 4D 1D */	bl mPlib_request_main_demo_standing_train_type1
lbl_804961F8:
/* 804961F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804961FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80496200  7C 08 03 A6 */	mtlr r0
/* 80496204  38 21 00 10 */	addi r1, r1, 0x10
/* 80496208  4E 80 00 20 */	blr 
