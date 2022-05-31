lbl_804E2644:
/* 804E2644  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E2648  7C 08 02 A6 */	mflr r0
/* 804E264C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E2650  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E2654  7C 7F 1B 78 */	mr r31, r3
/* 804E2658  4B FF FD E5 */	bl Player_actor_Item_SetFrame_forUki_vib
/* 804E265C  7F E3 FB 78 */	mr r3, r31
/* 804E2660  4B FF FF 59 */	bl Player_actor_Item_Set_Value_forUki_vib
/* 804E2664  7F E3 FB 78 */	mr r3, r31
/* 804E2668  4B FF FF B1 */	bl Player_actor_Item_Check_Status_forUki_vib
/* 804E266C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E2670  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E2674  7C 08 03 A6 */	mtlr r0
/* 804E2678  38 21 00 10 */	addi r1, r1, 0x10
/* 804E267C  4E 80 00 20 */	blr 
