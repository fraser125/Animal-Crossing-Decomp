lbl_8050556C:
/* 8050556C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80505570  7C 08 02 A6 */	mflr r0
/* 80505574  90 01 00 14 */	stw r0, 0x14(r1)
/* 80505578  38 81 00 08 */	addi r4, r1, 8
/* 8050557C  4B FD 10 0D */	bl Player_actor_CulcAnimation_Base2
/* 80505580  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80505584  7C 08 03 A6 */	mtlr r0
/* 80505588  38 21 00 10 */	addi r1, r1, 0x10
/* 8050558C  4E 80 00 20 */	blr 
