lbl_803D9670:
/* 803D9670  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D9674  7C 08 02 A6 */	mflr r0
/* 803D9678  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D967C  4B FF FF C5 */	bl get_player_actor_withoutCheck
/* 803D9680  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D9684  80 63 0C F8 */	lwz r3, 0xcf8(r3)
/* 803D9688  7C 08 03 A6 */	mtlr r0
/* 803D968C  38 21 00 10 */	addi r1, r1, 0x10
/* 803D9690  4E 80 00 20 */	blr 
