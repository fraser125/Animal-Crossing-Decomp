lbl_803BC13C:
/* 803BC13C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BC140  7C 08 02 A6 */	mflr r0
/* 803BC144  7C 66 1B 78 */	mr r6, r3
/* 803BC148  7C 83 23 78 */	mr r3, r4
/* 803BC14C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BC150  88 86 00 04 */	lbz r4, 4(r6)
/* 803BC154  88 A6 00 05 */	lbz r5, 5(r6)
/* 803BC158  88 C6 00 06 */	lbz r6, 6(r6)
/* 803BC15C  48 00 00 E9 */	bl new_LightsN
/* 803BC160  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BC164  7C 08 03 A6 */	mtlr r0
/* 803BC168  38 21 00 10 */	addi r1, r1, 0x10
/* 803BC16C  4E 80 00 20 */	blr 
