lbl_804EF788:
/* 804EF788  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EF78C  7C 08 02 A6 */	mflr r0
/* 804EF790  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EF794  4B FE 6D F5 */	bl Player_actor_CulcAnimation_Base2
/* 804EF798  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EF79C  7C 08 03 A6 */	mtlr r0
/* 804EF7A0  38 21 00 10 */	addi r1, r1, 0x10
/* 804EF7A4  4E 80 00 20 */	blr 
