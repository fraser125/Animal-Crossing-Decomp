lbl_804F67FC:
/* 804F67FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F6800  7C 08 02 A6 */	mflr r0
/* 804F6804  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F6808  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F680C  7C 9F 23 78 */	mr r31, r4
/* 804F6810  93 C1 00 08 */	stw r30, 8(r1)
/* 804F6814  7C 7E 1B 78 */	mr r30, r3
/* 804F6818  4B FE 0C C5 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804F681C  2C 03 00 00 */	cmpwi r3, 0
/* 804F6820  40 82 00 18 */	bne lbl_804F6838
/* 804F6824  7F C3 F3 78 */	mr r3, r30
/* 804F6828  7F E4 FB 78 */	mr r4, r31
/* 804F682C  38 A0 00 00 */	li r5, 0
/* 804F6830  38 C0 00 00 */	li r6, 0
/* 804F6834  4B FE 4A BD */	bl Player_actor_Set_FootMark_Base1
lbl_804F6838:
/* 804F6838  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F683C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F6840  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F6844  7C 08 03 A6 */	mtlr r0
/* 804F6848  38 21 00 10 */	addi r1, r1, 0x10
/* 804F684C  4E 80 00 20 */	blr 
