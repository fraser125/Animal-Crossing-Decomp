lbl_80506764:
/* 80506764  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80506768  7C 08 02 A6 */	mflr r0
/* 8050676C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80506770  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80506774  7C 9F 23 78 */	mr r31, r4
/* 80506778  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8050677C  7C 7E 1B 78 */	mr r30, r3
/* 80506780  4B FF FD 9D */	bl Player_actor_Movement_Swing_fan
/* 80506784  7F C3 F3 78 */	mr r3, r30
/* 80506788  7F E4 FB 78 */	mr r4, r31
/* 8050678C  4B FD 17 71 */	bl Player_actor_Reinput_force_position_angle
/* 80506790  7F C3 F3 78 */	mr r3, r30
/* 80506794  38 81 00 08 */	addi r4, r1, 8
/* 80506798  4B FF FD AD */	bl Player_actor_CulcAnimation_Swing_fan
/* 8050679C  C0 21 00 08 */	lfs f1, 8(r1)
/* 805067A0  7F C3 F3 78 */	mr r3, r30
/* 805067A4  4B FF FE 09 */	bl Player_actor_SearchAnimation_Swing_fan
/* 805067A8  7F C3 F3 78 */	mr r3, r30
/* 805067AC  4B FD 09 49 */	bl Player_actor_recover_lean_angle
/* 805067B0  7F C3 F3 78 */	mr r3, r30
/* 805067B4  7F E4 FB 78 */	mr r4, r31
/* 805067B8  4B FF FE 31 */	bl Player_actor_ObjCheck_Swing_fan
/* 805067BC  7F C3 F3 78 */	mr r3, r30
/* 805067C0  4B FF FE 49 */	bl Player_actor_BGcheck_Swing_fan
/* 805067C4  7F C3 F3 78 */	mr r3, r30
/* 805067C8  7F E4 FB 78 */	mr r4, r31
/* 805067CC  4B FD D5 2D */	bl Player_actor_Item_main
/* 805067D0  7F C3 F3 78 */	mr r3, r30
/* 805067D4  7F E4 FB 78 */	mr r4, r31
/* 805067D8  4B FF FE 51 */	bl Player_actor_request_proc_index_fromSwing_fan
/* 805067DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805067E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805067E4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805067E8  7C 08 03 A6 */	mtlr r0
/* 805067EC  38 21 00 20 */	addi r1, r1, 0x20
/* 805067F0  4E 80 00 20 */	blr 
