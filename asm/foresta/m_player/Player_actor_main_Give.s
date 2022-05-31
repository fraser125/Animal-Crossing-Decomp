lbl_804FBF34:
/* 804FBF34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FBF38  7C 08 02 A6 */	mflr r0
/* 804FBF3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FBF40  39 61 00 20 */	addi r11, r1, 0x20
/* 804FBF44  4B B9 EF 91 */	bl func_8009AED4
/* 804FBF48  7C 7D 1B 78 */	mr r29, r3
/* 804FBF4C  7C 9E 23 78 */	mr r30, r4
/* 804FBF50  4B FF FF 11 */	bl Player_actor_Movement_Give
/* 804FBF54  7F A3 EB 78 */	mr r3, r29
/* 804FBF58  7F C4 F3 78 */	mr r4, r30
/* 804FBF5C  4B FD BF A1 */	bl Player_actor_Reinput_force_position_angle
/* 804FBF60  7F A3 EB 78 */	mr r3, r29
/* 804FBF64  4B FF FF 21 */	bl Player_actor_CulcAnimation_Give
/* 804FBF68  7C 60 1B 78 */	mr r0, r3
/* 804FBF6C  7F A3 EB 78 */	mr r3, r29
/* 804FBF70  7C 1F 03 78 */	mr r31, r0
/* 804FBF74  4B FD B1 81 */	bl Player_actor_recover_lean_angle
/* 804FBF78  7F A3 EB 78 */	mr r3, r29
/* 804FBF7C  4B FD 94 9D */	bl Player_actor_set_eye_pattern_normal
/* 804FBF80  7F A3 EB 78 */	mr r3, r29
/* 804FBF84  7F C4 F3 78 */	mr r4, r30
/* 804FBF88  4B FF FF 21 */	bl Player_actor_ObjCheck_Give
/* 804FBF8C  7F A3 EB 78 */	mr r3, r29
/* 804FBF90  4B FE 9E ED */	bl Player_actor_BGcheck_Wait
/* 804FBF94  7F A3 EB 78 */	mr r3, r29
/* 804FBF98  4B FD B6 FD */	bl Player_actor_Set_item_matrix_set
/* 804FBF9C  7F A3 EB 78 */	mr r3, r29
/* 804FBFA0  7F C4 F3 78 */	mr r4, r30
/* 804FBFA4  4B FE 7D 55 */	bl Player_actor_Item_main
/* 804FBFA8  7F A3 EB 78 */	mr r3, r29
/* 804FBFAC  7F C4 F3 78 */	mr r4, r30
/* 804FBFB0  7F E5 FB 78 */	mr r5, r31
/* 804FBFB4  4B FF FF 15 */	bl Player_actor_request_proc_index_fromGive
/* 804FBFB8  39 61 00 20 */	addi r11, r1, 0x20
/* 804FBFBC  4B B9 EF 65 */	bl func_8009AF20
/* 804FBFC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FBFC4  7C 08 03 A6 */	mtlr r0
/* 804FBFC8  38 21 00 20 */	addi r1, r1, 0x20
/* 804FBFCC  4E 80 00 20 */	blr 
