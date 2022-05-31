lbl_80505A40:
/* 80505A40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80505A44  7C 08 02 A6 */	mflr r0
/* 80505A48  90 01 00 24 */	stw r0, 0x24(r1)
/* 80505A4C  39 61 00 20 */	addi r11, r1, 0x20
/* 80505A50  4B B9 54 85 */	bl func_8009AED4
/* 80505A54  7C 7D 1B 78 */	mr r29, r3
/* 80505A58  7C 9E 23 78 */	mr r30, r4
/* 80505A5C  4B FF FF 21 */	bl Player_actor_Movement_Stung_mosquito
/* 80505A60  7F A3 EB 78 */	mr r3, r29
/* 80505A64  7F C4 F3 78 */	mr r4, r30
/* 80505A68  4B FD 24 95 */	bl Player_actor_Reinput_force_position_angle
/* 80505A6C  7F A3 EB 78 */	mr r3, r29
/* 80505A70  4B FF FF 35 */	bl Player_actor_CulcAnimation_Stung_mosquito
/* 80505A74  7C 60 1B 78 */	mr r0, r3
/* 80505A78  7F A3 EB 78 */	mr r3, r29
/* 80505A7C  7C 1F 03 78 */	mr r31, r0
/* 80505A80  4B FD 16 75 */	bl Player_actor_recover_lean_angle
/* 80505A84  7F A3 EB 78 */	mr r3, r29
/* 80505A88  4B FC FA BD */	bl Player_actor_set_tex_anime_pattern
/* 80505A8C  7F A3 EB 78 */	mr r3, r29
/* 80505A90  7F C4 F3 78 */	mr r4, r30
/* 80505A94  4B FF FF 35 */	bl Player_actor_ObjCheck_Stung_mosquito
/* 80505A98  7F A3 EB 78 */	mr r3, r29
/* 80505A9C  4B FF FF 4D */	bl Player_actor_BGcheck_Stung_mosquito
/* 80505AA0  7F A3 EB 78 */	mr r3, r29
/* 80505AA4  7F C4 F3 78 */	mr r4, r30
/* 80505AA8  4B FD E2 51 */	bl Player_actor_Item_main
/* 80505AAC  7F A3 EB 78 */	mr r3, r29
/* 80505AB0  7F C4 F3 78 */	mr r4, r30
/* 80505AB4  7F E5 FB 78 */	mr r5, r31
/* 80505AB8  4B FF FF 51 */	bl Player_actor_request_proc_index_fromStung_mosquito
/* 80505ABC  39 61 00 20 */	addi r11, r1, 0x20
/* 80505AC0  4B B9 54 61 */	bl func_8009AF20
/* 80505AC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80505AC8  7C 08 03 A6 */	mtlr r0
/* 80505ACC  38 21 00 20 */	addi r1, r1, 0x20
/* 80505AD0  4E 80 00 20 */	blr 
