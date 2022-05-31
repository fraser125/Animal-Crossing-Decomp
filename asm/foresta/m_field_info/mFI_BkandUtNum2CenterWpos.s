lbl_803A5CF4:
/* 803A5CF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A5CF8  7C 08 02 A6 */	mflr r0
/* 803A5CFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A5D00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A5D04  7C 7F 1B 78 */	mr r31, r3
/* 803A5D08  4B FF FF 5D */	bl mFI_BkandUtNum2Wpos
/* 803A5D0C  3C 60 80 64 */	lis r3, lit_646@ha /* 0x80641F54@ha */
/* 803A5D10  C0 1F 00 00 */	lfs f0, 0(r31)
/* 803A5D14  C0 23 1F 54 */	lfs f1, lit_646@l(r3)  /* 0x80641F54@l */
/* 803A5D18  EC 00 08 2A */	fadds f0, f0, f1
/* 803A5D1C  D0 1F 00 00 */	stfs f0, 0(r31)
/* 803A5D20  C0 1F 00 08 */	lfs f0, 8(r31)
/* 803A5D24  EC 00 08 2A */	fadds f0, f0, f1
/* 803A5D28  D0 1F 00 08 */	stfs f0, 8(r31)
/* 803A5D2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A5D30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A5D34  7C 08 03 A6 */	mtlr r0
/* 803A5D38  38 21 00 10 */	addi r1, r1, 0x10
/* 803A5D3C  4E 80 00 20 */	blr 
