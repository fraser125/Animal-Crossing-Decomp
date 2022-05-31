lbl_80503D50:
/* 80503D50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80503D54  7C 08 02 A6 */	mflr r0
/* 80503D58  90 01 00 24 */	stw r0, 0x24(r1)
/* 80503D5C  39 61 00 20 */	addi r11, r1, 0x20
/* 80503D60  4B B9 71 75 */	bl func_8009AED4
/* 80503D64  7C 7D 1B 78 */	mr r29, r3
/* 80503D68  7C 9E 23 78 */	mr r30, r4
/* 80503D6C  4B FF FC 19 */	bl Player_actor_Movement_Shock
/* 80503D70  7F A3 EB 78 */	mr r3, r29
/* 80503D74  7F C4 F3 78 */	mr r4, r30
/* 80503D78  4B FD 41 85 */	bl Player_actor_Reinput_force_position_angle
/* 80503D7C  7F A3 EB 78 */	mr r3, r29
/* 80503D80  38 81 00 08 */	addi r4, r1, 8
/* 80503D84  4B FF FC BD */	bl Player_actor_CulcAnimation_Shock
/* 80503D88  C0 21 00 08 */	lfs f1, 8(r1)
/* 80503D8C  7C 7F 1B 78 */	mr r31, r3
/* 80503D90  7F A3 EB 78 */	mr r3, r29
/* 80503D94  4B FF FD 21 */	bl Player_actor_SearchAnimation_Shock
/* 80503D98  7F A3 EB 78 */	mr r3, r29
/* 80503D9C  7F C4 F3 78 */	mr r4, r30
/* 80503DA0  7F E5 FB 78 */	mr r5, r31
/* 80503DA4  4B FF FD 4D */	bl Player_actor_ChangeAnimation_Shock
/* 80503DA8  7F A3 EB 78 */	mr r3, r29
/* 80503DAC  4B FD 33 49 */	bl Player_actor_recover_lean_angle
/* 80503DB0  7F A3 EB 78 */	mr r3, r29
/* 80503DB4  4B FF FE 21 */	bl Player_actor_set_eye_pattern_Shock
/* 80503DB8  7F A3 EB 78 */	mr r3, r29
/* 80503DBC  7F C4 F3 78 */	mr r4, r30
/* 80503DC0  4B FF FE 81 */	bl Player_actor_ObjCheck_Shock
/* 80503DC4  7F A3 EB 78 */	mr r3, r29
/* 80503DC8  4B FF FE 99 */	bl Player_actor_BGcheck_Shock
/* 80503DCC  7F A3 EB 78 */	mr r3, r29
/* 80503DD0  7F C4 F3 78 */	mr r4, r30
/* 80503DD4  4B FD FF 25 */	bl Player_actor_Item_main
/* 80503DD8  7F A3 EB 78 */	mr r3, r29
/* 80503DDC  7F C4 F3 78 */	mr r4, r30
/* 80503DE0  4B FF FE A1 */	bl Player_actor_request_proc_index_fromShock
/* 80503DE4  39 61 00 20 */	addi r11, r1, 0x20
/* 80503DE8  4B B9 71 39 */	bl func_8009AF20
/* 80503DEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80503DF0  7C 08 03 A6 */	mtlr r0
/* 80503DF4  38 21 00 20 */	addi r1, r1, 0x20
/* 80503DF8  4E 80 00 20 */	blr 
