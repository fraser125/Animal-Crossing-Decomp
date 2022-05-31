lbl_804FD12C:
/* 804FD12C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FD130  7C 08 02 A6 */	mflr r0
/* 804FD134  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FD138  39 61 00 20 */	addi r11, r1, 0x20
/* 804FD13C  4B B9 DD 95 */	bl func_8009AED0
/* 804FD140  7C 7C 1B 78 */	mr r28, r3
/* 804FD144  7C 9D 23 78 */	mr r29, r4
/* 804FD148  4B FD A1 41 */	bl Player_actor_RecieveDemoOrder_EffectOrder
/* 804FD14C  7C 60 1B 78 */	mr r0, r3
/* 804FD150  7F 83 E3 78 */	mr r3, r28
/* 804FD154  7C 1F 03 78 */	mr r31, r0
/* 804FD158  4B FF FD B1 */	bl Player_actor_Movement_Demo_wait
/* 804FD15C  7F 83 E3 78 */	mr r3, r28
/* 804FD160  7F A4 EB 78 */	mr r4, r29
/* 804FD164  4B FD AD 99 */	bl Player_actor_Reinput_force_position_angle
/* 804FD168  7F 83 E3 78 */	mr r3, r28
/* 804FD16C  38 81 00 08 */	addi r4, r1, 8
/* 804FD170  4B FF FE 95 */	bl Player_actor_CulcAnimation_Demo_wait
/* 804FD174  C0 21 00 08 */	lfs f1, 8(r1)
/* 804FD178  7C 7E 1B 78 */	mr r30, r3
/* 804FD17C  7F 83 E3 78 */	mr r3, r28
/* 804FD180  4B FF FE A5 */	bl Player_actor_SearchAnimation_Demo_wait
/* 804FD184  7F 83 E3 78 */	mr r3, r28
/* 804FD188  7F A4 EB 78 */	mr r4, r29
/* 804FD18C  7F E5 FB 78 */	mr r5, r31
/* 804FD190  7F C6 F3 78 */	mr r6, r30
/* 804FD194  4B FF FE D1 */	bl Player_actor_ChangeAnimation_FromDemoOrder_Demo_wait
/* 804FD198  7F 83 E3 78 */	mr r3, r28
/* 804FD19C  7F A4 EB 78 */	mr r4, r29
/* 804FD1A0  7F E5 FB 78 */	mr r5, r31
/* 804FD1A4  4B FF FE E5 */	bl Player_actor_SetEffect_FromDemoOrder_Demo_wait
/* 804FD1A8  7F 83 E3 78 */	mr r3, r28
/* 804FD1AC  4B FD 9F 49 */	bl Player_actor_recover_lean_angle
/* 804FD1B0  7F 83 E3 78 */	mr r3, r28
/* 804FD1B4  4B FD 82 65 */	bl Player_actor_set_eye_pattern_normal
/* 804FD1B8  7F 83 E3 78 */	mr r3, r28
/* 804FD1BC  7F A4 EB 78 */	mr r4, r29
/* 804FD1C0  4B FF FE E9 */	bl Player_actor_ObjCheck_Demo_wait
/* 804FD1C4  7F 83 E3 78 */	mr r3, r28
/* 804FD1C8  4B FE 8C B5 */	bl Player_actor_BGcheck_Wait
/* 804FD1CC  7F 83 E3 78 */	mr r3, r28
/* 804FD1D0  7F A4 EB 78 */	mr r4, r29
/* 804FD1D4  4B FE 6B 25 */	bl Player_actor_Item_main
/* 804FD1D8  7F A3 EB 78 */	mr r3, r29
/* 804FD1DC  4B FF FE ED */	bl Player_actor_request_proc_index_fromDemo_wait
/* 804FD1E0  39 61 00 20 */	addi r11, r1, 0x20
/* 804FD1E4  4B B9 DD 39 */	bl func_8009AF1C
/* 804FD1E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FD1EC  7C 08 03 A6 */	mtlr r0
/* 804FD1F0  38 21 00 20 */	addi r1, r1, 0x20
/* 804FD1F4  4E 80 00 20 */	blr 
