lbl_804F8B94:
/* 804F8B94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F8B98  7C 08 02 A6 */	mflr r0
/* 804F8B9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F8BA0  4B FF FA B9 */	bl Player_actor_SetEffectHit_Reflect_scoop
/* 804F8BA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F8BA8  7C 08 03 A6 */	mtlr r0
/* 804F8BAC  38 21 00 10 */	addi r1, r1, 0x10
/* 804F8BB0  4E 80 00 20 */	blr 
