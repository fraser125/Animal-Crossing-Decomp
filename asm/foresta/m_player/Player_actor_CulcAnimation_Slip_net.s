lbl_804F1CA0:
/* 804F1CA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F1CA4  7C 08 02 A6 */	mflr r0
/* 804F1CA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F1CAC  38 81 00 08 */	addi r4, r1, 8
/* 804F1CB0  4B FE 48 D9 */	bl Player_actor_CulcAnimation_Base2
/* 804F1CB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F1CB8  7C 08 03 A6 */	mtlr r0
/* 804F1CBC  38 21 00 10 */	addi r1, r1, 0x10
/* 804F1CC0  4E 80 00 20 */	blr 
