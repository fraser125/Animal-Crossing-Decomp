lbl_803DB54C:
/* 803DB54C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DB550  7C 08 02 A6 */	mflr r0
/* 803DB554  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DB558  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DB55C  7C 7F 1B 78 */	mr r31, r3
/* 803DB560  4B FF E1 11 */	bl mPlib_get_player_actor_main_index
/* 803DB564  2C 03 00 10 */	cmpwi r3, 0x10
/* 803DB568  40 82 00 0C */	bne lbl_803DB574
/* 803DB56C  38 60 00 01 */	li r3, 1
/* 803DB570  48 00 00 2C */	b lbl_803DB59C
lbl_803DB574:
/* 803DB574  7F E3 FB 78 */	mr r3, r31
/* 803DB578  4B FF E1 1D */	bl mPlib_get_player_actor_request_main_index
/* 803DB57C  2C 03 00 10 */	cmpwi r3, 0x10
/* 803DB580  40 82 00 18 */	bne lbl_803DB598
/* 803DB584  7F E3 FB 78 */	mr r3, r31
/* 803DB588  38 80 00 13 */	li r4, 0x13
/* 803DB58C  4B FF FD E9 */	bl mPlib_strength_request_main_index_priority
/* 803DB590  38 60 00 01 */	li r3, 1
/* 803DB594  48 00 00 08 */	b lbl_803DB59C
lbl_803DB598:
/* 803DB598  38 60 00 00 */	li r3, 0
lbl_803DB59C:
/* 803DB59C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DB5A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DB5A4  7C 08 03 A6 */	mtlr r0
/* 803DB5A8  38 21 00 10 */	addi r1, r1, 0x10
/* 803DB5AC  4E 80 00 20 */	blr 
