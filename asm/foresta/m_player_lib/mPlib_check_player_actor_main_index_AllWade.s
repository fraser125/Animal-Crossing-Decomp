lbl_803DE4B0:
/* 803DE4B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DE4B4  7C 08 02 A6 */	mflr r0
/* 803DE4B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DE4BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DE4C0  7C 7F 1B 78 */	mr r31, r3
/* 803DE4C4  4B FF B1 AD */	bl mPlib_get_player_actor_main_index
/* 803DE4C8  2C 03 00 0F */	cmpwi r3, 0xf
/* 803DE4CC  41 82 00 34 */	beq lbl_803DE500
/* 803DE4D0  7F E3 FB 78 */	mr r3, r31
/* 803DE4D4  4B FF B1 9D */	bl mPlib_get_player_actor_main_index
/* 803DE4D8  2C 03 00 50 */	cmpwi r3, 0x50
/* 803DE4DC  41 82 00 24 */	beq lbl_803DE500
/* 803DE4E0  7F E3 FB 78 */	mr r3, r31
/* 803DE4E4  4B FF B1 8D */	bl mPlib_get_player_actor_main_index
/* 803DE4E8  2C 03 00 68 */	cmpwi r3, 0x68
/* 803DE4EC  41 82 00 14 */	beq lbl_803DE500
/* 803DE4F0  7F E3 FB 78 */	mr r3, r31
/* 803DE4F4  4B FF B1 7D */	bl mPlib_get_player_actor_main_index
/* 803DE4F8  2C 03 00 73 */	cmpwi r3, 0x73
/* 803DE4FC  40 82 00 0C */	bne lbl_803DE508
lbl_803DE500:
/* 803DE500  38 60 00 01 */	li r3, 1
/* 803DE504  48 00 00 08 */	b lbl_803DE50C
lbl_803DE508:
/* 803DE508  38 60 00 00 */	li r3, 0
lbl_803DE50C:
/* 803DE50C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DE510  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DE514  7C 08 03 A6 */	mtlr r0
/* 803DE518  38 21 00 10 */	addi r1, r1, 0x10
/* 803DE51C  4E 80 00 20 */	blr 
