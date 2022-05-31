lbl_804E2344:
/* 804E2344  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E2348  7C 08 02 A6 */	mflr r0
/* 804E234C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E2350  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E2354  7C 7F 1B 78 */	mr r31, r3
/* 804E2358  4B FF FE 45 */	bl Player_actor_Item_SetFrame_forUki_relax
/* 804E235C  7F E3 FB 78 */	mr r3, r31
/* 804E2360  4B FF FF 81 */	bl Player_actor_Item_Set_Value_forUki_relax
/* 804E2364  7F E3 FB 78 */	mr r3, r31
/* 804E2368  4B FF FF C1 */	bl Player_actor_Item_Check_Status_forUki_relax
/* 804E236C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E2370  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E2374  7C 08 03 A6 */	mtlr r0
/* 804E2378  38 21 00 10 */	addi r1, r1, 0x10
/* 804E237C  4E 80 00 20 */	blr 
