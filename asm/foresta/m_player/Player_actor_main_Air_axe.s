lbl_804F09E8:
/* 804F09E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F09EC  7C 08 02 A6 */	mflr r0
/* 804F09F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F09F4  39 61 00 20 */	addi r11, r1, 0x20
/* 804F09F8  4B BA A4 DD */	bl func_8009AED4
/* 804F09FC  7C 7D 1B 78 */	mr r29, r3
/* 804F0A00  7C 9E 23 78 */	mr r30, r4
/* 804F0A04  4B FF FD A1 */	bl Player_actor_Movement_Air_axe
/* 804F0A08  7F A3 EB 78 */	mr r3, r29
/* 804F0A0C  7F C4 F3 78 */	mr r4, r30
/* 804F0A10  4B FE 74 ED */	bl Player_actor_Reinput_force_position_angle
/* 804F0A14  7F A3 EB 78 */	mr r3, r29
/* 804F0A18  38 81 00 08 */	addi r4, r1, 8
/* 804F0A1C  4B FF FD B1 */	bl Player_actor_CulcAnimation_Air_axe
/* 804F0A20  C0 21 00 08 */	lfs f1, 8(r1)
/* 804F0A24  7C 7F 1B 78 */	mr r31, r3
/* 804F0A28  7F A3 EB 78 */	mr r3, r29
/* 804F0A2C  7F C4 F3 78 */	mr r4, r30
/* 804F0A30  4B FF FE 01 */	bl Player_actor_SearchAnimation_Air_axe
/* 804F0A34  7F A3 EB 78 */	mr r3, r29
/* 804F0A38  4B FE 66 BD */	bl Player_actor_recover_lean_angle
/* 804F0A3C  7F A3 EB 78 */	mr r3, r29
/* 804F0A40  4B FE 4B 05 */	bl Player_actor_set_tex_anime_pattern
/* 804F0A44  7F A3 EB 78 */	mr r3, r29
/* 804F0A48  7F C4 F3 78 */	mr r4, r30
/* 804F0A4C  4B FF FE 4D */	bl Player_actor_ObjCheck_Air_axe
/* 804F0A50  7F A3 EB 78 */	mr r3, r29
/* 804F0A54  4B FF FE 65 */	bl Player_actor_BGcheck_Air_axe
/* 804F0A58  7F A3 EB 78 */	mr r3, r29
/* 804F0A5C  7F C4 F3 78 */	mr r4, r30
/* 804F0A60  4B FF 32 99 */	bl Player_actor_Item_main
/* 804F0A64  7F A3 EB 78 */	mr r3, r29
/* 804F0A68  7F C4 F3 78 */	mr r4, r30
/* 804F0A6C  7F E5 FB 78 */	mr r5, r31
/* 804F0A70  4B FF FE 69 */	bl Player_actor_request_proc_index_fromAir_axe
/* 804F0A74  39 61 00 20 */	addi r11, r1, 0x20
/* 804F0A78  4B BA A4 A9 */	bl func_8009AF20
/* 804F0A7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F0A80  7C 08 03 A6 */	mtlr r0
/* 804F0A84  38 21 00 20 */	addi r1, r1, 0x20
/* 804F0A88  4E 80 00 20 */	blr 
