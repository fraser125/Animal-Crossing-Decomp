lbl_80501CE8:
/* 80501CE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80501CEC  7C 08 02 A6 */	mflr r0
/* 80501CF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80501CF4  39 61 00 20 */	addi r11, r1, 0x20
/* 80501CF8  4B B9 91 DD */	bl func_8009AED4
/* 80501CFC  7C 9E 23 78 */	mr r30, r4
/* 80501D00  7C 7D 1B 78 */	mr r29, r3
/* 80501D04  38 81 00 08 */	addi r4, r1, 8
/* 80501D08  4B FF FE 85 */	bl Player_actor_CulcAnimation_Ready_pitfall
/* 80501D0C  7C 60 1B 78 */	mr r0, r3
/* 80501D10  7F A3 EB 78 */	mr r3, r29
/* 80501D14  7C 1F 03 78 */	mr r31, r0
/* 80501D18  4B FF FE 95 */	bl Player_actor_Movement_Ready_pitfall
/* 80501D1C  7F A3 EB 78 */	mr r3, r29
/* 80501D20  7F C4 F3 78 */	mr r4, r30
/* 80501D24  4B FD 61 D9 */	bl Player_actor_Reinput_force_position_angle
/* 80501D28  C0 21 00 08 */	lfs f1, 8(r1)
/* 80501D2C  7F A3 EB 78 */	mr r3, r29
/* 80501D30  4B FF FF 11 */	bl Player_actor_SearchAnimation_Ready_pitfall
/* 80501D34  7F A3 EB 78 */	mr r3, r29
/* 80501D38  4B FD 53 BD */	bl Player_actor_recover_lean_angle
/* 80501D3C  7F A3 EB 78 */	mr r3, r29
/* 80501D40  4B FF FF 3D */	bl Player_actor_set_eye_pattern_Ready_pitfall
/* 80501D44  7F A3 EB 78 */	mr r3, r29
/* 80501D48  7F C4 F3 78 */	mr r4, r30
/* 80501D4C  4B FF FF 51 */	bl Player_actor_ObjCheck_Ready_pitfall
/* 80501D50  7F A3 EB 78 */	mr r3, r29
/* 80501D54  7F C4 F3 78 */	mr r4, r30
/* 80501D58  4B FE 1F A1 */	bl Player_actor_Item_main
/* 80501D5C  7F C3 F3 78 */	mr r3, r30
/* 80501D60  7F E4 FB 78 */	mr r4, r31
/* 80501D64  4B FF FF 59 */	bl Player_actor_request_proc_index_fromReady_pitfall
/* 80501D68  39 61 00 20 */	addi r11, r1, 0x20
/* 80501D6C  4B B9 91 B5 */	bl func_8009AF20
/* 80501D70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80501D74  7C 08 03 A6 */	mtlr r0
/* 80501D78  38 21 00 20 */	addi r1, r1, 0x20
/* 80501D7C  4E 80 00 20 */	blr 
