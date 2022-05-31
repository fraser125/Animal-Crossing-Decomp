lbl_804F0830:
/* 804F0830  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F0834  7C 08 02 A6 */	mflr r0
/* 804F0838  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F083C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F0840  7C 9F 23 78 */	mr r31, r4
/* 804F0844  93 C1 00 08 */	stw r30, 8(r1)
/* 804F0848  7C 7E 1B 78 */	mr r30, r3
/* 804F084C  4B FE 6C 91 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804F0850  2C 03 00 00 */	cmpwi r3, 0
/* 804F0854  40 82 00 2C */	bne lbl_804F0880
/* 804F0858  7F C3 F3 78 */	mr r3, r30
/* 804F085C  7F E4 FB 78 */	mr r4, r31
/* 804F0860  4B FF FF 8D */	bl Player_actor_SetEffect_Air_axe
/* 804F0864  7F C3 F3 78 */	mr r3, r30
/* 804F0868  4B FF FF A5 */	bl Player_actor_SetSound_Air_axe
/* 804F086C  7F C3 F3 78 */	mr r3, r30
/* 804F0870  7F E4 FB 78 */	mr r4, r31
/* 804F0874  38 A0 00 00 */	li r5, 0
/* 804F0878  38 C0 00 00 */	li r6, 0
/* 804F087C  4B FE AA 75 */	bl Player_actor_Set_FootMark_Base1
lbl_804F0880:
/* 804F0880  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F0884  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F0888  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F088C  7C 08 03 A6 */	mtlr r0
/* 804F0890  38 21 00 10 */	addi r1, r1, 0x10
/* 804F0894  4E 80 00 20 */	blr 
