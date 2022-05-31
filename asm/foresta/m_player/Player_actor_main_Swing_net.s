lbl_804F35BC:
/* 804F35BC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804F35C0  7C 08 02 A6 */	mflr r0
/* 804F35C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 804F35C8  39 61 00 30 */	addi r11, r1, 0x30
/* 804F35CC  4B BA 79 01 */	bl func_8009AECC
/* 804F35D0  7C 7B 1B 78 */	mr r27, r3
/* 804F35D4  7C 9C 23 78 */	mr r28, r4
/* 804F35D8  38 A1 00 08 */	addi r5, r1, 8
/* 804F35DC  4B FF F6 D1 */	bl Player_actor_HitBGCheck_Swing_net
/* 804F35E0  7C 60 1B 78 */	mr r0, r3
/* 804F35E4  7F 63 DB 78 */	mr r3, r27
/* 804F35E8  7C 1E 03 78 */	mr r30, r0
/* 804F35EC  4B FF FD A5 */	bl Player_actor_CatchSomethingCheck_Swing_net
/* 804F35F0  7C 60 1B 78 */	mr r0, r3
/* 804F35F4  7F 63 DB 78 */	mr r3, r27
/* 804F35F8  7C 1D 03 78 */	mr r29, r0
/* 804F35FC  4B FF FD BD */	bl Player_actor_CorrectSomething_Swing_net
/* 804F3600  7F 63 DB 78 */	mr r3, r27
/* 804F3604  4B FF FD F9 */	bl Player_actor_Movement_Swing_net
/* 804F3608  7F 63 DB 78 */	mr r3, r27
/* 804F360C  7F 84 E3 78 */	mr r4, r28
/* 804F3610  4B FE 48 ED */	bl Player_actor_Reinput_force_position_angle
/* 804F3614  7F 63 DB 78 */	mr r3, r27
/* 804F3618  7F C5 F3 78 */	mr r5, r30
/* 804F361C  38 81 00 0C */	addi r4, r1, 0xc
/* 804F3620  4B FF FE 05 */	bl Player_actor_CulcAnimation_Swing_net
/* 804F3624  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 804F3628  7C 7F 1B 78 */	mr r31, r3
/* 804F362C  7F 63 DB 78 */	mr r3, r27
/* 804F3630  7F 84 E3 78 */	mr r4, r28
/* 804F3634  4B FF FE 3D */	bl Player_actor_SearchAnimation_Swing_net
/* 804F3638  7F 63 DB 78 */	mr r3, r27
/* 804F363C  4B FE 3A B9 */	bl Player_actor_recover_lean_angle
/* 804F3640  7F 63 DB 78 */	mr r3, r27
/* 804F3644  4B FE 1D D5 */	bl Player_actor_set_eye_pattern_normal
/* 804F3648  7F 63 DB 78 */	mr r3, r27
/* 804F364C  7F 84 E3 78 */	mr r4, r28
/* 804F3650  4B FF FE 75 */	bl Player_actor_ObjCheck_Swing_net
/* 804F3654  7F 63 DB 78 */	mr r3, r27
/* 804F3658  4B FF FE 8D */	bl Player_actor_BGcheck_Swing_net
/* 804F365C  7F 63 DB 78 */	mr r3, r27
/* 804F3660  7F 84 E3 78 */	mr r4, r28
/* 804F3664  4B FF 06 95 */	bl Player_actor_Item_main
/* 804F3668  81 01 00 08 */	lwz r8, 8(r1)
/* 804F366C  7F 63 DB 78 */	mr r3, r27
/* 804F3670  7F 84 E3 78 */	mr r4, r28
/* 804F3674  7F E5 FB 78 */	mr r5, r31
/* 804F3678  7F C6 F3 78 */	mr r6, r30
/* 804F367C  7F A7 EB 78 */	mr r7, r29
/* 804F3680  4B FF FE 85 */	bl Player_actor_request_proc_index_fromSwing_net
/* 804F3684  39 61 00 30 */	addi r11, r1, 0x30
/* 804F3688  4B BA 78 91 */	bl func_8009AF18
/* 804F368C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804F3690  7C 08 03 A6 */	mtlr r0
/* 804F3694  38 21 00 30 */	addi r1, r1, 0x30
/* 804F3698  4E 80 00 20 */	blr 
