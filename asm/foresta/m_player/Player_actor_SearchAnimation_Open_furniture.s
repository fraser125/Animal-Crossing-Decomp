lbl_804EB4D4:
/* 804EB4D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EB4D8  7C 08 02 A6 */	mflr r0
/* 804EB4DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EB4E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EB4E4  7C 9F 23 78 */	mr r31, r4
/* 804EB4E8  93 C1 00 08 */	stw r30, 8(r1)
/* 804EB4EC  7C 7E 1B 78 */	mr r30, r3
/* 804EB4F0  4B FE BF ED */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804EB4F4  2C 03 00 00 */	cmpwi r3, 0
/* 804EB4F8  40 82 00 18 */	bne lbl_804EB510
/* 804EB4FC  7F C3 F3 78 */	mr r3, r30
/* 804EB500  7F E4 FB 78 */	mr r4, r31
/* 804EB504  38 A0 00 00 */	li r5, 0
/* 804EB508  38 C0 00 00 */	li r6, 0
/* 804EB50C  4B FE FD E5 */	bl Player_actor_Set_FootMark_Base1
lbl_804EB510:
/* 804EB510  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EB514  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EB518  83 C1 00 08 */	lwz r30, 8(r1)
/* 804EB51C  7C 08 03 A6 */	mtlr r0
/* 804EB520  38 21 00 10 */	addi r1, r1, 0x10
/* 804EB524  4E 80 00 20 */	blr 
