lbl_804F4D88:
/* 804F4D88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F4D8C  7C 08 02 A6 */	mflr r0
/* 804F4D90  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F4D94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F4D98  7C 9F 23 78 */	mr r31, r4
/* 804F4D9C  93 C1 00 08 */	stw r30, 8(r1)
/* 804F4DA0  7C 7E 1B 78 */	mr r30, r3
/* 804F4DA4  4B FE 27 39 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804F4DA8  2C 03 00 00 */	cmpwi r3, 0
/* 804F4DAC  40 82 00 18 */	bne lbl_804F4DC4
/* 804F4DB0  7F C3 F3 78 */	mr r3, r30
/* 804F4DB4  7F E4 FB 78 */	mr r4, r31
/* 804F4DB8  38 A0 00 00 */	li r5, 0
/* 804F4DBC  38 C0 00 00 */	li r6, 0
/* 804F4DC0  4B FE 65 31 */	bl Player_actor_Set_FootMark_Base1
lbl_804F4DC4:
/* 804F4DC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F4DC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F4DCC  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F4DD0  7C 08 03 A6 */	mtlr r0
/* 804F4DD4  38 21 00 10 */	addi r1, r1, 0x10
/* 804F4DD8  4E 80 00 20 */	blr 
