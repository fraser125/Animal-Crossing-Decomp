lbl_80592FE4:
/* 80592FE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80592FE8  7C 08 02 A6 */	mflr r0
/* 80592FEC  3C 80 80 3C */	lis r4, none_proc1@ha /* 0x803BB54C@ha */
/* 80592FF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80592FF4  38 04 B5 4C */	addi r0, r4, none_proc1@l /* 0x803BB54C@l */
/* 80592FF8  90 03 09 64 */	stw r0, 0x964(r3)
/* 80592FFC  4B E0 73 B9 */	bl mDemo_Set_ListenAble
/* 80593000  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80593004  38 60 00 01 */	li r3, 1
/* 80593008  7C 08 03 A6 */	mtlr r0
/* 8059300C  38 21 00 10 */	addi r1, r1, 0x10
/* 80593010  4E 80 00 20 */	blr 
