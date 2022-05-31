lbl_803C62E4:
/* 803C62E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C62E8  7C 08 02 A6 */	mflr r0
/* 803C62EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C62F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803C62F4  7C 7F 1B 78 */	mr r31, r3
/* 803C62F8  4B C9 69 FD */	bl fqrand
/* 803C62FC  3C 80 80 64 */	lis r4, data_8064284C@ha /* 0x8064284C@ha */
/* 803C6300  3C 60 80 66 */	lis r3, hit_table@ha /* 0x8065A188@ha */
/* 803C6304  C0 04 28 4C */	lfs f0, data_8064284C@l(r4)  /* 0x8064284C@l */
/* 803C6308  38 63 A1 88 */	addi r3, r3, hit_table@l /* 0x8065A188@l */
/* 803C630C  EC 00 00 72 */	fmuls f0, f0, f1
/* 803C6310  FC 00 00 1E */	fctiwz f0, f0
/* 803C6314  D8 01 00 08 */	stfd f0, 8(r1)
/* 803C6318  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803C631C  54 00 10 3A */	slwi r0, r0, 2
/* 803C6320  7C 63 00 2E */	lwzx r3, r3, r0
/* 803C6324  48 02 49 65 */	bl mSP_RandomOneFossilSelect
/* 803C6328  B0 7F 00 00 */	sth r3, 0(r31)
/* 803C632C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C6330  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803C6334  7C 08 03 A6 */	mtlr r0
/* 803C6338  38 21 00 20 */	addi r1, r1, 0x20
/* 803C633C  4E 80 00 20 */	blr 
