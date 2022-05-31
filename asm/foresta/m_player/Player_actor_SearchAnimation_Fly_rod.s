lbl_804F6328:
/* 804F6328  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F632C  7C 08 02 A6 */	mflr r0
/* 804F6330  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F6334  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F6338  7C 9F 23 78 */	mr r31, r4
/* 804F633C  93 C1 00 08 */	stw r30, 8(r1)
/* 804F6340  7C 7E 1B 78 */	mr r30, r3
/* 804F6344  4B FE 11 99 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804F6348  2C 03 00 00 */	cmpwi r3, 0
/* 804F634C  40 82 00 18 */	bne lbl_804F6364
/* 804F6350  7F C3 F3 78 */	mr r3, r30
/* 804F6354  7F E4 FB 78 */	mr r4, r31
/* 804F6358  38 A0 00 00 */	li r5, 0
/* 804F635C  38 C0 00 00 */	li r6, 0
/* 804F6360  4B FE 4F 91 */	bl Player_actor_Set_FootMark_Base1
lbl_804F6364:
/* 804F6364  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F6368  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F636C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F6370  7C 08 03 A6 */	mtlr r0
/* 804F6374  38 21 00 10 */	addi r1, r1, 0x10
/* 804F6378  4E 80 00 20 */	blr 
