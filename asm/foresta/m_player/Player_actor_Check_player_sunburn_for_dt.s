lbl_804DE9A4:
/* 804DE9A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DE9A8  7C 08 02 A6 */	mflr r0
/* 804DE9AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DE9B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DE9B4  7C 7F 1B 78 */	mr r31, r3
/* 804DE9B8  4B FF FA E5 */	bl Player_actor_Check_player_sunburn_ChangeDay
/* 804DE9BC  7F E3 FB 78 */	mr r3, r31
/* 804DE9C0  4B FF FB 61 */	bl Player_actor_Check_player_sunburn_rankdown_interval
/* 804DE9C4  7F E3 FB 78 */	mr r3, r31
/* 804DE9C8  4B FF FC 51 */	bl Player_actor_Check_player_sunburn_rankdown
/* 804DE9CC  7F E3 FB 78 */	mr r3, r31
/* 804DE9D0  4B FF FF 25 */	bl Player_actor_Set_player_sunburn_rankup
/* 804DE9D4  7F E3 FB 78 */	mr r3, r31
/* 804DE9D8  4B FF FE 55 */	bl Player_actor_Set_player_sunburn_rankdown
/* 804DE9DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DE9E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DE9E4  7C 08 03 A6 */	mtlr r0
/* 804DE9E8  38 21 00 10 */	addi r1, r1, 0x10
/* 804DE9EC  4E 80 00 20 */	blr 
