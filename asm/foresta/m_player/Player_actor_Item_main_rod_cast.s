lbl_804E20B8:
/* 804E20B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E20BC  7C 08 02 A6 */	mflr r0
/* 804E20C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E20C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E20C8  93 C1 00 08 */	stw r30, 8(r1)
/* 804E20CC  7C 7E 1B 78 */	mr r30, r3
/* 804E20D0  4B FF EB 19 */	bl Player_actor_Item_CulcAnimation_Base
/* 804E20D4  7F C3 F3 78 */	mr r3, r30
/* 804E20D8  4B FF FF 59 */	bl Player_actor_Item_Set_Value_forUki_cast
/* 804E20DC  7F C3 F3 78 */	mr r3, r30
/* 804E20E0  4B FF FF A5 */	bl Player_actor_Item_Check_Status_forUki_cast
/* 804E20E4  80 9E 0C F8 */	lwz r4, 0xcf8(r30)
/* 804E20E8  7C 7F 1B 78 */	mr r31, r3
/* 804E20EC  7F C3 F3 78 */	mr r3, r30
/* 804E20F0  4B FF FF 11 */	bl Player_actor_Item_Set_CastGoalPoint_forUki_cast
/* 804E20F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E20F8  7F E3 FB 78 */	mr r3, r31
/* 804E20FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E2100  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E2104  7C 08 03 A6 */	mtlr r0
/* 804E2108  38 21 00 10 */	addi r1, r1, 0x10
/* 804E210C  4E 80 00 20 */	blr 
