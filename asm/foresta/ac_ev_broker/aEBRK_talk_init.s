lbl_8051A6C8:
/* 8051A6C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051A6CC  7C 08 02 A6 */	mflr r0
/* 8051A6D0  3C 80 80 3C */	lis r4, none_proc1@ha /* 0x803BB54C@ha */
/* 8051A6D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051A6D8  38 04 B5 4C */	addi r0, r4, none_proc1@l /* 0x803BB54C@l */
/* 8051A6DC  90 03 09 64 */	stw r0, 0x964(r3)
/* 8051A6E0  4B E7 FC D5 */	bl mDemo_Set_ListenAble
/* 8051A6E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051A6E8  38 60 00 01 */	li r3, 1
/* 8051A6EC  7C 08 03 A6 */	mtlr r0
/* 8051A6F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8051A6F4  4E 80 00 20 */	blr 
