lbl_804E2400:
/* 804E2400  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E2404  7C 08 02 A6 */	mflr r0
/* 804E2408  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E240C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E2410  7C 7F 1B 78 */	mr r31, r3
/* 804E2414  4B FF E7 D5 */	bl Player_actor_Item_CulcAnimation_Base
/* 804E2418  7F E3 FB 78 */	mr r3, r31
/* 804E241C  4B FF FF 65 */	bl Player_actor_Item_Set_Value_forUki_collect
/* 804E2420  7F E3 FB 78 */	mr r3, r31
/* 804E2424  4B FF FF B1 */	bl Player_actor_Item_Check_Status_forUki_collect
/* 804E2428  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E242C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E2430  7C 08 03 A6 */	mtlr r0
/* 804E2434  38 21 00 10 */	addi r1, r1, 0x10
/* 804E2438  4E 80 00 20 */	blr 
