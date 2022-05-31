lbl_804E2030:
/* 804E2030  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E2034  7C 08 02 A6 */	mflr r0
/* 804E2038  38 80 00 03 */	li r4, 3
/* 804E203C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E2040  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E2044  7C 7F 1B 78 */	mr r31, r3
/* 804E2048  4B FF ED 6D */	bl Player_actor_Item_Set_Command_forUki
/* 804E204C  80 9F 0C F8 */	lwz r4, 0xcf8(r31)
/* 804E2050  7F E3 FB 78 */	mr r3, r31
/* 804E2054  4B FF ED 75 */	bl Player_actor_Item_Set_RightHandPos_forUki
/* 804E2058  7F E3 FB 78 */	mr r3, r31
/* 804E205C  4B FF EF 9D */	bl Player_actor_Item_Set_PosSpeed_forUki
/* 804E2060  7F E3 FB 78 */	mr r3, r31
/* 804E2064  4B FF EF BD */	bl Player_actor_Item_Set_AngleSpeedY_forUki
/* 804E2068  7F E3 FB 78 */	mr r3, r31
/* 804E206C  4B FF F0 11 */	bl Player_actor_Item_Set_RodTopPos_forUki
/* 804E2070  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E2074  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E2078  7C 08 03 A6 */	mtlr r0
/* 804E207C  38 21 00 10 */	addi r1, r1, 0x10
/* 804E2080  4E 80 00 20 */	blr 
