lbl_804EB5B8:
/* 804EB5B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804EB5BC  7C 08 02 A6 */	mflr r0
/* 804EB5C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804EB5C4  39 61 00 20 */	addi r11, r1, 0x20
/* 804EB5C8  4B BA F9 0D */	bl func_8009AED4
/* 804EB5CC  7C 9E 23 78 */	mr r30, r4
/* 804EB5D0  7C 7D 1B 78 */	mr r29, r3
/* 804EB5D4  38 81 00 08 */	addi r4, r1, 8
/* 804EB5D8  4B FF FE 91 */	bl Player_actor_CulcAnimation_Open_furniture
/* 804EB5DC  7C 60 1B 78 */	mr r0, r3
/* 804EB5E0  7F A3 EB 78 */	mr r3, r29
/* 804EB5E4  7C 1F 03 78 */	mr r31, r0
/* 804EB5E8  4B FF FE A1 */	bl Player_actor_Movement_Open_furniture
/* 804EB5EC  7F A3 EB 78 */	mr r3, r29
/* 804EB5F0  7F C4 F3 78 */	mr r4, r30
/* 804EB5F4  4B FE C9 09 */	bl Player_actor_Reinput_force_position_angle
/* 804EB5F8  C0 21 00 08 */	lfs f1, 8(r1)
/* 804EB5FC  7F A3 EB 78 */	mr r3, r29
/* 804EB600  7F C4 F3 78 */	mr r4, r30
/* 804EB604  4B FF FE D1 */	bl Player_actor_SearchAnimation_Open_furniture
/* 804EB608  7F A3 EB 78 */	mr r3, r29
/* 804EB60C  4B FE BA E9 */	bl Player_actor_recover_lean_angle
/* 804EB610  7F A3 EB 78 */	mr r3, r29
/* 804EB614  4B FE 9E 05 */	bl Player_actor_set_eye_pattern_normal
/* 804EB618  7F A3 EB 78 */	mr r3, r29
/* 804EB61C  7F C4 F3 78 */	mr r4, r30
/* 804EB620  4B FF FF 09 */	bl Player_actor_ObjCheck_Open_furniture
/* 804EB624  7F A3 EB 78 */	mr r3, r29
/* 804EB628  4B FF FF 21 */	bl Player_actor_BGcheck_Open_furniture
/* 804EB62C  7F A3 EB 78 */	mr r3, r29
/* 804EB630  7F C4 F3 78 */	mr r4, r30
/* 804EB634  4B FF 86 C5 */	bl Player_actor_Item_main
/* 804EB638  7F A3 EB 78 */	mr r3, r29
/* 804EB63C  7F C4 F3 78 */	mr r4, r30
/* 804EB640  7F E5 FB 78 */	mr r5, r31
/* 804EB644  4B FF FF 25 */	bl Player_actor_request_proc_index_fromOpen_furniture
/* 804EB648  39 61 00 20 */	addi r11, r1, 0x20
/* 804EB64C  4B BA F8 D5 */	bl func_8009AF20
/* 804EB650  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804EB654  7C 08 03 A6 */	mtlr r0
/* 804EB658  38 21 00 20 */	addi r1, r1, 0x20
/* 804EB65C  4E 80 00 20 */	blr 
