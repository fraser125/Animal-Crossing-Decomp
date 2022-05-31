lbl_80503FDC:
/* 80503FDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80503FE0  7C 08 02 A6 */	mflr r0
/* 80503FE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80503FE8  4B FD 25 A1 */	bl Player_actor_CulcAnimation_Base2
/* 80503FEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80503FF0  7C 08 03 A6 */	mtlr r0
/* 80503FF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80503FF8  4E 80 00 20 */	blr 
