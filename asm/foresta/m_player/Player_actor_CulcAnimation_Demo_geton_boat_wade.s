lbl_805079C0:
/* 805079C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805079C4  7C 08 02 A6 */	mflr r0
/* 805079C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805079CC  4B FF FC D5 */	bl Player_actor_CulcAnimation_Demo_geton_boat_wait
/* 805079D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805079D4  7C 08 03 A6 */	mtlr r0
/* 805079D8  38 21 00 10 */	addi r1, r1, 0x10
/* 805079DC  4E 80 00 20 */	blr 
