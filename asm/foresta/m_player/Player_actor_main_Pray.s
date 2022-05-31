lbl_805009F0:
/* 805009F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805009F4  7C 08 02 A6 */	mflr r0
/* 805009F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805009FC  39 61 00 20 */	addi r11, r1, 0x20
/* 80500A00  4B B9 A4 D5 */	bl func_8009AED4
/* 80500A04  7C 9E 23 78 */	mr r30, r4
/* 80500A08  7C 7D 1B 78 */	mr r29, r3
/* 80500A0C  38 81 00 08 */	addi r4, r1, 8
/* 80500A10  4B FF FE ED */	bl Player_actor_CulcAnimation_Pray
/* 80500A14  7C 60 1B 78 */	mr r0, r3
/* 80500A18  7F A3 EB 78 */	mr r3, r29
/* 80500A1C  7C 1F 03 78 */	mr r31, r0
/* 80500A20  4B FF FE FD */	bl Player_actor_Movement_Pray
/* 80500A24  7F A3 EB 78 */	mr r3, r29
/* 80500A28  7F C4 F3 78 */	mr r4, r30
/* 80500A2C  4B FD 74 D1 */	bl Player_actor_Reinput_force_position_angle
/* 80500A30  7F A3 EB 78 */	mr r3, r29
/* 80500A34  4B FD 66 C1 */	bl Player_actor_recover_lean_angle
/* 80500A38  7F A3 EB 78 */	mr r3, r29
/* 80500A3C  4B FD 49 DD */	bl Player_actor_set_eye_pattern_normal
/* 80500A40  7F A3 EB 78 */	mr r3, r29
/* 80500A44  7F C4 F3 78 */	mr r4, r30
/* 80500A48  4B FF FF 21 */	bl Player_actor_ObjCheck_Pray
/* 80500A4C  7F A3 EB 78 */	mr r3, r29
/* 80500A50  4B FF FF 39 */	bl Player_actor_BGcheck_Pray
/* 80500A54  7F A3 EB 78 */	mr r3, r29
/* 80500A58  7F C4 F3 78 */	mr r4, r30
/* 80500A5C  4B FE 32 9D */	bl Player_actor_Item_main
/* 80500A60  7F A3 EB 78 */	mr r3, r29
/* 80500A64  7F C4 F3 78 */	mr r4, r30
/* 80500A68  7F E5 FB 78 */	mr r5, r31
/* 80500A6C  4B FF FF 3D */	bl Player_actor_request_proc_index_fromPray
/* 80500A70  39 61 00 20 */	addi r11, r1, 0x20
/* 80500A74  4B B9 A4 AD */	bl func_8009AF20
/* 80500A78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80500A7C  7C 08 03 A6 */	mtlr r0
/* 80500A80  38 21 00 20 */	addi r1, r1, 0x20
/* 80500A84  4E 80 00 20 */	blr 
