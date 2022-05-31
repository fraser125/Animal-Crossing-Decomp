lbl_805079A0:
/* 805079A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805079A4  7C 08 02 A6 */	mflr r0
/* 805079A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805079AC  4B FF FC F1 */	bl Player_actor_Movement_Demo_geton_boat_wait
/* 805079B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805079B4  7C 08 03 A6 */	mtlr r0
/* 805079B8  38 21 00 10 */	addi r1, r1, 0x10
/* 805079BC  4E 80 00 20 */	blr 
