lbl_804E1EC0:
/* 804E1EC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E1EC4  7C 08 02 A6 */	mflr r0
/* 804E1EC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E1ECC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E1ED0  7C 9F 23 78 */	mr r31, r4
/* 804E1ED4  38 80 00 01 */	li r4, 1
/* 804E1ED8  93 C1 00 08 */	stw r30, 8(r1)
/* 804E1EDC  7C 7E 1B 78 */	mr r30, r3
/* 804E1EE0  4B FF EE D5 */	bl Player_actor_Item_Set_Command_forUki
/* 804E1EE4  80 9E 0C F8 */	lwz r4, 0xcf8(r30)
/* 804E1EE8  7F C3 F3 78 */	mr r3, r30
/* 804E1EEC  4B FF EE DD */	bl Player_actor_Item_Set_RightHandPos_forUki
/* 804E1EF0  7F C3 F3 78 */	mr r3, r30
/* 804E1EF4  4B FF F1 05 */	bl Player_actor_Item_Set_PosSpeed_forUki
/* 804E1EF8  7F C3 F3 78 */	mr r3, r30
/* 804E1EFC  4B FF F1 25 */	bl Player_actor_Item_Set_AngleSpeedY_forUki
/* 804E1F00  7F C3 F3 78 */	mr r3, r30
/* 804E1F04  4B FF F1 79 */	bl Player_actor_Item_Set_RodTopPos_forUki
/* 804E1F08  7F C3 F3 78 */	mr r3, r30
/* 804E1F0C  7F E4 FB 78 */	mr r4, r31
/* 804E1F10  4B FF FF 25 */	bl func_804E1E34
/* 804E1F14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E1F18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E1F1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E1F20  7C 08 03 A6 */	mtlr r0
/* 804E1F24  38 21 00 10 */	addi r1, r1, 0x10
/* 804E1F28  4E 80 00 20 */	blr 
