lbl_804D72D4:
/* 804D72D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D72D8  7C 08 02 A6 */	mflr r0
/* 804D72DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D72E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D72E4  4B EA 77 CD */	bl getCamera2AngleY
/* 804D72E8  7C 7F 07 34 */	extsh r31, r3
/* 804D72EC  4B FF D7 E1 */	bl Player_actor_GetController_move_angle
/* 804D72F0  7C 63 07 34 */	extsh r3, r3
/* 804D72F4  3C 03 00 01 */	addis r0, r3, 1
/* 804D72F8  7C 60 FA 14 */	add r3, r0, r31
/* 804D72FC  38 63 C0 00 */	addi r3, r3, -16384
/* 804D7300  7C 63 07 34 */	extsh r3, r3
/* 804D7304  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D7308  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D730C  7C 08 03 A6 */	mtlr r0
/* 804D7310  38 21 00 10 */	addi r1, r1, 0x10
/* 804D7314  4E 80 00 20 */	blr 
