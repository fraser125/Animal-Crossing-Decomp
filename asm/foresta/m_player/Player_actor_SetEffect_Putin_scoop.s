lbl_804F98F4:
/* 804F98F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F98F8  7C 08 02 A6 */	mflr r0
/* 804F98FC  38 A3 0D 18 */	addi r5, r3, 0xd18
/* 804F9900  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F9904  4B FF E5 D5 */	bl Player_actor_SetEffectHit_Fill_scoop
/* 804F9908  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F990C  7C 08 03 A6 */	mtlr r0
/* 804F9910  38 21 00 10 */	addi r1, r1, 0x10
/* 804F9914  4E 80 00 20 */	blr 
