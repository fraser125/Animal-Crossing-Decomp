lbl_804F567C:
/* 804F567C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F5680  7C 08 02 A6 */	mflr r0
/* 804F5684  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F5688  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F568C  7C 9F 23 78 */	mr r31, r4
/* 804F5690  93 C1 00 08 */	stw r30, 8(r1)
/* 804F5694  7C 7E 1B 78 */	mr r30, r3
/* 804F5698  4B FE 1E 45 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804F569C  2C 03 00 00 */	cmpwi r3, 0
/* 804F56A0  40 82 00 20 */	bne lbl_804F56C0
/* 804F56A4  7F C3 F3 78 */	mr r3, r30
/* 804F56A8  4B FF FF 8D */	bl Player_actor_SetSound_Air_rod
/* 804F56AC  7F C3 F3 78 */	mr r3, r30
/* 804F56B0  7F E4 FB 78 */	mr r4, r31
/* 804F56B4  38 A0 00 00 */	li r5, 0
/* 804F56B8  38 C0 00 00 */	li r6, 0
/* 804F56BC  4B FE 5C 35 */	bl Player_actor_Set_FootMark_Base1
lbl_804F56C0:
/* 804F56C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F56C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F56C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F56CC  7C 08 03 A6 */	mtlr r0
/* 804F56D0  38 21 00 10 */	addi r1, r1, 0x10
/* 804F56D4  4E 80 00 20 */	blr 
