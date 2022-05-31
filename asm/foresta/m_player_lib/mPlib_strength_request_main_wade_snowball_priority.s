lbl_803DB484:
/* 803DB484  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DB488  7C 08 02 A6 */	mflr r0
/* 803DB48C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DB490  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DB494  7C 7F 1B 78 */	mr r31, r3
/* 803DB498  4B FF E1 D9 */	bl mPlib_get_player_actor_main_index
/* 803DB49C  2C 03 00 68 */	cmpwi r3, 0x68
/* 803DB4A0  40 82 00 0C */	bne lbl_803DB4AC
/* 803DB4A4  38 60 00 01 */	li r3, 1
/* 803DB4A8  48 00 00 2C */	b lbl_803DB4D4
lbl_803DB4AC:
/* 803DB4AC  7F E3 FB 78 */	mr r3, r31
/* 803DB4B0  4B FF E1 E5 */	bl mPlib_get_player_actor_request_main_index
/* 803DB4B4  2C 03 00 68 */	cmpwi r3, 0x68
/* 803DB4B8  40 82 00 18 */	bne lbl_803DB4D0
/* 803DB4BC  7F E3 FB 78 */	mr r3, r31
/* 803DB4C0  38 80 00 13 */	li r4, 0x13
/* 803DB4C4  4B FF FE B1 */	bl mPlib_strength_request_main_index_priority
/* 803DB4C8  38 60 00 01 */	li r3, 1
/* 803DB4CC  48 00 00 08 */	b lbl_803DB4D4
lbl_803DB4D0:
/* 803DB4D0  38 60 00 00 */	li r3, 0
lbl_803DB4D4:
/* 803DB4D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DB4D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DB4DC  7C 08 03 A6 */	mtlr r0
/* 803DB4E0  38 21 00 10 */	addi r1, r1, 0x10
/* 803DB4E4  4E 80 00 20 */	blr 
