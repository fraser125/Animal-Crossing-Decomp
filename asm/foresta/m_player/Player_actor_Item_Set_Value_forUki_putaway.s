lbl_804E27A4:
/* 804E27A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E27A8  7C 08 02 A6 */	mflr r0
/* 804E27AC  38 80 00 05 */	li r4, 5
/* 804E27B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E27B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E27B8  7C 7F 1B 78 */	mr r31, r3
/* 804E27BC  4B FF E5 F9 */	bl Player_actor_Item_Set_Command_forUki
/* 804E27C0  80 9F 0C F8 */	lwz r4, 0xcf8(r31)
/* 804E27C4  7F E3 FB 78 */	mr r3, r31
/* 804E27C8  4B FF E6 01 */	bl Player_actor_Item_Set_RightHandPos_forUki
/* 804E27CC  80 9F 0C F8 */	lwz r4, 0xcf8(r31)
/* 804E27D0  7F E3 FB 78 */	mr r3, r31
/* 804E27D4  4B FF E7 0D */	bl Player_actor_Item_Set_LeftHandPos_forUki
/* 804E27D8  7F E3 FB 78 */	mr r3, r31
/* 804E27DC  4B FF E8 1D */	bl Player_actor_Item_Set_PosSpeed_forUki
/* 804E27E0  7F E3 FB 78 */	mr r3, r31
/* 804E27E4  4B FF E8 3D */	bl Player_actor_Item_Set_AngleSpeedY_forUki
/* 804E27E8  7F E3 FB 78 */	mr r3, r31
/* 804E27EC  4B FF E8 91 */	bl Player_actor_Item_Set_RodTopPos_forUki
/* 804E27F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E27F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E27F8  7C 08 03 A6 */	mtlr r0
/* 804E27FC  38 21 00 10 */	addi r1, r1, 0x10
/* 804E2800  4E 80 00 20 */	blr 
