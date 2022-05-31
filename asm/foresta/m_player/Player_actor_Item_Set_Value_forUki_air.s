lbl_804E2110:
/* 804E2110  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E2114  7C 08 02 A6 */	mflr r0
/* 804E2118  38 80 00 04 */	li r4, 4
/* 804E211C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E2120  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E2124  7C 7F 1B 78 */	mr r31, r3
/* 804E2128  4B FF EC 8D */	bl Player_actor_Item_Set_Command_forUki
/* 804E212C  80 9F 0C F8 */	lwz r4, 0xcf8(r31)
/* 804E2130  7F E3 FB 78 */	mr r3, r31
/* 804E2134  4B FF EC 95 */	bl Player_actor_Item_Set_RightHandPos_forUki
/* 804E2138  7F E3 FB 78 */	mr r3, r31
/* 804E213C  4B FF EE BD */	bl Player_actor_Item_Set_PosSpeed_forUki
/* 804E2140  7F E3 FB 78 */	mr r3, r31
/* 804E2144  4B FF EE DD */	bl Player_actor_Item_Set_AngleSpeedY_forUki
/* 804E2148  7F E3 FB 78 */	mr r3, r31
/* 804E214C  4B FF EF 31 */	bl Player_actor_Item_Set_RodTopPos_forUki
/* 804E2150  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E2154  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E2158  7C 08 03 A6 */	mtlr r0
/* 804E215C  38 21 00 10 */	addi r1, r1, 0x10
/* 804E2160  4E 80 00 20 */	blr 
