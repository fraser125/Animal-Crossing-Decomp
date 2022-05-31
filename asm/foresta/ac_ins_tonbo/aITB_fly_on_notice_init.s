lbl_805A1B00:
/* 805A1B00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A1B04  7C 08 02 A6 */	mflr r0
/* 805A1B08  3C A0 80 65 */	lis r5, lit_407@ha /* 0x8064A2C4@ha */
/* 805A1B0C  3C 80 80 65 */	lis r4, lit_475@ha /* 0x8064A2E0@ha */
/* 805A1B10  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A1B14  38 00 00 00 */	li r0, 0
/* 805A1B18  C0 25 A2 C4 */	lfs f1, lit_407@l(r5)  /* 0x8064A2C4@l */
/* 805A1B1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A1B20  7C 7F 1B 78 */	mr r31, r3
/* 805A1B24  C0 04 A2 E0 */	lfs f0, lit_475@l(r4)  /* 0x8064A2E0@l */
/* 805A1B28  D0 3F 01 F0 */	stfs f1, 0x1f0(r31)
/* 805A1B2C  90 1F 02 2C */	stw r0, 0x22c(r31)
/* 805A1B30  90 1F 02 30 */	stw r0, 0x230(r31)
/* 805A1B34  90 1F 02 3C */	stw r0, 0x23c(r31)
/* 805A1B38  D0 3F 00 7C */	stfs f1, 0x7c(r31)
/* 805A1B3C  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 805A1B40  4B AB B1 B5 */	bl fqrand
/* 805A1B44  3C 60 80 65 */	lis r3, lit_526@ha /* 0x8064A2F0@ha */
/* 805A1B48  C0 43 A2 F0 */	lfs f2, lit_526@l(r3)  /* 0x8064A2F0@l */
/* 805A1B4C  EC 02 00 72 */	fmuls f0, f2, f1
/* 805A1B50  EC 02 00 2A */	fadds f0, f2, f0
/* 805A1B54  D0 1F 01 EC */	stfs f0, 0x1ec(r31)
/* 805A1B58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A1B5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A1B60  7C 08 03 A6 */	mtlr r0
/* 805A1B64  38 21 00 10 */	addi r1, r1, 0x10
/* 805A1B68  4E 80 00 20 */	blr 
