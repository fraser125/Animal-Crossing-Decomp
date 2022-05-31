lbl_805001A8:
/* 805001A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805001AC  7C 08 02 A6 */	mflr r0
/* 805001B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805001B4  39 61 00 20 */	addi r11, r1, 0x20
/* 805001B8  4B B9 AD 1D */	bl func_8009AED4
/* 805001BC  7C 9E 23 78 */	mr r30, r4
/* 805001C0  7C 7D 1B 78 */	mr r29, r3
/* 805001C4  38 81 00 08 */	addi r4, r1, 8
/* 805001C8  4B FF FE FD */	bl Player_actor_CulcAnimation_Rotate_octagon
/* 805001CC  7C 60 1B 78 */	mr r0, r3
/* 805001D0  7F A3 EB 78 */	mr r3, r29
/* 805001D4  7C 1F 03 78 */	mr r31, r0
/* 805001D8  4B FF FE A1 */	bl Player_actor_Movement_Rotate_octagon
/* 805001DC  7F A3 EB 78 */	mr r3, r29
/* 805001E0  7F C4 F3 78 */	mr r4, r30
/* 805001E4  4B FD 7D 19 */	bl Player_actor_Reinput_force_position_angle
/* 805001E8  7F A3 EB 78 */	mr r3, r29
/* 805001EC  4B FD 6F 09 */	bl Player_actor_recover_lean_angle
/* 805001F0  7F A3 EB 78 */	mr r3, r29
/* 805001F4  4B FD 52 25 */	bl Player_actor_set_eye_pattern_normal
/* 805001F8  7F A3 EB 78 */	mr r3, r29
/* 805001FC  7F C4 F3 78 */	mr r4, r30
/* 80500200  4B FF FE E5 */	bl Player_actor_ObjCheck_Rotate_octagon
/* 80500204  7F A3 EB 78 */	mr r3, r29
/* 80500208  4B FF FE FD */	bl Player_actor_BGcheck_Rotate_octagon
/* 8050020C  7F A3 EB 78 */	mr r3, r29
/* 80500210  7F C4 F3 78 */	mr r4, r30
/* 80500214  4B FE 3A E5 */	bl Player_actor_Item_main
/* 80500218  7F A3 EB 78 */	mr r3, r29
/* 8050021C  7F C4 F3 78 */	mr r4, r30
/* 80500220  7F E5 FB 78 */	mr r5, r31
/* 80500224  4B FF FF 01 */	bl Player_actor_request_proc_index_fromRotate_octagon
/* 80500228  39 61 00 20 */	addi r11, r1, 0x20
/* 8050022C  4B B9 AC F5 */	bl func_8009AF20
/* 80500230  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80500234  7C 08 03 A6 */	mtlr r0
/* 80500238  38 21 00 20 */	addi r1, r1, 0x20
/* 8050023C  4E 80 00 20 */	blr 
