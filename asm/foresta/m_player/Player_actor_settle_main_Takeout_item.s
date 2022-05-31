lbl_804FC54C:
/* 804FC54C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FC550  7C 08 02 A6 */	mflr r0
/* 804FC554  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FC558  4B FD E8 9D */	bl Player_actor_SetEffect_forTakeout_item
/* 804FC55C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FC560  7C 08 03 A6 */	mtlr r0
/* 804FC564  38 21 00 10 */	addi r1, r1, 0x10
/* 804FC568  4E 80 00 20 */	blr 
