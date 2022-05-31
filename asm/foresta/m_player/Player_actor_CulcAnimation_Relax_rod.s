lbl_804F5968:
/* 804F5968  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F596C  7C 08 02 A6 */	mflr r0
/* 804F5970  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F5974  38 81 00 08 */	addi r4, r1, 8
/* 804F5978  4B FE 0C 11 */	bl Player_actor_CulcAnimation_Base2
/* 804F597C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F5980  7C 08 03 A6 */	mtlr r0
/* 804F5984  38 21 00 10 */	addi r1, r1, 0x10
/* 804F5988  4E 80 00 20 */	blr 
