lbl_80386BCC:
/* 80386BCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80386BD0  7C 08 02 A6 */	mflr r0
/* 80386BD4  7C 85 23 78 */	mr r5, r4
/* 80386BD8  7C 64 1B 78 */	mr r4, r3
/* 80386BDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80386BE0  7C A3 2B 78 */	mr r3, r5
/* 80386BE4  38 A5 00 20 */	addi r5, r5, 0x20
/* 80386BE8  48 00 3F C1 */	bl mCoBG_GetPointInfoFrontLine
/* 80386BEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80386BF0  7C 08 03 A6 */	mtlr r0
/* 80386BF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80386BF8  4E 80 00 20 */	blr 
