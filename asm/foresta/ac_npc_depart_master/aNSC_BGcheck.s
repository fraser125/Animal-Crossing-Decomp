lbl_8054D3FC:
/* 8054D3FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054D400  7C 08 02 A6 */	mflr r0
/* 8054D404  3C A0 80 65 */	lis r5, lit_578@ha /* 0x806494E8@ha */
/* 8054D408  3C 80 80 65 */	lis r4, data_806494CC@ha /* 0x806494CC@ha */
/* 8054D40C  C0 25 94 E8 */	lfs f1, lit_578@l(r5)  /* 0x806494E8@l */
/* 8054D410  38 A0 00 01 */	li r5, 1
/* 8054D414  C0 44 94 CC */	lfs f2, data_806494CC@l(r4)  /* 0x806494CC@l */
/* 8054D418  7C 64 1B 78 */	mr r4, r3
/* 8054D41C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054D420  38 60 00 00 */	li r3, 0
/* 8054D424  38 C0 00 00 */	li r6, 0
/* 8054D428  38 E0 00 00 */	li r7, 0
/* 8054D42C  4B E3 C9 75 */	bl mCoBG_BgCheckControll
/* 8054D430  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054D434  7C 08 03 A6 */	mtlr r0
/* 8054D438  38 21 00 10 */	addi r1, r1, 0x10
/* 8054D43C  4E 80 00 20 */	blr 
