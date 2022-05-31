lbl_803DE5A8:
/* 803DE5A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DE5AC  7C 08 02 A6 */	mflr r0
/* 803DE5B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DE5B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DE5B8  3B E0 00 00 */	li r31, 0
/* 803DE5BC  93 C1 00 08 */	stw r30, 8(r1)
/* 803DE5C0  7C 7E 1B 78 */	mr r30, r3
/* 803DE5C4  4B FF B0 AD */	bl mPlib_get_player_actor_main_index
/* 803DE5C8  2C 03 00 37 */	cmpwi r3, 0x37
/* 803DE5CC  41 82 00 24 */	beq lbl_803DE5F0
/* 803DE5D0  7F C3 F3 78 */	mr r3, r30
/* 803DE5D4  4B FF B0 9D */	bl mPlib_get_player_actor_main_index
/* 803DE5D8  2C 03 00 38 */	cmpwi r3, 0x38
/* 803DE5DC  41 82 00 14 */	beq lbl_803DE5F0
/* 803DE5E0  7F C3 F3 78 */	mr r3, r30
/* 803DE5E4  4B FF B0 8D */	bl mPlib_get_player_actor_main_index
/* 803DE5E8  2C 03 00 39 */	cmpwi r3, 0x39
/* 803DE5EC  40 82 00 08 */	bne lbl_803DE5F4
lbl_803DE5F0:
/* 803DE5F0  3B E0 00 01 */	li r31, 1
lbl_803DE5F4:
/* 803DE5F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DE5F8  7F E3 FB 78 */	mr r3, r31
/* 803DE5FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DE600  83 C1 00 08 */	lwz r30, 8(r1)
/* 803DE604  7C 08 03 A6 */	mtlr r0
/* 803DE608  38 21 00 10 */	addi r1, r1, 0x10
/* 803DE60C  4E 80 00 20 */	blr 
