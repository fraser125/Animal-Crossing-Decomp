lbl_804E22E0:
/* 804E22E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E22E4  7C 08 02 A6 */	mflr r0
/* 804E22E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E22EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E22F0  7C 7F 1B 78 */	mr r31, r3
/* 804E22F4  80 83 0C F8 */	lwz r4, 0xcf8(r3)
/* 804E22F8  4B FF EA D1 */	bl Player_actor_Item_Set_RightHandPos_forUki
/* 804E22FC  7F E3 FB 78 */	mr r3, r31
/* 804E2300  4B FF EC F9 */	bl Player_actor_Item_Set_PosSpeed_forUki
/* 804E2304  7F E3 FB 78 */	mr r3, r31
/* 804E2308  4B FF ED 19 */	bl Player_actor_Item_Set_AngleSpeedY_forUki
/* 804E230C  7F E3 FB 78 */	mr r3, r31
/* 804E2310  4B FF ED 6D */	bl Player_actor_Item_Set_RodTopPos_forUki
/* 804E2314  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E2318  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E231C  7C 08 03 A6 */	mtlr r0
/* 804E2320  38 21 00 10 */	addi r1, r1, 0x10
/* 804E2324  4E 80 00 20 */	blr 
