lbl_803E01E8:
/* 803E01E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E01EC  7C 08 02 A6 */	mflr r0
/* 803E01F0  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 803E01F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E01F8  38 04 FF FF */	addi r0, r4, 0xFFFF /* 0x0000FFFF@l */
/* 803E01FC  B0 03 00 00 */	sth r0, 0(r3)
/* 803E0200  38 63 00 02 */	addi r3, r3, 2
/* 803E0204  4B FD 36 C5 */	bl mLd_ClearLandName
/* 803E0208  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E020C  7C 08 03 A6 */	mtlr r0
/* 803E0210  38 21 00 10 */	addi r1, r1, 0x10
/* 803E0214  4E 80 00 20 */	blr 
