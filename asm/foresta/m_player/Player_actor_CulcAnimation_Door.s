lbl_804E97D4:
/* 804E97D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E97D8  7C 08 02 A6 */	mflr r0
/* 804E97DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E97E0  4B FE CD A9 */	bl Player_actor_CulcAnimation_Base2
/* 804E97E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E97E8  7C 08 03 A6 */	mtlr r0
/* 804E97EC  38 21 00 10 */	addi r1, r1, 0x10
/* 804E97F0  4E 80 00 20 */	blr 
