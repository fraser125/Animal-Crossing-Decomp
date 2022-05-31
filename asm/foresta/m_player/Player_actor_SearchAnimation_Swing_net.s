lbl_804F3470:
/* 804F3470  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F3474  7C 08 02 A6 */	mflr r0
/* 804F3478  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F347C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F3480  7C 9F 23 78 */	mr r31, r4
/* 804F3484  93 C1 00 08 */	stw r30, 8(r1)
/* 804F3488  7C 7E 1B 78 */	mr r30, r3
/* 804F348C  4B FE 40 51 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804F3490  2C 03 00 00 */	cmpwi r3, 0
/* 804F3494  40 82 00 18 */	bne lbl_804F34AC
/* 804F3498  7F C3 F3 78 */	mr r3, r30
/* 804F349C  7F E4 FB 78 */	mr r4, r31
/* 804F34A0  38 A0 00 00 */	li r5, 0
/* 804F34A4  38 C0 00 00 */	li r6, 0
/* 804F34A8  4B FE 7E 49 */	bl Player_actor_Set_FootMark_Base1
lbl_804F34AC:
/* 804F34AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F34B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F34B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F34B8  7C 08 03 A6 */	mtlr r0
/* 804F34BC  38 21 00 10 */	addi r1, r1, 0x10
/* 804F34C0  4E 80 00 20 */	blr 
