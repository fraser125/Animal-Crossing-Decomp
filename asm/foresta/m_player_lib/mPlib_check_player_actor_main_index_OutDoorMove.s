lbl_803DE380:
/* 803DE380  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DE384  7C 08 02 A6 */	mflr r0
/* 803DE388  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DE38C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DE390  7C 7F 1B 78 */	mr r31, r3
/* 803DE394  4B FF B2 DD */	bl mPlib_get_player_actor_main_index
/* 803DE398  2C 03 00 00 */	cmpwi r3, 0
/* 803DE39C  41 82 00 64 */	beq lbl_803DE400
/* 803DE3A0  7F E3 FB 78 */	mr r3, r31
/* 803DE3A4  4B FF B2 CD */	bl mPlib_get_player_actor_main_index
/* 803DE3A8  2C 03 00 01 */	cmpwi r3, 1
/* 803DE3AC  41 82 00 54 */	beq lbl_803DE400
/* 803DE3B0  7F E3 FB 78 */	mr r3, r31
/* 803DE3B4  4B FF B2 BD */	bl mPlib_get_player_actor_main_index
/* 803DE3B8  2C 03 00 11 */	cmpwi r3, 0x11
/* 803DE3BC  41 82 00 44 */	beq lbl_803DE400
/* 803DE3C0  7F E3 FB 78 */	mr r3, r31
/* 803DE3C4  4B FF B2 AD */	bl mPlib_get_player_actor_main_index
/* 803DE3C8  2C 03 00 69 */	cmpwi r3, 0x69
/* 803DE3CC  41 82 00 34 */	beq lbl_803DE400
/* 803DE3D0  7F E3 FB 78 */	mr r3, r31
/* 803DE3D4  4B FF B2 9D */	bl mPlib_get_player_actor_main_index
/* 803DE3D8  2C 03 00 05 */	cmpwi r3, 5
/* 803DE3DC  41 82 00 24 */	beq lbl_803DE400
/* 803DE3E0  7F E3 FB 78 */	mr r3, r31
/* 803DE3E4  4B FF B2 8D */	bl mPlib_get_player_actor_main_index
/* 803DE3E8  2C 03 00 06 */	cmpwi r3, 6
/* 803DE3EC  41 82 00 14 */	beq lbl_803DE400
/* 803DE3F0  7F E3 FB 78 */	mr r3, r31
/* 803DE3F4  4B FF B2 7D */	bl mPlib_get_player_actor_main_index
/* 803DE3F8  2C 03 00 48 */	cmpwi r3, 0x48
/* 803DE3FC  40 82 00 0C */	bne lbl_803DE408
lbl_803DE400:
/* 803DE400  38 60 00 01 */	li r3, 1
/* 803DE404  48 00 00 08 */	b lbl_803DE40C
lbl_803DE408:
/* 803DE408  38 60 00 00 */	li r3, 0
lbl_803DE40C:
/* 803DE40C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DE410  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DE414  7C 08 03 A6 */	mtlr r0
/* 803DE418  38 21 00 10 */	addi r1, r1, 0x10
/* 803DE41C  4E 80 00 20 */	blr 
