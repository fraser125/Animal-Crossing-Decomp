lbl_8050064C:
/* 8050064C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80500650  7C 08 02 A6 */	mflr r0
/* 80500654  90 01 00 24 */	stw r0, 0x24(r1)
/* 80500658  39 61 00 20 */	addi r11, r1, 0x20
/* 8050065C  4B B9 A8 79 */	bl func_8009AED4
/* 80500660  7C 9E 23 78 */	mr r30, r4
/* 80500664  7C 7D 1B 78 */	mr r29, r3
/* 80500668  38 81 00 08 */	addi r4, r1, 8
/* 8050066C  4B FF FD A1 */	bl Player_actor_CulcAnimation_Throw_money
/* 80500670  7C 60 1B 78 */	mr r0, r3
/* 80500674  7F A3 EB 78 */	mr r3, r29
/* 80500678  7C 1F 03 78 */	mr r31, r0
/* 8050067C  4B FF FD B1 */	bl Player_actor_Movement_Throw_money
/* 80500680  7F A3 EB 78 */	mr r3, r29
/* 80500684  7F C4 F3 78 */	mr r4, r30
/* 80500688  4B FD 78 75 */	bl Player_actor_Reinput_force_position_angle
/* 8050068C  C0 21 00 08 */	lfs f1, 8(r1)
/* 80500690  7F A3 EB 78 */	mr r3, r29
/* 80500694  7F C4 F3 78 */	mr r4, r30
/* 80500698  4B FF FF 0D */	bl Player_actor_SearchAnimation_Throw_money
/* 8050069C  7F A3 EB 78 */	mr r3, r29
/* 805006A0  4B FD 6A 55 */	bl Player_actor_recover_lean_angle
/* 805006A4  7F A3 EB 78 */	mr r3, r29
/* 805006A8  4B FD 4D 71 */	bl Player_actor_set_eye_pattern_normal
/* 805006AC  7F A3 EB 78 */	mr r3, r29
/* 805006B0  7F C4 F3 78 */	mr r4, r30
/* 805006B4  4B FF FD C5 */	bl Player_actor_ObjCheck_Throw_money
/* 805006B8  7F A3 EB 78 */	mr r3, r29
/* 805006BC  4B FF FD DD */	bl Player_actor_BGcheck_Throw_money
/* 805006C0  7F A3 EB 78 */	mr r3, r29
/* 805006C4  7F C4 F3 78 */	mr r4, r30
/* 805006C8  4B FE 36 31 */	bl Player_actor_Item_main
/* 805006CC  7F A3 EB 78 */	mr r3, r29
/* 805006D0  7F C4 F3 78 */	mr r4, r30
/* 805006D4  7F E5 FB 78 */	mr r5, r31
/* 805006D8  4B FF FF 21 */	bl Player_actor_request_proc_index_fromThrow_money
/* 805006DC  39 61 00 20 */	addi r11, r1, 0x20
/* 805006E0  4B B9 A8 41 */	bl func_8009AF20
/* 805006E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805006E8  7C 08 03 A6 */	mtlr r0
/* 805006EC  38 21 00 20 */	addi r1, r1, 0x20
/* 805006F0  4E 80 00 20 */	blr 
