lbl_8050867C:
/* 8050867C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80508680  7C 08 02 A6 */	mflr r0
/* 80508684  90 01 00 14 */	stw r0, 0x14(r1)
/* 80508688  38 81 00 08 */	addi r4, r1, 8
/* 8050868C  4B FC DE FD */	bl Player_actor_CulcAnimation_Base2
/* 80508690  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80508694  7C 08 03 A6 */	mtlr r0
/* 80508698  38 21 00 10 */	addi r1, r1, 0x10
/* 8050869C  4E 80 00 20 */	blr 
