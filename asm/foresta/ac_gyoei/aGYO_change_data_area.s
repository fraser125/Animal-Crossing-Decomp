lbl_805A1DA4:
/* 805A1DA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A1DA8  7C 08 02 A6 */	mflr r0
/* 805A1DAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A1DB0  4B FF FF B1 */	bl func_805A1D60
/* 805A1DB4  1C 63 02 50 */	mulli r3, r3, 0x250
/* 805A1DB8  3C 80 81 1F */	lis r4, data_811F2870@ha /* 0x811F2870@ha */
/* 805A1DBC  38 A0 00 01 */	li r5, 1
/* 805A1DC0  38 84 28 70 */	addi r4, r4, data_811F2870@l /* 0x811F2870@l */
/* 805A1DC4  80 84 00 00 */	lwz r4, 0(r4)
/* 805A1DC8  38 03 03 48 */	addi r0, r3, 0x348
/* 805A1DCC  7C A4 01 2E */	stwx r5, r4, r0
/* 805A1DD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A1DD4  7C 08 03 A6 */	mtlr r0
/* 805A1DD8  38 21 00 10 */	addi r1, r1, 0x10
/* 805A1DDC  4E 80 00 20 */	blr 
