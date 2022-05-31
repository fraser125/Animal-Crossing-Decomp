lbl_804F5040:
/* 804F5040  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F5044  7C 08 02 A6 */	mflr r0
/* 804F5048  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F504C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804F5050  7C 9F 23 78 */	mr r31, r4
/* 804F5054  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804F5058  7C 7E 1B 78 */	mr r30, r3
/* 804F505C  4B FF FC A5 */	bl Player_actor_Movement_Ready_rod
/* 804F5060  7F C3 F3 78 */	mr r3, r30
/* 804F5064  38 81 00 08 */	addi r4, r1, 8
/* 804F5068  4B FF FC C1 */	bl Player_actor_CulcAnimation_Ready_rod
/* 804F506C  7F C3 F3 78 */	mr r3, r30
/* 804F5070  7F E4 FB 78 */	mr r4, r31
/* 804F5074  4B FE 2E 89 */	bl Player_actor_Reinput_force_position_angle
/* 804F5078  C0 21 00 08 */	lfs f1, 8(r1)
/* 804F507C  7F C3 F3 78 */	mr r3, r30
/* 804F5080  7F E4 FB 78 */	mr r4, r31
/* 804F5084  4B FF FD 05 */	bl Player_actor_SearchAnimation_Ready_rod
/* 804F5088  7F C3 F3 78 */	mr r3, r30
/* 804F508C  4B FE 20 69 */	bl Player_actor_recover_lean_angle
/* 804F5090  7F C3 F3 78 */	mr r3, r30
/* 804F5094  4B FE 03 85 */	bl Player_actor_set_eye_pattern_normal
/* 804F5098  7F C3 F3 78 */	mr r3, r30
/* 804F509C  7F E4 FB 78 */	mr r4, r31
/* 804F50A0  4B FF FC A9 */	bl Player_actor_ObjCheck_Ready_rod
/* 804F50A4  7F C3 F3 78 */	mr r3, r30
/* 804F50A8  4B FF FC C1 */	bl Player_actor_BGcheck_Ready_rod
/* 804F50AC  7F C3 F3 78 */	mr r3, r30
/* 804F50B0  7F E4 FB 78 */	mr r4, r31
/* 804F50B4  4B FE EC 45 */	bl Player_actor_Item_main
/* 804F50B8  7F C3 F3 78 */	mr r3, r30
/* 804F50BC  7F E4 FB 78 */	mr r4, r31
/* 804F50C0  4B FF FD 1D */	bl Player_actor_request_proc_index_fromReady_rod
/* 804F50C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F50C8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804F50CC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804F50D0  7C 08 03 A6 */	mtlr r0
/* 804F50D4  38 21 00 20 */	addi r1, r1, 0x20
/* 804F50D8  4E 80 00 20 */	blr 
