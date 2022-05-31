lbl_803E008C:
/* 803E008C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E0090  7C 08 02 A6 */	mflr r0
/* 803E0094  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E0098  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E009C  7C 7F 1B 78 */	mr r31, r3
/* 803E00A0  4B FF FD F5 */	bl func_803DFE94
/* 803E00A4  38 7F 00 08 */	addi r3, r31, 8
/* 803E00A8  4B FD 38 21 */	bl mLd_ClearLandName
/* 803E00AC  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 803E00B0  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 803E00B4  B0 1F 00 12 */	sth r0, 0x12(r31)
/* 803E00B8  B0 1F 00 10 */	sth r0, 0x10(r31)
/* 803E00BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E00C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E00C4  7C 08 03 A6 */	mtlr r0
/* 803E00C8  38 21 00 10 */	addi r1, r1, 0x10
/* 803E00CC  4E 80 00 20 */	blr 
