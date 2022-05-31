lbl_80486914:
/* 80486914  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80486918  7C 08 02 A6 */	mflr r0
/* 8048691C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80486920  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80486924  3B E0 00 00 */	li r31, 0
/* 80486928  93 C1 00 08 */	stw r30, 8(r1)
/* 8048692C  7C 7E 1B 78 */	mr r30, r3
/* 80486930  80 03 01 B8 */	lwz r0, 0x1b8(r3)
/* 80486934  2C 00 00 00 */	cmpwi r0, 0
/* 80486938  40 82 00 0C */	bne lbl_80486944
/* 8048693C  4B FF FB 45 */	bl aQMgr_check_npc_hand_item
/* 80486940  90 7E 01 B8 */	stw r3, 0x1b8(r30)
lbl_80486944:
/* 80486944  4B F3 8D 65 */	bl func_803BF6A8
/* 80486948  4B F3 A3 F9 */	bl mMsg_Set_LockContinue
/* 8048694C  80 1E 01 B8 */	lwz r0, 0x1b8(r30)
/* 80486950  2C 00 00 01 */	cmpwi r0, 1
/* 80486954  40 82 00 30 */	bne lbl_80486984
/* 80486958  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8048695C  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 80486960  80 63 00 00 */	lwz r3, 0(r3)
/* 80486964  4B F5 79 2D */	bl mPlib_check_player_actor_main_index_RecieveMove
/* 80486968  2C 03 00 00 */	cmpwi r3, 0
/* 8048696C  40 82 00 18 */	bne lbl_80486984
/* 80486970  4B F3 8D 39 */	bl func_803BF6A8
/* 80486974  4B F3 A3 D9 */	bl mMsg_Unset_LockContinue
/* 80486978  38 00 00 00 */	li r0, 0
/* 8048697C  3B E0 00 01 */	li r31, 1
/* 80486980  90 1E 01 B8 */	stw r0, 0x1b8(r30)
lbl_80486984:
/* 80486984  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80486988  7F E3 FB 78 */	mr r3, r31
/* 8048698C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80486990  83 C1 00 08 */	lwz r30, 8(r1)
/* 80486994  7C 08 03 A6 */	mtlr r0
/* 80486998  38 21 00 10 */	addi r1, r1, 0x10
/* 8048699C  4E 80 00 20 */	blr 
