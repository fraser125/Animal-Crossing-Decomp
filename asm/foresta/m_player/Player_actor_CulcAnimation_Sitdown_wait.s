lbl_804EF470:
/* 804EF470  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EF474  7C 08 02 A6 */	mflr r0
/* 804EF478  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EF47C  38 81 00 08 */	addi r4, r1, 8
/* 804EF480  4B FE 71 09 */	bl Player_actor_CulcAnimation_Base2
/* 804EF484  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EF488  7C 08 03 A6 */	mtlr r0
/* 804EF48C  38 21 00 10 */	addi r1, r1, 0x10
/* 804EF490  4E 80 00 20 */	blr 
