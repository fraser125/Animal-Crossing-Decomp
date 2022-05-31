lbl_8053E344:
/* 8053E344  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053E348  7C 08 02 A6 */	mflr r0
/* 8053E34C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053E350  20 05 00 09 */	subfic r0, r5, 9
/* 8053E354  7C 00 00 34 */	cntlzw r0, r0
/* 8053E358  54 00 D9 7E */	srwi r0, r0, 5
/* 8053E35C  1C 60 00 0C */	mulli r3, r0, 0xc
/* 8053E360  38 63 08 D0 */	addi r3, r3, 0x8d0
/* 8053E364  7C 64 1A 14 */	add r3, r4, r3
/* 8053E368  4B EC F1 55 */	bl Matrix_Position_Zero
/* 8053E36C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053E370  7C 08 03 A6 */	mtlr r0
/* 8053E374  38 21 00 10 */	addi r1, r1, 0x10
/* 8053E378  4E 80 00 20 */	blr 
