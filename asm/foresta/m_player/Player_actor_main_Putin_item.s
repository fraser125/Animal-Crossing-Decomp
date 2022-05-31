lbl_804FCC90:
/* 804FCC90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FCC94  7C 08 02 A6 */	mflr r0
/* 804FCC98  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FCC9C  39 61 00 20 */	addi r11, r1, 0x20
/* 804FCCA0  4B B9 E2 35 */	bl func_8009AED4
/* 804FCCA4  7C 7D 1B 78 */	mr r29, r3
/* 804FCCA8  7C 9E 23 78 */	mr r30, r4
/* 804FCCAC  4B FF FE 09 */	bl Player_actor_Movement_Putin_item
/* 804FCCB0  7F A3 EB 78 */	mr r3, r29
/* 804FCCB4  38 81 00 08 */	addi r4, r1, 8
/* 804FCCB8  4B FF FE 25 */	bl Player_actor_CulcAnimation_Putin_item
/* 804FCCBC  7C 60 1B 78 */	mr r0, r3
/* 804FCCC0  7F A3 EB 78 */	mr r3, r29
/* 804FCCC4  7C 1F 03 78 */	mr r31, r0
/* 804FCCC8  7F C4 F3 78 */	mr r4, r30
/* 804FCCCC  4B FD B2 31 */	bl Player_actor_Reinput_force_position_angle
/* 804FCCD0  7F A3 EB 78 */	mr r3, r29
/* 804FCCD4  4B FF FE 69 */	bl Player_actor_SetItemScale_Putin_item
/* 804FCCD8  C0 21 00 08 */	lfs f1, 8(r1)
/* 804FCCDC  7F A3 EB 78 */	mr r3, r29
/* 804FCCE0  7F C4 F3 78 */	mr r4, r30
/* 804FCCE4  4B FF FE F5 */	bl Player_actor_SearchAnimation_Putin_item
/* 804FCCE8  7F A3 EB 78 */	mr r3, r29
/* 804FCCEC  4B FD A4 09 */	bl Player_actor_recover_lean_angle
/* 804FCCF0  7F A3 EB 78 */	mr r3, r29
/* 804FCCF4  4B FD 87 25 */	bl Player_actor_set_eye_pattern_normal
/* 804FCCF8  7F A3 EB 78 */	mr r3, r29
/* 804FCCFC  7F C4 F3 78 */	mr r4, r30
/* 804FCD00  4B FF FD FD */	bl Player_actor_ObjCheck_Putin_item
/* 804FCD04  7F A3 EB 78 */	mr r3, r29
/* 804FCD08  4B FF FE 15 */	bl Player_actor_BGcheck_Putin_item
/* 804FCD0C  7F A3 EB 78 */	mr r3, r29
/* 804FCD10  7F C4 F3 78 */	mr r4, r30
/* 804FCD14  4B FE 6F E5 */	bl Player_actor_Item_main
/* 804FCD18  7F A3 EB 78 */	mr r3, r29
/* 804FCD1C  7F C4 F3 78 */	mr r4, r30
/* 804FCD20  7F E5 FB 78 */	mr r5, r31
/* 804FCD24  4B FF FF 09 */	bl Player_actor_request_proc_index_fromPutin_item
/* 804FCD28  39 61 00 20 */	addi r11, r1, 0x20
/* 804FCD2C  4B B9 E1 F5 */	bl func_8009AF20
/* 804FCD30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FCD34  7C 08 03 A6 */	mtlr r0
/* 804FCD38  38 21 00 20 */	addi r1, r1, 0x20
/* 804FCD3C  4E 80 00 20 */	blr 
