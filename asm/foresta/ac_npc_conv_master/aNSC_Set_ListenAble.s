lbl_80545C30:
/* 80545C30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80545C34  7C 08 02 A6 */	mflr r0
/* 80545C38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80545C3C  4B E7 96 FD */	bl mMld_ActorMakeMelody
/* 80545C40  4B E5 47 75 */	bl mDemo_Set_ListenAble
/* 80545C44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80545C48  7C 08 03 A6 */	mtlr r0
/* 80545C4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80545C50  4E 80 00 20 */	blr 
