lbl_804FA7D8:
/* 804FA7D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FA7DC  7C 08 02 A6 */	mflr r0
/* 804FA7E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FA7E4  39 61 00 20 */	addi r11, r1, 0x20
/* 804FA7E8  4B BA 06 ED */	bl func_8009AED4
/* 804FA7EC  7C 7D 1B 78 */	mr r29, r3
/* 804FA7F0  7C 9E 23 78 */	mr r30, r4
/* 804FA7F4  4B FF F9 25 */	bl Player_actor_Movement_Get_scoop
/* 804FA7F8  7F A3 EB 78 */	mr r3, r29
/* 804FA7FC  7F C4 F3 78 */	mr r4, r30
/* 804FA800  4B FD D6 FD */	bl Player_actor_Reinput_force_position_angle
/* 804FA804  7F A3 EB 78 */	mr r3, r29
/* 804FA808  38 81 00 08 */	addi r4, r1, 8
/* 804FA80C  4B FF F9 E5 */	bl Player_actor_CulcAnimation_Get_scoop
/* 804FA810  C0 21 00 08 */	lfs f1, 8(r1)
/* 804FA814  7C 7F 1B 78 */	mr r31, r3
/* 804FA818  7F A3 EB 78 */	mr r3, r29
/* 804FA81C  7F C4 F3 78 */	mr r4, r30
/* 804FA820  4B FF FA 91 */	bl Player_actor_SearchAnimation_Get_scoop
/* 804FA824  7F A3 EB 78 */	mr r3, r29
/* 804FA828  7F E4 FB 78 */	mr r4, r31
/* 804FA82C  4B FF FA F5 */	bl Player_actor_set_eye_pattern_Get_scoop
/* 804FA830  7F A3 EB 78 */	mr r3, r29
/* 804FA834  7F C4 F3 78 */	mr r4, r30
/* 804FA838  4B FF FB 19 */	bl Player_actor_ObjCheck_Get_scoop
/* 804FA83C  7F A3 EB 78 */	mr r3, r29
/* 804FA840  4B FF FB 31 */	bl Player_actor_BGcheck_Get_scoop
/* 804FA844  7F A3 EB 78 */	mr r3, r29
/* 804FA848  4B FF FB 49 */	bl Player_actor_lean_angle_Get_scoop
/* 804FA84C  7F A3 EB 78 */	mr r3, r29
/* 804FA850  4B FF FE BD */	bl Player_actor_Set_Item_Get_scoop
/* 804FA854  7F A3 EB 78 */	mr r3, r29
/* 804FA858  7F E4 FB 78 */	mr r4, r31
/* 804FA85C  4B FF FD 1D */	bl Player_actor_MessageControl_Get_scoop
/* 804FA860  7C 60 1B 78 */	mr r0, r3
/* 804FA864  7F A3 EB 78 */	mr r3, r29
/* 804FA868  7C 1F 03 78 */	mr r31, r0
/* 804FA86C  7F C4 F3 78 */	mr r4, r30
/* 804FA870  4B FE 94 89 */	bl Player_actor_Item_main
/* 804FA874  7F A3 EB 78 */	mr r3, r29
/* 804FA878  7F C4 F3 78 */	mr r4, r30
/* 804FA87C  7F E5 FB 78 */	mr r5, r31
/* 804FA880  4B FF FE ED */	bl Player_actor_request_proc_index_fromGet_scoop
/* 804FA884  39 61 00 20 */	addi r11, r1, 0x20
/* 804FA888  4B BA 06 99 */	bl func_8009AF20
/* 804FA88C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FA890  7C 08 03 A6 */	mtlr r0
/* 804FA894  38 21 00 20 */	addi r1, r1, 0x20
/* 804FA898  4E 80 00 20 */	blr 
