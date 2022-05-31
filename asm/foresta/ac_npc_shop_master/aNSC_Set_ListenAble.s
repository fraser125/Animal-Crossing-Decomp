lbl_805771C8:
/* 805771C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805771CC  7C 08 02 A6 */	mflr r0
/* 805771D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805771D4  4B E4 81 65 */	bl mMld_ActorMakeMelody
/* 805771D8  4B E2 31 DD */	bl mDemo_Set_ListenAble
/* 805771DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805771E0  7C 08 03 A6 */	mtlr r0
/* 805771E4  38 21 00 10 */	addi r1, r1, 0x10
/* 805771E8  4E 80 00 20 */	blr 
