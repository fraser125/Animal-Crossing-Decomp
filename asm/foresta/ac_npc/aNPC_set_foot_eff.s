lbl_80530368:
/* 80530368  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053036C  7C 08 02 A6 */	mflr r0
/* 80530370  90 01 00 14 */	stw r0, 0x14(r1)
/* 80530374  20 05 00 09 */	subfic r0, r5, 9
/* 80530378  7C 00 00 34 */	cntlzw r0, r0
/* 8053037C  54 00 D9 7E */	srwi r0, r0, 5
/* 80530380  1C 60 00 0C */	mulli r3, r0, 0xc
/* 80530384  38 63 08 D0 */	addi r3, r3, 0x8d0
/* 80530388  7C 64 1A 14 */	add r3, r4, r3
/* 8053038C  4B ED D1 31 */	bl Matrix_Position_Zero
/* 80530390  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80530394  7C 08 03 A6 */	mtlr r0
/* 80530398  38 21 00 10 */	addi r1, r1, 0x10
/* 8053039C  4E 80 00 20 */	blr 
