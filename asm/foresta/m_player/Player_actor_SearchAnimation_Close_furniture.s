lbl_804EBAF8:
/* 804EBAF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EBAFC  7C 08 02 A6 */	mflr r0
/* 804EBB00  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EBB04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EBB08  7C 9F 23 78 */	mr r31, r4
/* 804EBB0C  93 C1 00 08 */	stw r30, 8(r1)
/* 804EBB10  7C 7E 1B 78 */	mr r30, r3
/* 804EBB14  4B FE B9 C9 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804EBB18  2C 03 00 00 */	cmpwi r3, 0
/* 804EBB1C  40 82 00 18 */	bne lbl_804EBB34
/* 804EBB20  7F C3 F3 78 */	mr r3, r30
/* 804EBB24  7F E4 FB 78 */	mr r4, r31
/* 804EBB28  38 A0 00 00 */	li r5, 0
/* 804EBB2C  38 C0 00 00 */	li r6, 0
/* 804EBB30  4B FE F7 C1 */	bl Player_actor_Set_FootMark_Base1
lbl_804EBB34:
/* 804EBB34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EBB38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EBB3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804EBB40  7C 08 03 A6 */	mtlr r0
/* 804EBB44  38 21 00 10 */	addi r1, r1, 0x10
/* 804EBB48  4E 80 00 20 */	blr 
