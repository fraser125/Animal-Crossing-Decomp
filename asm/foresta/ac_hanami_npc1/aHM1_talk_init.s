lbl_8052AA04:
/* 8052AA04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052AA08  7C 08 02 A6 */	mflr r0
/* 8052AA0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052AA10  4B E6 F9 A5 */	bl mDemo_Set_ListenAble
/* 8052AA14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052AA18  38 60 00 01 */	li r3, 1
/* 8052AA1C  7C 08 03 A6 */	mtlr r0
/* 8052AA20  38 21 00 10 */	addi r1, r1, 0x10
/* 8052AA24  4E 80 00 20 */	blr 
