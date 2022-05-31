lbl_80504590:
/* 80504590  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80504594  7C 08 02 A6 */	mflr r0
/* 80504598  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050459C  4B FD 1F ED */	bl Player_actor_CulcAnimation_Base2
/* 805045A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805045A4  7C 08 03 A6 */	mtlr r0
/* 805045A8  38 21 00 10 */	addi r1, r1, 0x10
/* 805045AC  4E 80 00 20 */	blr 
