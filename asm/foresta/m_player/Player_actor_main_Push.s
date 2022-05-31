lbl_804EA8B8:
/* 804EA8B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804EA8BC  7C 08 02 A6 */	mflr r0
/* 804EA8C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804EA8C4  39 61 00 20 */	addi r11, r1, 0x20
/* 804EA8C8  4B BB 06 0D */	bl func_8009AED4
/* 804EA8CC  7C 9E 23 78 */	mr r30, r4
/* 804EA8D0  7C 7D 1B 78 */	mr r29, r3
/* 804EA8D4  38 81 00 08 */	addi r4, r1, 8
/* 804EA8D8  4B FF FE 75 */	bl Player_actor_CulcAnimation_Push
/* 804EA8DC  7C 60 1B 78 */	mr r0, r3
/* 804EA8E0  7F A3 EB 78 */	mr r3, r29
/* 804EA8E4  7C 1F 03 78 */	mr r31, r0
/* 804EA8E8  4B FF FE 85 */	bl Player_actor_Movement_Push
/* 804EA8EC  7F A3 EB 78 */	mr r3, r29
/* 804EA8F0  7F C4 F3 78 */	mr r4, r30
/* 804EA8F4  4B FE D6 09 */	bl Player_actor_Reinput_force_position_angle
/* 804EA8F8  C0 21 00 08 */	lfs f1, 8(r1)
/* 804EA8FC  7F A3 EB 78 */	mr r3, r29
/* 804EA900  7F C4 F3 78 */	mr r4, r30
/* 804EA904  4B FF FE B1 */	bl Player_actor_SearchAnimation_Push
/* 804EA908  7F A3 EB 78 */	mr r3, r29
/* 804EA90C  4B FE C7 E9 */	bl Player_actor_recover_lean_angle
/* 804EA910  7F A3 EB 78 */	mr r3, r29
/* 804EA914  4B FE AB 05 */	bl Player_actor_set_eye_pattern_normal
/* 804EA918  7F A3 EB 78 */	mr r3, r29
/* 804EA91C  7F C4 F3 78 */	mr r4, r30
/* 804EA920  4B FF FE E9 */	bl Player_actor_ObjCheck_Push
/* 804EA924  7F A3 EB 78 */	mr r3, r29
/* 804EA928  4B FF FF 01 */	bl Player_actor_BGcheck_Push
/* 804EA92C  7F A3 EB 78 */	mr r3, r29
/* 804EA930  7F C4 F3 78 */	mr r4, r30
/* 804EA934  4B FF 93 C5 */	bl Player_actor_Item_main
/* 804EA938  7F A3 EB 78 */	mr r3, r29
/* 804EA93C  7F C4 F3 78 */	mr r4, r30
/* 804EA940  7F E5 FB 78 */	mr r5, r31
/* 804EA944  4B FF FF 05 */	bl Player_actor_request_proc_index_fromPush
/* 804EA948  39 61 00 20 */	addi r11, r1, 0x20
/* 804EA94C  4B BB 05 D5 */	bl func_8009AF20
/* 804EA950  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804EA954  7C 08 03 A6 */	mtlr r0
/* 804EA958  38 21 00 20 */	addi r1, r1, 0x20
/* 804EA95C  4E 80 00 20 */	blr 
