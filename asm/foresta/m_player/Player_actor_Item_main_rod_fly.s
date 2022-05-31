lbl_804E270C:
/* 804E270C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E2710  7C 08 02 A6 */	mflr r0
/* 804E2714  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E2718  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E271C  7C 7F 1B 78 */	mr r31, r3
/* 804E2720  4B FF E4 C9 */	bl Player_actor_Item_CulcAnimation_Base
/* 804E2724  7F E3 FB 78 */	mr r3, r31
/* 804E2728  4B FF FF 59 */	bl Player_actor_Item_Set_Value_forUki_fly
/* 804E272C  7F E3 FB 78 */	mr r3, r31
/* 804E2730  4B FF FF B1 */	bl Player_actor_Item_Check_Status_forUki_fly
/* 804E2734  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E2738  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E273C  7C 08 03 A6 */	mtlr r0
/* 804E2740  38 21 00 10 */	addi r1, r1, 0x10
/* 804E2744  4E 80 00 20 */	blr 
