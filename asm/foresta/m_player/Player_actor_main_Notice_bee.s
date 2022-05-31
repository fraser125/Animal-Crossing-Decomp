lbl_80503298:
/* 80503298  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050329C  7C 08 02 A6 */	mflr r0
/* 805032A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805032A4  39 61 00 20 */	addi r11, r1, 0x20
/* 805032A8  4B B9 7C 2D */	bl func_8009AED4
/* 805032AC  7C 9E 23 78 */	mr r30, r4
/* 805032B0  7C 7D 1B 78 */	mr r29, r3
/* 805032B4  38 81 00 08 */	addi r4, r1, 8
/* 805032B8  4B FF FD 2D */	bl Player_actor_CulcAnimation_Notice_bee
/* 805032BC  7C 60 1B 78 */	mr r0, r3
/* 805032C0  7F A3 EB 78 */	mr r3, r29
/* 805032C4  7C 1F 03 78 */	mr r31, r0
/* 805032C8  4B FF FD 3D */	bl Player_actor_Movement_Notice_bee
/* 805032CC  7F A3 EB 78 */	mr r3, r29
/* 805032D0  7F C4 F3 78 */	mr r4, r30
/* 805032D4  4B FD 4C 29 */	bl Player_actor_Reinput_force_position_angle
/* 805032D8  7F A3 EB 78 */	mr r3, r29
/* 805032DC  4B FD 3E 19 */	bl Player_actor_recover_lean_angle
/* 805032E0  7F A3 EB 78 */	mr r3, r29
/* 805032E4  7F E4 FB 78 */	mr r4, r31
/* 805032E8  4B FF FD 69 */	bl Player_actor_set_eye_pattern_Notice_bee
/* 805032EC  7F A3 EB 78 */	mr r3, r29
/* 805032F0  7F C4 F3 78 */	mr r4, r30
/* 805032F4  4B FF FD A5 */	bl Player_actor_ObjCheck_Notice_bee
/* 805032F8  7F A3 EB 78 */	mr r3, r29
/* 805032FC  4B FF FD BD */	bl Player_actor_BGcheck_Notice_bee
/* 80503300  7F A3 EB 78 */	mr r3, r29
/* 80503304  7F C4 F3 78 */	mr r4, r30
/* 80503308  4B FE 09 F1 */	bl Player_actor_Item_main
/* 8050330C  7F A3 EB 78 */	mr r3, r29
/* 80503310  4B FF FE 35 */	bl Player_actor_MessageControl_Notice_bee
/* 80503314  7C 60 1B 78 */	mr r0, r3
/* 80503318  7F A3 EB 78 */	mr r3, r29
/* 8050331C  7C 06 03 78 */	mr r6, r0
/* 80503320  7F C4 F3 78 */	mr r4, r30
/* 80503324  7F E5 FB 78 */	mr r5, r31
/* 80503328  4B FF FF 11 */	bl Player_actor_request_proc_index_fromNotice_bee
/* 8050332C  39 61 00 20 */	addi r11, r1, 0x20
/* 80503330  4B B9 7B F1 */	bl func_8009AF20
/* 80503334  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80503338  7C 08 03 A6 */	mtlr r0
/* 8050333C  38 21 00 20 */	addi r1, r1, 0x20
/* 80503340  4E 80 00 20 */	blr 
