lbl_8051D840:
/* 8051D840  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051D844  7C 08 02 A6 */	mflr r0
/* 8051D848  3C 80 80 3C */	lis r4, none_proc1@ha /* 0x803BB54C@ha */
/* 8051D84C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051D850  38 04 B5 4C */	addi r0, r4, none_proc1@l /* 0x803BB54C@l */
/* 8051D854  90 03 09 64 */	stw r0, 0x964(r3)
/* 8051D858  4B E7 CB 5D */	bl mDemo_Set_ListenAble
/* 8051D85C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051D860  38 60 00 01 */	li r3, 1
/* 8051D864  7C 08 03 A6 */	mtlr r0
/* 8051D868  38 21 00 10 */	addi r1, r1, 0x10
/* 8051D86C  4E 80 00 20 */	blr 
