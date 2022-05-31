lbl_804FA2B0:
/* 804FA2B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FA2B4  7C 08 02 A6 */	mflr r0
/* 804FA2B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FA2BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FA2C0  7C 9F 23 78 */	mr r31, r4
/* 804FA2C4  93 C1 00 08 */	stw r30, 8(r1)
/* 804FA2C8  7C 7E 1B 78 */	mr r30, r3
/* 804FA2CC  4B FD D2 11 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804FA2D0  2C 03 00 00 */	cmpwi r3, 0
/* 804FA2D4  40 82 00 34 */	bne lbl_804FA308
/* 804FA2D8  7F C3 F3 78 */	mr r3, r30
/* 804FA2DC  7F E4 FB 78 */	mr r4, r31
/* 804FA2E0  4B FF FF 31 */	bl Player_actor_SetEffect_Get_scoop
/* 804FA2E4  7F C3 F3 78 */	mr r3, r30
/* 804FA2E8  4B FF FF 51 */	bl Player_actor_Put_Hole_Get_scoop
/* 804FA2EC  7F C3 F3 78 */	mr r3, r30
/* 804FA2F0  4B FF D4 59 */	bl Player_actor_SetSound_Dig_scoop
/* 804FA2F4  7F C3 F3 78 */	mr r3, r30
/* 804FA2F8  7F E4 FB 78 */	mr r4, r31
/* 804FA2FC  38 A0 00 00 */	li r5, 0
/* 804FA300  38 C0 00 00 */	li r6, 0
/* 804FA304  4B FE 0F ED */	bl Player_actor_Set_FootMark_Base1
lbl_804FA308:
/* 804FA308  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FA30C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FA310  83 C1 00 08 */	lwz r30, 8(r1)
/* 804FA314  7C 08 03 A6 */	mtlr r0
/* 804FA318  38 21 00 10 */	addi r1, r1, 0x10
/* 804FA31C  4E 80 00 20 */	blr 
