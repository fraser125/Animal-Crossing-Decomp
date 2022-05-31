lbl_804E1BF8:
/* 804E1BF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E1BFC  7C 08 02 A6 */	mflr r0
/* 804E1C00  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E1C04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E1C08  7C 7F 1B 78 */	mr r31, r3
/* 804E1C0C  4B FF F0 01 */	bl Player_actor_Item_CulcAnimation_Base2
/* 804E1C10  7C 60 1B 78 */	mr r0, r3
/* 804E1C14  7F E3 FB 78 */	mr r3, r31
/* 804E1C18  7C 1F 03 78 */	mr r31, r0
/* 804E1C1C  4B FF FF 41 */	bl Player_actor_Item_net_CulcJointAngle_dummy_net
/* 804E1C20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E1C24  7F E3 FB 78 */	mr r3, r31
/* 804E1C28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E1C2C  7C 08 03 A6 */	mtlr r0
/* 804E1C30  38 21 00 10 */	addi r1, r1, 0x10
/* 804E1C34  4E 80 00 20 */	blr 
