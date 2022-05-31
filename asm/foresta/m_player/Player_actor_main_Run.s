lbl_804E704C:
/* 804E704C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E7050  7C 08 02 A6 */	mflr r0
/* 804E7054  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E7058  38 A1 00 0C */	addi r5, r1, 0xc
/* 804E705C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804E7060  7C 9F 23 78 */	mr r31, r4
/* 804E7064  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804E7068  7C 7E 1B 78 */	mr r30, r3
/* 804E706C  4B FF FD E1 */	bl Player_actor_Movement_Run
/* 804E7070  7F C3 F3 78 */	mr r3, r30
/* 804E7074  7F E4 FB 78 */	mr r4, r31
/* 804E7078  4B FF 0E 85 */	bl Player_actor_Reinput_force_position_angle
/* 804E707C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 804E7080  7F C3 F3 78 */	mr r3, r30
/* 804E7084  38 81 00 08 */	addi r4, r1, 8
/* 804E7088  4B FF FD 11 */	bl Player_actor_CulcAnimation_Run
/* 804E708C  C0 21 00 08 */	lfs f1, 8(r1)
/* 804E7090  7F C3 F3 78 */	mr r3, r30
/* 804E7094  7F E4 FB 78 */	mr r4, r31
/* 804E7098  4B FF FD 41 */	bl Player_actor_SearchAnimation_Run
/* 804E709C  7F C3 F3 78 */	mr r3, r30
/* 804E70A0  4B FE FF 69 */	bl Player_actor_set_lean_angle
/* 804E70A4  7F C3 F3 78 */	mr r3, r30
/* 804E70A8  4B FE E3 71 */	bl Player_actor_set_eye_pattern_normal
/* 804E70AC  7F C3 F3 78 */	mr r3, r30
/* 804E70B0  7F E4 FB 78 */	mr r4, r31
/* 804E70B4  4B FF FD B9 */	bl Player_actor_ObjCheck_Run
/* 804E70B8  7F C3 F3 78 */	mr r3, r30
/* 804E70BC  4B FF FD D1 */	bl Player_actor_BGcheck_Run
/* 804E70C0  7F C3 F3 78 */	mr r3, r30
/* 804E70C4  7F E4 FB 78 */	mr r4, r31
/* 804E70C8  4B FF CC 31 */	bl Player_actor_Item_main
/* 804E70CC  7F C3 F3 78 */	mr r3, r30
/* 804E70D0  7F E4 FB 78 */	mr r4, r31
/* 804E70D4  4B FF FF 59 */	bl Player_actor_request_proc_index_fromRun
/* 804E70D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E70DC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804E70E0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804E70E4  7C 08 03 A6 */	mtlr r0
/* 804E70E8  38 21 00 20 */	addi r1, r1, 0x20
/* 804E70EC  4E 80 00 20 */	blr 
