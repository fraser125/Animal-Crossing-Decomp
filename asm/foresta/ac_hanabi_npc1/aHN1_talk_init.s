lbl_8052982C:
/* 8052982C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80529830  7C 08 02 A6 */	mflr r0
/* 80529834  90 01 00 14 */	stw r0, 0x14(r1)
/* 80529838  4B E7 0B 7D */	bl mDemo_Set_ListenAble
/* 8052983C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80529840  38 60 00 01 */	li r3, 1
/* 80529844  7C 08 03 A6 */	mtlr r0
/* 80529848  38 21 00 10 */	addi r1, r1, 0x10
/* 8052984C  4E 80 00 20 */	blr 