lbl_804F5D7C:
/* 804F5D7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F5D80  7C 08 02 A6 */	mflr r0
/* 804F5D84  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F5D88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F5D8C  7C 9F 23 78 */	mr r31, r4
/* 804F5D90  93 C1 00 08 */	stw r30, 8(r1)
/* 804F5D94  7C 7E 1B 78 */	mr r30, r3
/* 804F5D98  4B FE 17 45 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804F5D9C  2C 03 00 00 */	cmpwi r3, 0
/* 804F5DA0  40 82 00 18 */	bne lbl_804F5DB8
/* 804F5DA4  7F C3 F3 78 */	mr r3, r30
/* 804F5DA8  7F E4 FB 78 */	mr r4, r31
/* 804F5DAC  38 A0 00 00 */	li r5, 0
/* 804F5DB0  38 C0 00 00 */	li r6, 0
/* 804F5DB4  4B FE 55 3D */	bl Player_actor_Set_FootMark_Base1
lbl_804F5DB8:
/* 804F5DB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F5DBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F5DC0  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F5DC4  7C 08 03 A6 */	mtlr r0
/* 804F5DC8  38 21 00 10 */	addi r1, r1, 0x10
/* 804F5DCC  4E 80 00 20 */	blr 
