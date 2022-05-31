lbl_80585C94:
/* 80585C94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80585C98  7C 08 02 A6 */	mflr r0
/* 80585C9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80585CA0  4B FF B1 FD */	bl aNSC_set_stop_spd
/* 80585CA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80585CA8  7C 08 03 A6 */	mtlr r0
/* 80585CAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80585CB0  4E 80 00 20 */	blr 
