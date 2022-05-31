lbl_803DB3BC:
/* 803DB3BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DB3C0  7C 08 02 A6 */	mflr r0
/* 803DB3C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DB3C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DB3CC  7C 7F 1B 78 */	mr r31, r3
/* 803DB3D0  4B FF E2 A1 */	bl mPlib_get_player_actor_main_index
/* 803DB3D4  2C 03 00 0F */	cmpwi r3, 0xf
/* 803DB3D8  40 82 00 0C */	bne lbl_803DB3E4
/* 803DB3DC  38 60 00 01 */	li r3, 1
/* 803DB3E0  48 00 00 2C */	b lbl_803DB40C
lbl_803DB3E4:
/* 803DB3E4  7F E3 FB 78 */	mr r3, r31
/* 803DB3E8  4B FF E2 AD */	bl mPlib_get_player_actor_request_main_index
/* 803DB3EC  2C 03 00 0F */	cmpwi r3, 0xf
/* 803DB3F0  40 82 00 18 */	bne lbl_803DB408
/* 803DB3F4  7F E3 FB 78 */	mr r3, r31
/* 803DB3F8  38 80 00 13 */	li r4, 0x13
/* 803DB3FC  4B FF FF 79 */	bl mPlib_strength_request_main_index_priority
/* 803DB400  38 60 00 01 */	li r3, 1
/* 803DB404  48 00 00 08 */	b lbl_803DB40C
lbl_803DB408:
/* 803DB408  38 60 00 00 */	li r3, 0
lbl_803DB40C:
/* 803DB40C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DB410  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DB414  7C 08 03 A6 */	mtlr r0
/* 803DB418  38 21 00 10 */	addi r1, r1, 0x10
/* 803DB41C  4E 80 00 20 */	blr 
