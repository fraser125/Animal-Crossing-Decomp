lbl_804E25B8:
/* 804E25B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E25BC  7C 08 02 A6 */	mflr r0
/* 804E25C0  38 80 00 06 */	li r4, 6
/* 804E25C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E25C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E25CC  7C 7F 1B 78 */	mr r31, r3
/* 804E25D0  4B FF E7 E5 */	bl Player_actor_Item_Set_Command_forUki
/* 804E25D4  80 9F 0C F8 */	lwz r4, 0xcf8(r31)
/* 804E25D8  7F E3 FB 78 */	mr r3, r31
/* 804E25DC  4B FF E7 ED */	bl Player_actor_Item_Set_RightHandPos_forUki
/* 804E25E0  80 9F 0C F8 */	lwz r4, 0xcf8(r31)
/* 804E25E4  7F E3 FB 78 */	mr r3, r31
/* 804E25E8  4B FF E8 F9 */	bl Player_actor_Item_Set_LeftHandPos_forUki
/* 804E25EC  7F E3 FB 78 */	mr r3, r31
/* 804E25F0  4B FF EA 09 */	bl Player_actor_Item_Set_PosSpeed_forUki
/* 804E25F4  7F E3 FB 78 */	mr r3, r31
/* 804E25F8  4B FF EA 29 */	bl Player_actor_Item_Set_AngleSpeedY_forUki
/* 804E25FC  7F E3 FB 78 */	mr r3, r31
/* 804E2600  4B FF EA 7D */	bl Player_actor_Item_Set_RodTopPos_forUki
/* 804E2604  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E2608  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E260C  7C 08 03 A6 */	mtlr r0
/* 804E2610  38 21 00 10 */	addi r1, r1, 0x10
/* 804E2614  4E 80 00 20 */	blr 
