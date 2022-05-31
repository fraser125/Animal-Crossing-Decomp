lbl_8056F570:
/* 8056F570  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056F574  7C 08 02 A6 */	mflr r0
/* 8056F578  3C 80 80 3C */	lis r4, none_proc1@ha /* 0x803BB54C@ha */
/* 8056F57C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056F580  38 04 B5 4C */	addi r0, r4, none_proc1@l /* 0x803BB54C@l */
/* 8056F584  90 03 09 64 */	stw r0, 0x964(r3)
/* 8056F588  4B E2 AE 2D */	bl mDemo_Set_ListenAble
/* 8056F58C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056F590  38 60 00 01 */	li r3, 1
/* 8056F594  7C 08 03 A6 */	mtlr r0
/* 8056F598  38 21 00 10 */	addi r1, r1, 0x10
/* 8056F59C  4E 80 00 20 */	blr 
