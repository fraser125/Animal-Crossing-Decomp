lbl_803DB420:
/* 803DB420  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DB424  7C 08 02 A6 */	mflr r0
/* 803DB428  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DB42C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DB430  7C 7F 1B 78 */	mr r31, r3
/* 803DB434  4B FF E2 3D */	bl mPlib_get_player_actor_main_index
/* 803DB438  2C 03 00 50 */	cmpwi r3, 0x50
/* 803DB43C  40 82 00 0C */	bne lbl_803DB448
/* 803DB440  38 60 00 01 */	li r3, 1
/* 803DB444  48 00 00 2C */	b lbl_803DB470
lbl_803DB448:
/* 803DB448  7F E3 FB 78 */	mr r3, r31
/* 803DB44C  4B FF E2 49 */	bl mPlib_get_player_actor_request_main_index
/* 803DB450  2C 03 00 50 */	cmpwi r3, 0x50
/* 803DB454  40 82 00 18 */	bne lbl_803DB46C
/* 803DB458  7F E3 FB 78 */	mr r3, r31
/* 803DB45C  38 80 00 13 */	li r4, 0x13
/* 803DB460  4B FF FF 15 */	bl mPlib_strength_request_main_index_priority
/* 803DB464  38 60 00 01 */	li r3, 1
/* 803DB468  48 00 00 08 */	b lbl_803DB470
lbl_803DB46C:
/* 803DB46C  38 60 00 00 */	li r3, 0
lbl_803DB470:
/* 803DB470  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DB474  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DB478  7C 08 03 A6 */	mtlr r0
/* 803DB47C  38 21 00 10 */	addi r1, r1, 0x10
/* 803DB480  4E 80 00 20 */	blr 
