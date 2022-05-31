lbl_804E2680:
/* 804E2680  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E2684  7C 08 02 A6 */	mflr r0
/* 804E2688  38 80 00 06 */	li r4, 6
/* 804E268C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E2690  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E2694  7C 7F 1B 78 */	mr r31, r3
/* 804E2698  4B FF E7 1D */	bl Player_actor_Item_Set_Command_forUki
/* 804E269C  80 9F 0C F8 */	lwz r4, 0xcf8(r31)
/* 804E26A0  7F E3 FB 78 */	mr r3, r31
/* 804E26A4  4B FF E7 25 */	bl Player_actor_Item_Set_RightHandPos_forUki
/* 804E26A8  80 9F 0C F8 */	lwz r4, 0xcf8(r31)
/* 804E26AC  7F E3 FB 78 */	mr r3, r31
/* 804E26B0  4B FF E8 31 */	bl Player_actor_Item_Set_LeftHandPos_forUki
/* 804E26B4  7F E3 FB 78 */	mr r3, r31
/* 804E26B8  4B FF E9 41 */	bl Player_actor_Item_Set_PosSpeed_forUki
/* 804E26BC  7F E3 FB 78 */	mr r3, r31
/* 804E26C0  4B FF E9 61 */	bl Player_actor_Item_Set_AngleSpeedY_forUki
/* 804E26C4  7F E3 FB 78 */	mr r3, r31
/* 804E26C8  4B FF E9 B5 */	bl Player_actor_Item_Set_RodTopPos_forUki
/* 804E26CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E26D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E26D4  7C 08 03 A6 */	mtlr r0
/* 804E26D8  38 21 00 10 */	addi r1, r1, 0x10
/* 804E26DC  4E 80 00 20 */	blr 
