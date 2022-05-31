lbl_80557680:
/* 80557680  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80557684  7C 08 02 A6 */	mflr r0
/* 80557688  3C 80 80 3C */	lis r4, none_proc1@ha /* 0x803BB54C@ha */
/* 8055768C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80557690  38 04 B5 4C */	addi r0, r4, none_proc1@l /* 0x803BB54C@l */
/* 80557694  90 03 09 64 */	stw r0, 0x964(r3)
/* 80557698  4B E4 2D 1D */	bl mDemo_Set_ListenAble
/* 8055769C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805576A0  38 60 00 01 */	li r3, 1
/* 805576A4  7C 08 03 A6 */	mtlr r0
/* 805576A8  38 21 00 10 */	addi r1, r1, 0x10
/* 805576AC  4E 80 00 20 */	blr 
