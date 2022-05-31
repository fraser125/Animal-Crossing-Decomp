lbl_80502D88:
/* 80502D88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80502D8C  7C 08 02 A6 */	mflr r0
/* 80502D90  90 01 00 24 */	stw r0, 0x24(r1)
/* 80502D94  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80502D98  7C 9F 23 78 */	mr r31, r4
/* 80502D9C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80502DA0  7C 7E 1B 78 */	mr r30, r3
/* 80502DA4  4B FF FD 1D */	bl Player_actor_Movement_Stung_bee
/* 80502DA8  7F C3 F3 78 */	mr r3, r30
/* 80502DAC  7F E4 FB 78 */	mr r4, r31
/* 80502DB0  4B FD 51 4D */	bl Player_actor_Reinput_force_position_angle
/* 80502DB4  7F C3 F3 78 */	mr r3, r30
/* 80502DB8  38 81 00 08 */	addi r4, r1, 8
/* 80502DBC  4B FF FD D5 */	bl Player_actor_CulcAnimation_Stung_bee
/* 80502DC0  7C 60 1B 78 */	mr r0, r3
/* 80502DC4  7F C3 F3 78 */	mr r3, r30
/* 80502DC8  7C 05 03 78 */	mr r5, r0
/* 80502DCC  7F E4 FB 78 */	mr r4, r31
/* 80502DD0  4B FF FD E1 */	bl Player_actor_ChangeAnimation_Stung_bee
/* 80502DD4  C0 21 00 08 */	lfs f1, 8(r1)
/* 80502DD8  7F C3 F3 78 */	mr r3, r30
/* 80502DDC  7F E4 FB 78 */	mr r4, r31
/* 80502DE0  4B FF FE 6D */	bl Player_actor_SearchAnimation_Stung_bee
/* 80502DE4  7F C3 F3 78 */	mr r3, r30
/* 80502DE8  4B FD 43 0D */	bl Player_actor_recover_lean_angle
/* 80502DEC  7F C3 F3 78 */	mr r3, r30
/* 80502DF0  4B FF FE E9 */	bl Player_actor_set_tex_anime_Stung_bee
/* 80502DF4  7F C3 F3 78 */	mr r3, r30
/* 80502DF8  7F E4 FB 78 */	mr r4, r31
/* 80502DFC  4B FF FE FD */	bl Player_actor_ObjCheck_Stung_bee
/* 80502E00  7F C3 F3 78 */	mr r3, r30
/* 80502E04  4B FF FF 15 */	bl Player_actor_BGcheck_Stung_bee
/* 80502E08  7F C3 F3 78 */	mr r3, r30
/* 80502E0C  7F E4 FB 78 */	mr r4, r31
/* 80502E10  4B FE 0E E9 */	bl Player_actor_Item_main
/* 80502E14  7F C3 F3 78 */	mr r3, r30
/* 80502E18  7F E4 FB 78 */	mr r4, r31
/* 80502E1C  4B FF FF 1D */	bl Player_actor_request_proc_index_fromStung_bee
/* 80502E20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80502E24  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80502E28  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80502E2C  7C 08 03 A6 */	mtlr r0
/* 80502E30  38 21 00 20 */	addi r1, r1, 0x20
/* 80502E34  4E 80 00 20 */	blr 
