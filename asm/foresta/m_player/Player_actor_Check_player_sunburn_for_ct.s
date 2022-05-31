lbl_804DEA34:
/* 804DEA34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DEA38  7C 08 02 A6 */	mflr r0
/* 804DEA3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DEA40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DEA44  7C 7F 1B 78 */	mr r31, r3
/* 804DEA48  4B FF FA 55 */	bl Player_actor_Check_player_sunburn_ChangeDay
/* 804DEA4C  7F E3 FB 78 */	mr r3, r31
/* 804DEA50  4B FF FA D1 */	bl Player_actor_Check_player_sunburn_rankdown_interval
/* 804DEA54  7F E3 FB 78 */	mr r3, r31
/* 804DEA58  4B FF FB C1 */	bl Player_actor_Check_player_sunburn_rankdown
/* 804DEA5C  7F E3 FB 78 */	mr r3, r31
/* 804DEA60  4B FF FD CD */	bl Player_actor_Set_player_sunburn_rankdown
/* 804DEA64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DEA68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DEA6C  7C 08 03 A6 */	mtlr r0
/* 804DEA70  38 21 00 10 */	addi r1, r1, 0x10
/* 804DEA74  4E 80 00 20 */	blr 
