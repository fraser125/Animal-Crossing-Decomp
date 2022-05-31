lbl_803DE308:
/* 803DE308  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DE30C  7C 08 02 A6 */	mflr r0
/* 803DE310  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DE314  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DE318  3B E0 00 00 */	li r31, 0
/* 803DE31C  93 C1 00 08 */	stw r30, 8(r1)
/* 803DE320  7C 7E 1B 78 */	mr r30, r3
/* 803DE324  4B FF B3 4D */	bl mPlib_get_player_actor_main_index
/* 803DE328  2C 03 00 5C */	cmpwi r3, 0x5c
/* 803DE32C  41 82 00 34 */	beq lbl_803DE360
/* 803DE330  7F C3 F3 78 */	mr r3, r30
/* 803DE334  4B FF B3 3D */	bl mPlib_get_player_actor_main_index
/* 803DE338  2C 03 00 5D */	cmpwi r3, 0x5d
/* 803DE33C  41 82 00 24 */	beq lbl_803DE360
/* 803DE340  7F C3 F3 78 */	mr r3, r30
/* 803DE344  4B FF B3 2D */	bl mPlib_get_player_actor_main_index
/* 803DE348  2C 03 00 5E */	cmpwi r3, 0x5e
/* 803DE34C  41 82 00 14 */	beq lbl_803DE360
/* 803DE350  7F C3 F3 78 */	mr r3, r30
/* 803DE354  4B FF B3 1D */	bl mPlib_get_player_actor_main_index
/* 803DE358  2C 03 00 5F */	cmpwi r3, 0x5f
/* 803DE35C  40 82 00 08 */	bne lbl_803DE364
lbl_803DE360:
/* 803DE360  3B E0 00 01 */	li r31, 1
lbl_803DE364:
/* 803DE364  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DE368  7F E3 FB 78 */	mr r3, r31
/* 803DE36C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DE370  83 C1 00 08 */	lwz r30, 8(r1)
/* 803DE374  7C 08 03 A6 */	mtlr r0
/* 803DE378  38 21 00 10 */	addi r1, r1, 0x10
/* 803DE37C  4E 80 00 20 */	blr 
