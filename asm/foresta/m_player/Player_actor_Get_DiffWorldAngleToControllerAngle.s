lbl_804D7318:
/* 804D7318  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D731C  7C 08 02 A6 */	mflr r0
/* 804D7320  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D7324  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D7328  AB E3 00 36 */	lha r31, 0x36(r3)
/* 804D732C  4B FF D7 A1 */	bl Player_actor_GetController_move_angle
/* 804D7330  38 03 40 00 */	addi r0, r3, 0x4000
/* 804D7334  7C 00 07 34 */	extsh r0, r0
/* 804D7338  7C 00 F8 50 */	subf r0, r0, r31
/* 804D733C  7C 00 07 34 */	extsh r0, r0
/* 804D7340  7C 03 FE 70 */	srawi r3, r0, 0x1f
/* 804D7344  7C 60 02 78 */	xor r0, r3, r0
/* 804D7348  7C 63 00 50 */	subf r3, r3, r0
/* 804D734C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D7350  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D7354  7C 08 03 A6 */	mtlr r0
/* 804D7358  38 21 00 10 */	addi r1, r1, 0x10
/* 804D735C  4E 80 00 20 */	blr 
