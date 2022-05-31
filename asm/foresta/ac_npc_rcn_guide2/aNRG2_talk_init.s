lbl_805716E0:
/* 805716E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805716E4  7C 08 02 A6 */	mflr r0
/* 805716E8  3C 80 80 3C */	lis r4, none_proc1@ha /* 0x803BB54C@ha */
/* 805716EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805716F0  38 04 B5 4C */	addi r0, r4, none_proc1@l /* 0x803BB54C@l */
/* 805716F4  90 03 09 64 */	stw r0, 0x964(r3)
/* 805716F8  4B E2 8C BD */	bl mDemo_Set_ListenAble
/* 805716FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80571700  38 60 00 01 */	li r3, 1
/* 80571704  7C 08 03 A6 */	mtlr r0
/* 80571708  38 21 00 10 */	addi r1, r1, 0x10
/* 8057170C  4E 80 00 20 */	blr 
