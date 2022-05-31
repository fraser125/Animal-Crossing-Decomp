lbl_804F1988:
/* 804F1988  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F198C  7C 08 02 A6 */	mflr r0
/* 804F1990  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F1994  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804F1998  7C 9F 23 78 */	mr r31, r4
/* 804F199C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804F19A0  7C 7E 1B 78 */	mr r30, r3
/* 804F19A4  4B FF FB 25 */	bl Player_actor_Movement_Broken_axe
/* 804F19A8  7F C3 F3 78 */	mr r3, r30
/* 804F19AC  7F E4 FB 78 */	mr r4, r31
/* 804F19B0  4B FE 65 4D */	bl Player_actor_Reinput_force_position_angle
/* 804F19B4  7F C3 F3 78 */	mr r3, r30
/* 804F19B8  38 81 00 08 */	addi r4, r1, 8
/* 804F19BC  4B FF FC 11 */	bl Player_actor_CulcAnimation_Broken_axe
/* 804F19C0  C0 21 00 08 */	lfs f1, 8(r1)
/* 804F19C4  7C 65 1B 78 */	mr r5, r3
/* 804F19C8  7F C3 F3 78 */	mr r3, r30
/* 804F19CC  7F E4 FB 78 */	mr r4, r31
/* 804F19D0  4B FF FC C9 */	bl Player_actor_SearchAnimation_Broken_axe
/* 804F19D4  7F C3 F3 78 */	mr r3, r30
/* 804F19D8  4B FE 57 1D */	bl Player_actor_recover_lean_angle
/* 804F19DC  7F C3 F3 78 */	mr r3, r30
/* 804F19E0  4B FE 3B 65 */	bl Player_actor_set_tex_anime_pattern
/* 804F19E4  7F C3 F3 78 */	mr r3, r30
/* 804F19E8  7F E4 FB 78 */	mr r4, r31
/* 804F19EC  4B FF FD A5 */	bl Player_actor_ObjCheck_Broken_axe
/* 804F19F0  7F C3 F3 78 */	mr r3, r30
/* 804F19F4  4B FF FD BD */	bl Player_actor_BGcheck_Broken_axe
/* 804F19F8  7F C3 F3 78 */	mr r3, r30
/* 804F19FC  7F E4 FB 78 */	mr r4, r31
/* 804F1A00  4B FF 22 F9 */	bl Player_actor_Item_main
/* 804F1A04  7F C3 F3 78 */	mr r3, r30
/* 804F1A08  4B FF FE 31 */	bl Player_actor_MessageControl_Broken_axe
/* 804F1A0C  7C 60 1B 78 */	mr r0, r3
/* 804F1A10  7F C3 F3 78 */	mr r3, r30
/* 804F1A14  7C 05 03 78 */	mr r5, r0
/* 804F1A18  7F E4 FB 78 */	mr r4, r31
/* 804F1A1C  4B FF FF 15 */	bl Player_actor_request_proc_index_fromBroken_axe
/* 804F1A20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F1A24  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804F1A28  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804F1A2C  7C 08 03 A6 */	mtlr r0
/* 804F1A30  38 21 00 20 */	addi r1, r1, 0x20
/* 804F1A34  4E 80 00 20 */	blr 
