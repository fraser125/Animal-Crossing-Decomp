lbl_804E7260:
/* 804E7260  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E7264  7C 08 02 A6 */	mflr r0
/* 804E7268  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E726C  4B FF FB 2D */	bl Player_actor_CulcAnimation_Run
/* 804E7270  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E7274  7C 08 03 A6 */	mtlr r0
/* 804E7278  38 21 00 10 */	addi r1, r1, 0x10
/* 804E727C  4E 80 00 20 */	blr 
