lbl_803DE290:
/* 803DE290  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DE294  7C 08 02 A6 */	mflr r0
/* 803DE298  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DE29C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DE2A0  3B E0 00 00 */	li r31, 0
/* 803DE2A4  93 C1 00 08 */	stw r30, 8(r1)
/* 803DE2A8  7C 7E 1B 78 */	mr r30, r3
/* 803DE2AC  4B FF B3 C5 */	bl mPlib_get_player_actor_main_index
/* 803DE2B0  2C 03 00 42 */	cmpwi r3, 0x42
/* 803DE2B4  41 82 00 34 */	beq lbl_803DE2E8
/* 803DE2B8  7F C3 F3 78 */	mr r3, r30
/* 803DE2BC  4B FF B3 B5 */	bl mPlib_get_player_actor_main_index
/* 803DE2C0  2C 03 00 43 */	cmpwi r3, 0x43
/* 803DE2C4  41 82 00 24 */	beq lbl_803DE2E8
/* 803DE2C8  7F C3 F3 78 */	mr r3, r30
/* 803DE2CC  4B FF B3 A5 */	bl mPlib_get_player_actor_main_index
/* 803DE2D0  2C 03 00 44 */	cmpwi r3, 0x44
/* 803DE2D4  41 82 00 14 */	beq lbl_803DE2E8
/* 803DE2D8  7F C3 F3 78 */	mr r3, r30
/* 803DE2DC  4B FF B3 95 */	bl mPlib_get_player_actor_main_index
/* 803DE2E0  2C 03 00 45 */	cmpwi r3, 0x45
/* 803DE2E4  40 82 00 08 */	bne lbl_803DE2EC
lbl_803DE2E8:
/* 803DE2E8  3B E0 00 01 */	li r31, 1
lbl_803DE2EC:
/* 803DE2EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DE2F0  7F E3 FB 78 */	mr r3, r31
/* 803DE2F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DE2F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 803DE2FC  7C 08 03 A6 */	mtlr r0
/* 803DE300  38 21 00 10 */	addi r1, r1, 0x10
/* 803DE304  4E 80 00 20 */	blr 
