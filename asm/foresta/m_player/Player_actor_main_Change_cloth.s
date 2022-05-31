lbl_80504830:
/* 80504830  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80504834  7C 08 02 A6 */	mflr r0
/* 80504838  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050483C  39 61 00 20 */	addi r11, r1, 0x20
/* 80504840  4B B9 66 95 */	bl func_8009AED4
/* 80504844  7C 7D 1B 78 */	mr r29, r3
/* 80504848  7C 9E 23 78 */	mr r30, r4
/* 8050484C  4B FF FC 5D */	bl Player_actor_Movement_Change_cloth
/* 80504850  7F A3 EB 78 */	mr r3, r29
/* 80504854  38 81 00 08 */	addi r4, r1, 8
/* 80504858  4B FF FD 39 */	bl Player_actor_CulcAnimation_Change_cloth
/* 8050485C  7C 60 1B 78 */	mr r0, r3
/* 80504860  7F A3 EB 78 */	mr r3, r29
/* 80504864  7C 1F 03 78 */	mr r31, r0
/* 80504868  7F C4 F3 78 */	mr r4, r30
/* 8050486C  4B FD 36 91 */	bl Player_actor_Reinput_force_position_angle
/* 80504870  C0 21 00 08 */	lfs f1, 8(r1)
/* 80504874  7F A3 EB 78 */	mr r3, r29
/* 80504878  7F C4 F3 78 */	mr r4, r30
/* 8050487C  4B FF FE 99 */	bl Player_actor_SearchAnimation_Change_cloth
/* 80504880  7F A3 EB 78 */	mr r3, r29
/* 80504884  4B FD 28 71 */	bl Player_actor_recover_lean_angle
/* 80504888  7F A3 EB 78 */	mr r3, r29
/* 8050488C  4B FF FE E1 */	bl Player_actor_set_eye_pattern_Change_cloth
/* 80504890  7F A3 EB 78 */	mr r3, r29
/* 80504894  7F C4 F3 78 */	mr r4, r30
/* 80504898  4B FF FE F5 */	bl Player_actor_ObjCheck_Change_cloth
/* 8050489C  7F A3 EB 78 */	mr r3, r29
/* 805048A0  7F C4 F3 78 */	mr r4, r30
/* 805048A4  4B FD F4 55 */	bl Player_actor_Item_main
/* 805048A8  7F A3 EB 78 */	mr r3, r29
/* 805048AC  7F C4 F3 78 */	mr r4, r30
/* 805048B0  7F E5 FB 78 */	mr r5, r31
/* 805048B4  4B FF FE F9 */	bl Player_actor_request_proc_index_fromChange_cloth
/* 805048B8  39 61 00 20 */	addi r11, r1, 0x20
/* 805048BC  4B B9 66 65 */	bl func_8009AF20
/* 805048C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805048C4  7C 08 03 A6 */	mtlr r0
/* 805048C8  38 21 00 20 */	addi r1, r1, 0x20
/* 805048CC  4E 80 00 20 */	blr 
