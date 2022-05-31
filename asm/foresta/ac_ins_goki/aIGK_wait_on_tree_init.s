lbl_8059A66C:
/* 8059A66C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059A670  7C 08 02 A6 */	mflr r0
/* 8059A674  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059A678  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8059A67C  7C 7F 1B 78 */	mr r31, r3
/* 8059A680  4B AC 26 75 */	bl fqrand
/* 8059A684  3C 80 80 65 */	lis r4, lit_614@ha /* 0x80649FA0@ha */
/* 8059A688  3C 60 80 65 */	lis r3, lit_427@ha /* 0x80649F50@ha */
/* 8059A68C  C0 44 9F A0 */	lfs f2, lit_614@l(r4)  /* 0x80649FA0@l */
/* 8059A690  C0 03 9F 50 */	lfs f0, lit_427@l(r3)  /* 0x80649F50@l */
/* 8059A694  EC 22 00 72 */	fmuls f1, f2, f1
/* 8059A698  EC 22 08 2A */	fadds f1, f2, f1
/* 8059A69C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8059A6A0  FC 00 00 1E */	fctiwz f0, f0
/* 8059A6A4  D8 01 00 08 */	stfd f0, 8(r1)
/* 8059A6A8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8059A6AC  90 1F 02 28 */	stw r0, 0x228(r31)
/* 8059A6B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059A6B4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8059A6B8  7C 08 03 A6 */	mtlr r0
/* 8059A6BC  38 21 00 20 */	addi r1, r1, 0x20
/* 8059A6C0  4E 80 00 20 */	blr 
