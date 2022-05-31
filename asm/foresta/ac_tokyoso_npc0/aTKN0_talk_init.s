lbl_8058B8C0:
/* 8058B8C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058B8C4  7C 08 02 A6 */	mflr r0
/* 8058B8C8  3C 80 80 3C */	lis r4, none_proc1@ha /* 0x803BB54C@ha */
/* 8058B8CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058B8D0  38 04 B5 4C */	addi r0, r4, none_proc1@l /* 0x803BB54C@l */
/* 8058B8D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058B8D8  7C 7F 1B 78 */	mr r31, r3
/* 8058B8DC  90 03 09 64 */	stw r0, 0x964(r3)
/* 8058B8E0  4B E0 EA D5 */	bl mDemo_Set_ListenAble
/* 8058B8E4  7F E3 FB 78 */	mr r3, r31
/* 8058B8E8  4B E0 E9 B1 */	bl mDemo_Start
/* 8058B8EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058B8F0  38 60 00 01 */	li r3, 1
/* 8058B8F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058B8F8  7C 08 03 A6 */	mtlr r0
/* 8058B8FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8058B900  4E 80 00 20 */	blr 
