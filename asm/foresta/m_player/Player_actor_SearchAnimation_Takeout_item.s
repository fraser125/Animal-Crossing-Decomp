lbl_804FC5D4:
/* 804FC5D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FC5D8  7C 08 02 A6 */	mflr r0
/* 804FC5DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FC5E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FC5E4  7C 9F 23 78 */	mr r31, r4
/* 804FC5E8  93 C1 00 08 */	stw r30, 8(r1)
/* 804FC5EC  7C 7E 1B 78 */	mr r30, r3
/* 804FC5F0  4B FD AE ED */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804FC5F4  2C 03 00 00 */	cmpwi r3, 0
/* 804FC5F8  40 82 00 18 */	bne lbl_804FC610
/* 804FC5FC  7F C3 F3 78 */	mr r3, r30
/* 804FC600  7F E4 FB 78 */	mr r4, r31
/* 804FC604  38 A0 00 00 */	li r5, 0
/* 804FC608  38 C0 00 00 */	li r6, 0
/* 804FC60C  4B FD EC E5 */	bl Player_actor_Set_FootMark_Base1
lbl_804FC610:
/* 804FC610  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FC614  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FC618  83 C1 00 08 */	lwz r30, 8(r1)
/* 804FC61C  7C 08 03 A6 */	mtlr r0
/* 804FC620  38 21 00 10 */	addi r1, r1, 0x10
/* 804FC624  4E 80 00 20 */	blr 
