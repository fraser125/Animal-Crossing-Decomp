lbl_804E2380:
/* 804E2380  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E2384  7C 08 02 A6 */	mflr r0
/* 804E2388  38 80 00 06 */	li r4, 6
/* 804E238C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E2390  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E2394  7C 7F 1B 78 */	mr r31, r3
/* 804E2398  4B FF EA 1D */	bl Player_actor_Item_Set_Command_forUki
/* 804E239C  80 9F 0C F8 */	lwz r4, 0xcf8(r31)
/* 804E23A0  7F E3 FB 78 */	mr r3, r31
/* 804E23A4  4B FF EA 25 */	bl Player_actor_Item_Set_RightHandPos_forUki
/* 804E23A8  7F E3 FB 78 */	mr r3, r31
/* 804E23AC  4B FF EC 4D */	bl Player_actor_Item_Set_PosSpeed_forUki
/* 804E23B0  7F E3 FB 78 */	mr r3, r31
/* 804E23B4  4B FF EC 6D */	bl Player_actor_Item_Set_AngleSpeedY_forUki
/* 804E23B8  7F E3 FB 78 */	mr r3, r31
/* 804E23BC  4B FF EC C1 */	bl Player_actor_Item_Set_RodTopPos_forUki
/* 804E23C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E23C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E23C8  7C 08 03 A6 */	mtlr r0
/* 804E23CC  38 21 00 10 */	addi r1, r1, 0x10
/* 804E23D0  4E 80 00 20 */	blr 
