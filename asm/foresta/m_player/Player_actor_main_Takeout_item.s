lbl_804FC7EC:
/* 804FC7EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FC7F0  7C 08 02 A6 */	mflr r0
/* 804FC7F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FC7F8  39 61 00 20 */	addi r11, r1, 0x20
/* 804FC7FC  4B B9 E6 D9 */	bl func_8009AED4
/* 804FC800  7C 7D 1B 78 */	mr r29, r3
/* 804FC804  7C 9E 23 78 */	mr r30, r4
/* 804FC808  4B FF FD 65 */	bl Player_actor_Movement_Takeout_item
/* 804FC80C  7F A3 EB 78 */	mr r3, r29
/* 804FC810  38 81 00 08 */	addi r4, r1, 8
/* 804FC814  4B FF FD 81 */	bl Player_actor_CulcAnimation_Takeout_item
/* 804FC818  7C 60 1B 78 */	mr r0, r3
/* 804FC81C  7F A3 EB 78 */	mr r3, r29
/* 804FC820  7C 1F 03 78 */	mr r31, r0
/* 804FC824  7F C4 F3 78 */	mr r4, r30
/* 804FC828  4B FD B6 D5 */	bl Player_actor_Reinput_force_position_angle
/* 804FC82C  7F A3 EB 78 */	mr r3, r29
/* 804FC830  7F C4 F3 78 */	mr r4, r30
/* 804FC834  4B FF FE 15 */	bl Player_actor_SearchTimer_Takeout_item
/* 804FC838  C0 21 00 08 */	lfs f1, 8(r1)
/* 804FC83C  7F A3 EB 78 */	mr r3, r29
/* 804FC840  7F C4 F3 78 */	mr r4, r30
/* 804FC844  4B FF FD 91 */	bl Player_actor_SearchAnimation_Takeout_item
/* 804FC848  7F A3 EB 78 */	mr r3, r29
/* 804FC84C  4B FD A8 A9 */	bl Player_actor_recover_lean_angle
/* 804FC850  7F A3 EB 78 */	mr r3, r29
/* 804FC854  4B FD 8B C5 */	bl Player_actor_set_eye_pattern_normal
/* 804FC858  7F A3 EB 78 */	mr r3, r29
/* 804FC85C  7F C4 F3 78 */	mr r4, r30
/* 804FC860  4B FF FD 55 */	bl Player_actor_ObjCheck_Takeout_item
/* 804FC864  7F A3 EB 78 */	mr r3, r29
/* 804FC868  4B FF FD C1 */	bl Player_actor_BGcheck_Takeout_item
/* 804FC86C  7F A3 EB 78 */	mr r3, r29
/* 804FC870  7F C4 F3 78 */	mr r4, r30
/* 804FC874  4B FE 74 85 */	bl Player_actor_Item_main
/* 804FC878  7F A3 EB 78 */	mr r3, r29
/* 804FC87C  7F C4 F3 78 */	mr r4, r30
/* 804FC880  7F E5 FB 78 */	mr r5, r31
/* 804FC884  4B FF FE BD */	bl Player_actor_request_proc_index_fromTakeout_item
/* 804FC888  39 61 00 20 */	addi r11, r1, 0x20
/* 804FC88C  4B B9 E6 95 */	bl func_8009AF20
/* 804FC890  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FC894  7C 08 03 A6 */	mtlr r0
/* 804FC898  38 21 00 20 */	addi r1, r1, 0x20
/* 804FC89C  4E 80 00 20 */	blr 
