lbl_804FE064:
/* 804FE064  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FE068  7C 08 02 A6 */	mflr r0
/* 804FE06C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FE070  4B FD 85 19 */	bl Player_actor_CulcAnimation_Base2
/* 804FE074  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FE078  7C 08 03 A6 */	mtlr r0
/* 804FE07C  38 21 00 10 */	addi r1, r1, 0x10
/* 804FE080  4E 80 00 20 */	blr 
