lbl_803EA134:
/* 803EA134  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803EA138  7C 08 02 A6 */	mflr r0
/* 803EA13C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803EA140  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803EA144  7C 7F 1B 78 */	mr r31, r3
/* 803EA148  4B C7 2B AD */	bl fqrand
/* 803EA14C  3C 80 80 64 */	lis r4, lit_1238@ha /* 0x806431B4@ha */
/* 803EA150  3C 60 80 66 */	lis r3, priority_candidate@ha /* 0x8065D860@ha */
/* 803EA154  C0 04 31 B4 */	lfs f0, lit_1238@l(r4)  /* 0x806431B4@l */
/* 803EA158  38 63 D8 60 */	addi r3, r3, priority_candidate@l /* 0x8065D860@l */
/* 803EA15C  EC 00 00 72 */	fmuls f0, f0, f1
/* 803EA160  FC 00 00 1E */	fctiwz f0, f0
/* 803EA164  D8 01 00 08 */	stfd f0, 8(r1)
/* 803EA168  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803EA16C  7C 03 00 AE */	lbzx r0, r3, r0
/* 803EA170  98 1F 00 00 */	stb r0, 0(r31)
/* 803EA174  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803EA178  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803EA17C  7C 08 03 A6 */	mtlr r0
/* 803EA180  38 21 00 20 */	addi r1, r1, 0x20
/* 803EA184  4E 80 00 20 */	blr 
