lbl_804F0CB4:
/* 804F0CB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F0CB8  7C 08 02 A6 */	mflr r0
/* 804F0CBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F0CC0  4B FF EF E9 */	bl Player_actor_SetEffectHit_axe_common
/* 804F0CC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F0CC8  7C 08 03 A6 */	mtlr r0
/* 804F0CCC  38 21 00 10 */	addi r1, r1, 0x10
/* 804F0CD0  4E 80 00 20 */	blr 
