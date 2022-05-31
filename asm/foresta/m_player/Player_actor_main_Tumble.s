lbl_804E8044:
/* 804E8044  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E8048  7C 08 02 A6 */	mflr r0
/* 804E804C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E8050  39 61 00 20 */	addi r11, r1, 0x20
/* 804E8054  4B BB 2E 7D */	bl func_8009AED0
/* 804E8058  7C 7C 1B 78 */	mr r28, r3
/* 804E805C  7C 9D 23 78 */	mr r29, r4
/* 804E8060  4B FF FC ED */	bl Player_actor_Movement_Tumble
/* 804E8064  7C 60 1B 78 */	mr r0, r3
/* 804E8068  7F 83 E3 78 */	mr r3, r28
/* 804E806C  7C 1F 03 78 */	mr r31, r0
/* 804E8070  7F A4 EB 78 */	mr r4, r29
/* 804E8074  4B FE FE 89 */	bl Player_actor_Reinput_force_position_angle
/* 804E8078  7F 83 E3 78 */	mr r3, r28
/* 804E807C  38 81 00 08 */	addi r4, r1, 8
/* 804E8080  4B FF FD E1 */	bl Player_actor_CulcAnimation_Tumble
/* 804E8084  7C 7E 1B 78 */	mr r30, r3
/* 804E8088  C0 21 00 08 */	lfs f1, 8(r1)
/* 804E808C  7F 83 E3 78 */	mr r3, r28
/* 804E8090  7F A4 EB 78 */	mr r4, r29
/* 804E8094  7F C5 F3 78 */	mr r5, r30
/* 804E8098  4B FF FE E5 */	bl Player_actor_SearchAnimation_Tumble
/* 804E809C  7F 83 E3 78 */	mr r3, r28
/* 804E80A0  4B FF FC D5 */	bl Player_actor_recover_lean_angle_Tumble
/* 804E80A4  7F 83 E3 78 */	mr r3, r28
/* 804E80A8  4B FE D4 9D */	bl Player_actor_set_tex_anime_pattern
/* 804E80AC  7F 83 E3 78 */	mr r3, r28
/* 804E80B0  7F A4 EB 78 */	mr r4, r29
/* 804E80B4  4B FF FF 1D */	bl Player_actor_ObjCheck_Tumble
/* 804E80B8  7F 83 E3 78 */	mr r3, r28
/* 804E80BC  4B FF FF 35 */	bl Player_actor_BGcheck_Tumble
/* 804E80C0  7F 83 E3 78 */	mr r3, r28
/* 804E80C4  7F A4 EB 78 */	mr r4, r29
/* 804E80C8  4B FF BC 31 */	bl Player_actor_Item_main
/* 804E80CC  7F A3 EB 78 */	mr r3, r29
/* 804E80D0  7F E4 FB 78 */	mr r4, r31
/* 804E80D4  7F C5 F3 78 */	mr r5, r30
/* 804E80D8  4B FF FF 39 */	bl Player_actor_request_proc_index_fromTumble
/* 804E80DC  39 61 00 20 */	addi r11, r1, 0x20
/* 804E80E0  4B BB 2E 3D */	bl func_8009AF1C
/* 804E80E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E80E8  7C 08 03 A6 */	mtlr r0
/* 804E80EC  38 21 00 20 */	addi r1, r1, 0x20
/* 804E80F0  4E 80 00 20 */	blr 
