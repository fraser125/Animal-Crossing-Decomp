lbl_804F3CC4:
/* 804F3CC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F3CC8  7C 08 02 A6 */	mflr r0
/* 804F3CCC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F3CD0  39 61 00 20 */	addi r11, r1, 0x20
/* 804F3CD4  4B BA 71 FD */	bl func_8009AED0
/* 804F3CD8  7C 7C 1B 78 */	mr r28, r3
/* 804F3CDC  7C 9D 23 78 */	mr r29, r4
/* 804F3CE0  4B FF FB 45 */	bl Player_actor_Movement_Pull_net
/* 804F3CE4  7F 83 E3 78 */	mr r3, r28
/* 804F3CE8  7F A4 EB 78 */	mr r4, r29
/* 804F3CEC  4B FE 42 11 */	bl Player_actor_Reinput_force_position_angle
/* 804F3CF0  7F 83 E3 78 */	mr r3, r28
/* 804F3CF4  4B FF FC 0D */	bl Player_actor_CorrectSomething_Pull_net
/* 804F3CF8  7F 83 E3 78 */	mr r3, r28
/* 804F3CFC  38 81 00 08 */	addi r4, r1, 8
/* 804F3D00  4B FF FC 61 */	bl Player_actor_CulcAnimation_Pull_net
/* 804F3D04  C0 21 00 08 */	lfs f1, 8(r1)
/* 804F3D08  7C 7F 1B 78 */	mr r31, r3
/* 804F3D0C  7F 83 E3 78 */	mr r3, r28
/* 804F3D10  7F A4 EB 78 */	mr r4, r29
/* 804F3D14  4B FF FC AD */	bl Player_actor_SearchAnimation_Pull_net
/* 804F3D18  7F 83 E3 78 */	mr r3, r28
/* 804F3D1C  4B FE 33 D9 */	bl Player_actor_recover_lean_angle
/* 804F3D20  7F 83 E3 78 */	mr r3, r28
/* 804F3D24  4B FE 16 F5 */	bl Player_actor_set_eye_pattern_normal
/* 804F3D28  7F 83 E3 78 */	mr r3, r28
/* 804F3D2C  7F A4 EB 78 */	mr r4, r29
/* 804F3D30  4B FF FC 51 */	bl Player_actor_ObjCheck_Pull_net
/* 804F3D34  7F 83 E3 78 */	mr r3, r28
/* 804F3D38  4B FF FC 69 */	bl Player_actor_BGcheck_Pull_net
/* 804F3D3C  7F 83 E3 78 */	mr r3, r28
/* 804F3D40  4B FF FE A1 */	bl Player_actor_MessageControl_Pull_net
/* 804F3D44  7C 60 1B 78 */	mr r0, r3
/* 804F3D48  7F 83 E3 78 */	mr r3, r28
/* 804F3D4C  7C 1E 03 78 */	mr r30, r0
/* 804F3D50  7F A4 EB 78 */	mr r4, r29
/* 804F3D54  4B FE FF A5 */	bl Player_actor_Item_main
/* 804F3D58  7F 83 E3 78 */	mr r3, r28
/* 804F3D5C  7F A4 EB 78 */	mr r4, r29
/* 804F3D60  7F E5 FB 78 */	mr r5, r31
/* 804F3D64  7F C6 F3 78 */	mr r6, r30
/* 804F3D68  4B FF FF 1D */	bl Player_actor_request_proc_index_fromPull_net
/* 804F3D6C  39 61 00 20 */	addi r11, r1, 0x20
/* 804F3D70  4B BA 71 AD */	bl func_8009AF1C
/* 804F3D74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F3D78  7C 08 03 A6 */	mtlr r0
/* 804F3D7C  38 21 00 20 */	addi r1, r1, 0x20
/* 804F3D80  4E 80 00 20 */	blr 
