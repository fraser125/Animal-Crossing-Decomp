lbl_80543294:
/* 80543294  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80543298  7C 08 02 A6 */	mflr r0
/* 8054329C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805432A0  4B FF F3 9D */	bl aNPC_think_main_proc
/* 805432A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805432A8  7C 08 03 A6 */	mtlr r0
/* 805432AC  38 21 00 10 */	addi r1, r1, 0x10
/* 805432B0  4E 80 00 20 */	blr 
