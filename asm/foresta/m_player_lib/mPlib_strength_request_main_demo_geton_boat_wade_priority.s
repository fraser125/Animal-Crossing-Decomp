lbl_803DB4E8:
/* 803DB4E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DB4EC  7C 08 02 A6 */	mflr r0
/* 803DB4F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DB4F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DB4F8  7C 7F 1B 78 */	mr r31, r3
/* 803DB4FC  4B FF E1 75 */	bl mPlib_get_player_actor_main_index
/* 803DB500  2C 03 00 73 */	cmpwi r3, 0x73
/* 803DB504  40 82 00 0C */	bne lbl_803DB510
/* 803DB508  38 60 00 01 */	li r3, 1
/* 803DB50C  48 00 00 2C */	b lbl_803DB538
lbl_803DB510:
/* 803DB510  7F E3 FB 78 */	mr r3, r31
/* 803DB514  4B FF E1 81 */	bl mPlib_get_player_actor_request_main_index
/* 803DB518  2C 03 00 73 */	cmpwi r3, 0x73
/* 803DB51C  40 82 00 18 */	bne lbl_803DB534
/* 803DB520  7F E3 FB 78 */	mr r3, r31
/* 803DB524  38 80 00 13 */	li r4, 0x13
/* 803DB528  4B FF FE 4D */	bl mPlib_strength_request_main_index_priority
/* 803DB52C  38 60 00 01 */	li r3, 1
/* 803DB530  48 00 00 08 */	b lbl_803DB538
lbl_803DB534:
/* 803DB534  38 60 00 00 */	li r3, 0
lbl_803DB538:
/* 803DB538  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DB53C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DB540  7C 08 03 A6 */	mtlr r0
/* 803DB544  38 21 00 10 */	addi r1, r1, 0x10
/* 803DB548  4E 80 00 20 */	blr 
