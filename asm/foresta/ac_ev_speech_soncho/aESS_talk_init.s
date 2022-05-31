lbl_80525F1C:
/* 80525F1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80525F20  7C 08 02 A6 */	mflr r0
/* 80525F24  3C 80 80 3C */	lis r4, none_proc1@ha /* 0x803BB54C@ha */
/* 80525F28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80525F2C  38 04 B5 4C */	addi r0, r4, none_proc1@l /* 0x803BB54C@l */
/* 80525F30  90 03 09 64 */	stw r0, 0x964(r3)
/* 80525F34  4B E7 44 81 */	bl mDemo_Set_ListenAble
/* 80525F38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80525F3C  38 60 00 01 */	li r3, 1
/* 80525F40  7C 08 03 A6 */	mtlr r0
/* 80525F44  38 21 00 10 */	addi r1, r1, 0x10
/* 80525F48  4E 80 00 20 */	blr 
