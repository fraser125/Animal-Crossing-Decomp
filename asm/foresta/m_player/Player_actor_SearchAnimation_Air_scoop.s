lbl_804F94FC:
/* 804F94FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F9500  7C 08 02 A6 */	mflr r0
/* 804F9504  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F9508  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F950C  7C 9F 23 78 */	mr r31, r4
/* 804F9510  93 C1 00 08 */	stw r30, 8(r1)
/* 804F9514  7C 7E 1B 78 */	mr r30, r3
/* 804F9518  4B FD DF C5 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804F951C  2C 03 00 00 */	cmpwi r3, 0
/* 804F9520  40 82 00 20 */	bne lbl_804F9540
/* 804F9524  7F C3 F3 78 */	mr r3, r30
/* 804F9528  4B FF FF 8D */	bl Player_actor_SetSound_Air_scoop
/* 804F952C  7F C3 F3 78 */	mr r3, r30
/* 804F9530  7F E4 FB 78 */	mr r4, r31
/* 804F9534  38 A0 00 00 */	li r5, 0
/* 804F9538  38 C0 00 00 */	li r6, 0
/* 804F953C  4B FE 1D B5 */	bl Player_actor_Set_FootMark_Base1
lbl_804F9540:
/* 804F9540  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F9544  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F9548  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F954C  7C 08 03 A6 */	mtlr r0
/* 804F9550  38 21 00 10 */	addi r1, r1, 0x10
/* 804F9554  4E 80 00 20 */	blr 
