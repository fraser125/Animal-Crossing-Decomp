lbl_804F7C30:
/* 804F7C30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F7C34  7C 08 02 A6 */	mflr r0
/* 804F7C38  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F7C3C  39 61 00 20 */	addi r11, r1, 0x20
/* 804F7C40  4B BA 32 95 */	bl func_8009AED4
/* 804F7C44  7C 7D 1B 78 */	mr r29, r3
/* 804F7C48  7C 9E 23 78 */	mr r30, r4
/* 804F7C4C  4B FF F7 D1 */	bl Player_actor_Movement_Dig_scoop
/* 804F7C50  7F A3 EB 78 */	mr r3, r29
/* 804F7C54  7F C4 F3 78 */	mr r4, r30
/* 804F7C58  4B FE 02 A5 */	bl Player_actor_Reinput_force_position_angle
/* 804F7C5C  7F A3 EB 78 */	mr r3, r29
/* 804F7C60  38 81 00 08 */	addi r4, r1, 8
/* 804F7C64  4B FF F7 F1 */	bl Player_actor_CulcAnimation_Dig_scoop
/* 804F7C68  C0 21 00 08 */	lfs f1, 8(r1)
/* 804F7C6C  7C 7F 1B 78 */	mr r31, r3
/* 804F7C70  7F A3 EB 78 */	mr r3, r29
/* 804F7C74  7F C4 F3 78 */	mr r4, r30
/* 804F7C78  4B FF FC 75 */	bl Player_actor_SearchAnimation_Dig_scoop
/* 804F7C7C  7F A3 EB 78 */	mr r3, r29
/* 804F7C80  4B FD D8 C5 */	bl Player_actor_set_tex_anime_pattern
/* 804F7C84  7F A3 EB 78 */	mr r3, r29
/* 804F7C88  7F C4 F3 78 */	mr r4, r30
/* 804F7C8C  4B FF FC D9 */	bl Player_actor_ObjCheck_Dig_scoop
/* 804F7C90  7F A3 EB 78 */	mr r3, r29
/* 804F7C94  4B FF FC F1 */	bl Player_actor_BGcheck_Dig_scoop
/* 804F7C98  7F A3 EB 78 */	mr r3, r29
/* 804F7C9C  4B FF FE 21 */	bl Player_actor_lean_angle_Dig_scoop
/* 804F7CA0  7F A3 EB 78 */	mr r3, r29
/* 804F7CA4  7F C4 F3 78 */	mr r4, r30
/* 804F7CA8  4B FE C0 51 */	bl Player_actor_Item_main
/* 804F7CAC  7F A3 EB 78 */	mr r3, r29
/* 804F7CB0  7F C4 F3 78 */	mr r4, r30
/* 804F7CB4  7F E5 FB 78 */	mr r5, r31
/* 804F7CB8  4B FF FE 31 */	bl Player_actor_request_proc_index_fromDig_scoop
/* 804F7CBC  39 61 00 20 */	addi r11, r1, 0x20
/* 804F7CC0  4B BA 32 61 */	bl func_8009AF20
/* 804F7CC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F7CC8  7C 08 03 A6 */	mtlr r0
/* 804F7CCC  38 21 00 20 */	addi r1, r1, 0x20
/* 804F7CD0  4E 80 00 20 */	blr 
