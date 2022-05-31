lbl_804FA210:
/* 804FA210  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FA214  7C 08 02 A6 */	mflr r0
/* 804FA218  38 A3 0D 18 */	addi r5, r3, 0xd18
/* 804FA21C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FA220  80 C3 0C F8 */	lwz r6, 0xcf8(r3)
/* 804FA224  4B FF D2 51 */	bl Player_actor_SetEffectHit_Dig_scoop
/* 804FA228  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FA22C  7C 08 03 A6 */	mtlr r0
/* 804FA230  38 21 00 10 */	addi r1, r1, 0x10
/* 804FA234  4E 80 00 20 */	blr 
