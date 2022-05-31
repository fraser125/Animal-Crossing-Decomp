lbl_804DE9F0:
/* 804DE9F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DE9F4  7C 08 02 A6 */	mflr r0
/* 804DE9F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DE9FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DEA00  7C 7F 1B 78 */	mr r31, r3
/* 804DEA04  4B FF FA 99 */	bl Player_actor_Check_player_sunburn_ChangeDay
/* 804DEA08  7F E3 FB 78 */	mr r3, r31
/* 804DEA0C  4B FF FB 15 */	bl Player_actor_Check_player_sunburn_rankdown_interval
/* 804DEA10  7F E3 FB 78 */	mr r3, r31
/* 804DEA14  4B FF FC 05 */	bl Player_actor_Check_player_sunburn_rankdown
/* 804DEA18  7F E3 FB 78 */	mr r3, r31
/* 804DEA1C  4B FF FC A1 */	bl Player_actor_Check_player_sunburn_rankup
/* 804DEA20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DEA24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DEA28  7C 08 03 A6 */	mtlr r0
/* 804DEA2C  38 21 00 10 */	addi r1, r1, 0x10
/* 804DEA30  4E 80 00 20 */	blr 
