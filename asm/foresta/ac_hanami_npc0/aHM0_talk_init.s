lbl_8052A020:
/* 8052A020  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052A024  7C 08 02 A6 */	mflr r0
/* 8052A028  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052A02C  4B E7 03 89 */	bl mDemo_Set_ListenAble
/* 8052A030  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052A034  38 60 00 01 */	li r3, 1
/* 8052A038  7C 08 03 A6 */	mtlr r0
/* 8052A03C  38 21 00 10 */	addi r1, r1, 0x10
/* 8052A040  4E 80 00 20 */	blr 
