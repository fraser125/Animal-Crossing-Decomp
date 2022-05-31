lbl_8051A9F8:
/* 8051A9F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051A9FC  7C 08 02 A6 */	mflr r0
/* 8051AA00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051AA04  4B EA 49 35 */	bl mMld_ActorMakeMelody
/* 8051AA08  4B E7 F9 AD */	bl mDemo_Set_ListenAble
/* 8051AA0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051AA10  7C 08 03 A6 */	mtlr r0
/* 8051AA14  38 21 00 10 */	addi r1, r1, 0x10
/* 8051AA18  4E 80 00 20 */	blr 
