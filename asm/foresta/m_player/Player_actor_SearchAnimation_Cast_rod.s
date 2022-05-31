lbl_804F52F4:
/* 804F52F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F52F8  7C 08 02 A6 */	mflr r0
/* 804F52FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F5300  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F5304  7C 9F 23 78 */	mr r31, r4
/* 804F5308  93 C1 00 08 */	stw r30, 8(r1)
/* 804F530C  7C 7E 1B 78 */	mr r30, r3
/* 804F5310  4B FE 21 CD */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804F5314  2C 03 00 00 */	cmpwi r3, 0
/* 804F5318  40 82 00 20 */	bne lbl_804F5338
/* 804F531C  7F C3 F3 78 */	mr r3, r30
/* 804F5320  4B FF FF 8D */	bl Player_actor_SetSound_Cast_rod
/* 804F5324  7F C3 F3 78 */	mr r3, r30
/* 804F5328  7F E4 FB 78 */	mr r4, r31
/* 804F532C  38 A0 00 00 */	li r5, 0
/* 804F5330  38 C0 00 00 */	li r6, 0
/* 804F5334  4B FE 5F BD */	bl Player_actor_Set_FootMark_Base1
lbl_804F5338:
/* 804F5338  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F533C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F5340  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F5344  7C 08 03 A6 */	mtlr r0
/* 804F5348  38 21 00 10 */	addi r1, r1, 0x10
/* 804F534C  4E 80 00 20 */	blr 
