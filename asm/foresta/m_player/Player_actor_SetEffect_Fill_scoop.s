lbl_804F80F0:
/* 804F80F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F80F4  7C 08 02 A6 */	mflr r0
/* 804F80F8  38 A3 0D 18 */	addi r5, r3, 0xd18
/* 804F80FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F8100  4B FF FD D9 */	bl Player_actor_SetEffectHit_Fill_scoop
/* 804F8104  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F8108  7C 08 03 A6 */	mtlr r0
/* 804F810C  38 21 00 10 */	addi r1, r1, 0x10
/* 804F8110  4E 80 00 20 */	blr 
