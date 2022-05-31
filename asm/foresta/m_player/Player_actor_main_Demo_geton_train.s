lbl_804FDCB8:
/* 804FDCB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FDCBC  7C 08 02 A6 */	mflr r0
/* 804FDCC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FDCC4  39 61 00 20 */	addi r11, r1, 0x20
/* 804FDCC8  4B B9 D2 0D */	bl func_8009AED4
/* 804FDCCC  7C 9E 23 78 */	mr r30, r4
/* 804FDCD0  7C 7D 1B 78 */	mr r29, r3
/* 804FDCD4  38 81 00 08 */	addi r4, r1, 8
/* 804FDCD8  4B FF FE E1 */	bl Player_actor_CulcAnimation_Demo_geton_train
/* 804FDCDC  7C 60 1B 78 */	mr r0, r3
/* 804FDCE0  7F A3 EB 78 */	mr r3, r29
/* 804FDCE4  7C 1F 03 78 */	mr r31, r0
/* 804FDCE8  4B FF FF 45 */	bl Player_actor_Movement_Demo_geton_train
/* 804FDCEC  7F A3 EB 78 */	mr r3, r29
/* 804FDCF0  7F C4 F3 78 */	mr r4, r30
/* 804FDCF4  4B FD A2 09 */	bl Player_actor_Reinput_force_position_angle
/* 804FDCF8  C0 21 00 08 */	lfs f1, 8(r1)
/* 804FDCFC  7F A3 EB 78 */	mr r3, r29
/* 804FDD00  7F C4 F3 78 */	mr r4, r30
/* 804FDD04  4B FF FE D5 */	bl Player_actor_SearchAnimation_Demo_geton_train
/* 804FDD08  7F A3 EB 78 */	mr r3, r29
/* 804FDD0C  4B FD 93 E9 */	bl Player_actor_recover_lean_angle
/* 804FDD10  7F A3 EB 78 */	mr r3, r29
/* 804FDD14  4B FD 77 05 */	bl Player_actor_set_eye_pattern_normal
/* 804FDD18  7F A3 EB 78 */	mr r3, r29
/* 804FDD1C  7F C4 F3 78 */	mr r4, r30
/* 804FDD20  4B FE 5F D9 */	bl Player_actor_Item_main
/* 804FDD24  7F A3 EB 78 */	mr r3, r29
/* 804FDD28  7F C4 F3 78 */	mr r4, r30
/* 804FDD2C  7F E5 FB 78 */	mr r5, r31
/* 804FDD30  4B FF FF 49 */	bl Player_actor_request_proc_index_fromDemo_geton_train
/* 804FDD34  39 61 00 20 */	addi r11, r1, 0x20
/* 804FDD38  4B B9 D1 E9 */	bl func_8009AF20
/* 804FDD3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FDD40  7C 08 03 A6 */	mtlr r0
/* 804FDD44  38 21 00 20 */	addi r1, r1, 0x20
/* 804FDD48  4E 80 00 20 */	blr 
