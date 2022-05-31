lbl_804F760C:
/* 804F760C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F7610  7C 08 02 A6 */	mflr r0
/* 804F7614  38 A3 0D 18 */	addi r5, r3, 0xd18
/* 804F7618  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F761C  80 C3 0C F8 */	lwz r6, 0xcf8(r3)
/* 804F7620  4B FF FE 55 */	bl Player_actor_SetEffectHit_Dig_scoop
/* 804F7624  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F7628  7C 08 03 A6 */	mtlr r0
/* 804F762C  38 21 00 10 */	addi r1, r1, 0x10
/* 804F7630  4E 80 00 20 */	blr 
