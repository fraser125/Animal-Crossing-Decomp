lbl_805367EC:
/* 805367EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805367F0  7C 08 02 A6 */	mflr r0
/* 805367F4  2C 05 00 00 */	cmpwi r5, 0
/* 805367F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805367FC  40 82 00 08 */	bne lbl_80536804
/* 80536800  4B FF FF B9 */	bl aNPC_think_wait_init_proc
lbl_80536804:
/* 80536804  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80536808  7C 08 03 A6 */	mtlr r0
/* 8053680C  38 21 00 10 */	addi r1, r1, 0x10
/* 80536810  4E 80 00 20 */	blr 
