lbl_804E1F74:
/* 804E1F74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E1F78  7C 08 02 A6 */	mflr r0
/* 804E1F7C  38 80 00 02 */	li r4, 2
/* 804E1F80  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E1F84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E1F88  7C 7F 1B 78 */	mr r31, r3
/* 804E1F8C  4B FF EE 29 */	bl Player_actor_Item_Set_Command_forUki
/* 804E1F90  80 9F 0C F8 */	lwz r4, 0xcf8(r31)
/* 804E1F94  7F E3 FB 78 */	mr r3, r31
/* 804E1F98  4B FF EE 31 */	bl Player_actor_Item_Set_RightHandPos_forUki
/* 804E1F9C  7F E3 FB 78 */	mr r3, r31
/* 804E1FA0  4B FF F0 59 */	bl Player_actor_Item_Set_PosSpeed_forUki
/* 804E1FA4  7F E3 FB 78 */	mr r3, r31
/* 804E1FA8  4B FF F0 79 */	bl Player_actor_Item_Set_AngleSpeedY_forUki
/* 804E1FAC  7F E3 FB 78 */	mr r3, r31
/* 804E1FB0  4B FF F0 CD */	bl Player_actor_Item_Set_RodTopPos_forUki
/* 804E1FB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E1FB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E1FBC  7C 08 03 A6 */	mtlr r0
/* 804E1FC0  38 21 00 10 */	addi r1, r1, 0x10
/* 804E1FC4  4E 80 00 20 */	blr 
