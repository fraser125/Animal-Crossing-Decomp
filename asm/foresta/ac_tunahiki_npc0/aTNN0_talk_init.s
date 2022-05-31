lbl_8058EA8C:
/* 8058EA8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058EA90  7C 08 02 A6 */	mflr r0
/* 8058EA94  3C 80 80 3C */	lis r4, none_proc1@ha /* 0x803BB54C@ha */
/* 8058EA98  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058EA9C  38 04 B5 4C */	addi r0, r4, none_proc1@l /* 0x803BB54C@l */
/* 8058EAA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058EAA4  7C 7F 1B 78 */	mr r31, r3
/* 8058EAA8  90 03 09 64 */	stw r0, 0x964(r3)
/* 8058EAAC  4B E0 B9 09 */	bl mDemo_Set_ListenAble
/* 8058EAB0  7F E3 FB 78 */	mr r3, r31
/* 8058EAB4  4B E0 B7 E5 */	bl mDemo_Start
/* 8058EAB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058EABC  38 60 00 01 */	li r3, 1
/* 8058EAC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058EAC4  7C 08 03 A6 */	mtlr r0
/* 8058EAC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8058EACC  4E 80 00 20 */	blr 
