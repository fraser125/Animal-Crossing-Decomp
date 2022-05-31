lbl_804EB528:
/* 804EB528  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EB52C  7C 08 02 A6 */	mflr r0
/* 804EB530  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EB534  4B FE B6 01 */	bl Player_actor_Excute_Corect_forStand
/* 804EB538  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EB53C  7C 08 03 A6 */	mtlr r0
/* 804EB540  38 21 00 10 */	addi r1, r1, 0x10
/* 804EB544  4E 80 00 20 */	blr 
