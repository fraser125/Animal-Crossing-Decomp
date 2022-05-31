lbl_8056EBC4:
/* 8056EBC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056EBC8  7C 08 02 A6 */	mflr r0
/* 8056EBCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056EBD0  38 00 00 01 */	li r0, 1
/* 8056EBD4  98 03 09 A0 */	stb r0, 0x9a0(r3)
/* 8056EBD8  4B E5 07 61 */	bl mMld_ActorMakeMelody
/* 8056EBDC  4B E2 B7 D9 */	bl mDemo_Set_ListenAble
/* 8056EBE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056EBE4  7C 08 03 A6 */	mtlr r0
/* 8056EBE8  38 21 00 10 */	addi r1, r1, 0x10
/* 8056EBEC  4E 80 00 20 */	blr 
