lbl_8055A534:
/* 8055A534  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055A538  7C 08 02 A6 */	mflr r0
/* 8055A53C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055A540  4B E6 4D F9 */	bl mMld_ActorMakeMelody
/* 8055A544  4B E3 FE 71 */	bl mDemo_Set_ListenAble
/* 8055A548  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055A54C  7C 08 03 A6 */	mtlr r0
/* 8055A550  38 21 00 10 */	addi r1, r1, 0x10
/* 8055A554  4E 80 00 20 */	blr 
