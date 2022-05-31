lbl_804E79DC:
/* 804E79DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E79E0  7C 08 02 A6 */	mflr r0
/* 804E79E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E79E8  38 A1 00 0C */	addi r5, r1, 0xc
/* 804E79EC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804E79F0  7C 9F 23 78 */	mr r31, r4
/* 804E79F4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804E79F8  7C 7E 1B 78 */	mr r30, r3
/* 804E79FC  4B FF FC 05 */	bl Player_actor_Movement_Dash
/* 804E7A00  7F C3 F3 78 */	mr r3, r30
/* 804E7A04  7F E4 FB 78 */	mr r4, r31
/* 804E7A08  4B FF 04 F5 */	bl Player_actor_Reinput_force_position_angle
/* 804E7A0C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 804E7A10  7F C3 F3 78 */	mr r3, r30
/* 804E7A14  38 81 00 08 */	addi r4, r1, 8
/* 804E7A18  4B FF F8 49 */	bl Player_actor_CulcAnimation_Dash
/* 804E7A1C  C0 21 00 08 */	lfs f1, 8(r1)
/* 804E7A20  7F C3 F3 78 */	mr r3, r30
/* 804E7A24  7F E4 FB 78 */	mr r4, r31
/* 804E7A28  4B FF FB 65 */	bl Player_actor_SearchAnimation_Dash
/* 804E7A2C  7F C3 F3 78 */	mr r3, r30
/* 804E7A30  4B FE F5 D9 */	bl Player_actor_set_lean_angle
/* 804E7A34  7F C3 F3 78 */	mr r3, r30
/* 804E7A38  4B FE D9 E1 */	bl Player_actor_set_eye_pattern_normal
/* 804E7A3C  7F C3 F3 78 */	mr r3, r30
/* 804E7A40  7F E4 FB 78 */	mr r4, r31
/* 804E7A44  4B FF FB DD */	bl Player_actor_ObjCheck_Dash
/* 804E7A48  7F C3 F3 78 */	mr r3, r30
/* 804E7A4C  4B FF FB F5 */	bl Player_actor_BGcheck_Dash
/* 804E7A50  7F C3 F3 78 */	mr r3, r30
/* 804E7A54  7F E4 FB 78 */	mr r4, r31
/* 804E7A58  4B FF C2 A1 */	bl Player_actor_Item_main
/* 804E7A5C  7F C3 F3 78 */	mr r3, r30
/* 804E7A60  7F E4 FB 78 */	mr r4, r31
/* 804E7A64  4B FF FF 59 */	bl Player_actor_request_proc_index_fromDash
/* 804E7A68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E7A6C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804E7A70  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804E7A74  7C 08 03 A6 */	mtlr r0
/* 804E7A78  38 21 00 20 */	addi r1, r1, 0x20
/* 804E7A7C  4E 80 00 20 */	blr 
