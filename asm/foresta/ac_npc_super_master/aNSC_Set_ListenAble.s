lbl_80580CD4:
/* 80580CD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80580CD8  7C 08 02 A6 */	mflr r0
/* 80580CDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80580CE0  4B E3 E6 59 */	bl mMld_ActorMakeMelody
/* 80580CE4  4B E1 96 D1 */	bl mDemo_Set_ListenAble
/* 80580CE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80580CEC  7C 08 03 A6 */	mtlr r0
/* 80580CF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80580CF4  4E 80 00 20 */	blr 
