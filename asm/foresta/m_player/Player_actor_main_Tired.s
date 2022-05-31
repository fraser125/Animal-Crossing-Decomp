lbl_804FFE28:
/* 804FFE28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FFE2C  7C 08 02 A6 */	mflr r0
/* 804FFE30  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FFE34  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804FFE38  7C 9F 23 78 */	mr r31, r4
/* 804FFE3C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804FFE40  7C 7E 1B 78 */	mr r30, r3
/* 804FFE44  4B FF FE 65 */	bl Player_actor_Movement_Tired
/* 804FFE48  7F C3 F3 78 */	mr r3, r30
/* 804FFE4C  7F E4 FB 78 */	mr r4, r31
/* 804FFE50  4B FD 80 AD */	bl Player_actor_Reinput_force_position_angle
/* 804FFE54  7F C3 F3 78 */	mr r3, r30
/* 804FFE58  38 81 00 08 */	addi r4, r1, 8
/* 804FFE5C  4B FF FE 75 */	bl Player_actor_CulcAnimation_Tired
/* 804FFE60  C0 21 00 08 */	lfs f1, 8(r1)
/* 804FFE64  7F C3 F3 78 */	mr r3, r30
/* 804FFE68  7F E4 FB 78 */	mr r4, r31
/* 804FFE6C  4B FF FF 31 */	bl Player_actor_SearchAnimation_Tired
/* 804FFE70  7F C3 F3 78 */	mr r3, r30
/* 804FFE74  4B FD 72 81 */	bl Player_actor_recover_lean_angle
/* 804FFE78  7F C3 F3 78 */	mr r3, r30
/* 804FFE7C  7F E4 FB 78 */	mr r4, r31
/* 804FFE80  4B FF FF 69 */	bl Player_actor_ObjCheck_Tired
/* 804FFE84  7F C3 F3 78 */	mr r3, r30
/* 804FFE88  4B FF FF 81 */	bl Player_actor_BGcheck_Tired
/* 804FFE8C  7F C3 F3 78 */	mr r3, r30
/* 804FFE90  7F E4 FB 78 */	mr r4, r31
/* 804FFE94  4B FE 3E 65 */	bl Player_actor_Item_main
/* 804FFE98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FFE9C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804FFEA0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804FFEA4  7C 08 03 A6 */	mtlr r0
/* 804FFEA8  38 21 00 20 */	addi r1, r1, 0x20
/* 804FFEAC  4E 80 00 20 */	blr 
