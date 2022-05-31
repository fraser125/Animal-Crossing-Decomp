lbl_803FEF20:
/* 803FEF20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FEF24  7C 08 02 A6 */	mflr r0
/* 803FEF28  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FEF2C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803FEF30  7C 7F 1B 78 */	mr r31, r3
/* 803FEF34  4B C5 DD C1 */	bl fqrand
/* 803FEF38  3C 60 80 64 */	lis r3, lit_1733@ha /* 0x80643454@ha */
/* 803FEF3C  3C 80 80 66 */	lis r4, l_mcd_copy_protect@ha /* 0x8065E484@ha */
/* 803FEF40  38 A3 34 54 */	addi r5, r3, lit_1733@l /* 0x80643454@l */
/* 803FEF44  7F E3 FB 78 */	mr r3, r31
/* 803FEF48  C0 05 00 00 */	lfs f0, 0(r5)
/* 803FEF4C  38 A4 E4 84 */	addi r5, r4, l_mcd_copy_protect@l /* 0x8065E484@l */
/* 803FEF50  38 80 2E 20 */	li r4, 0x2e20
/* 803FEF54  EC 00 00 72 */	fmuls f0, f0, f1
/* 803FEF58  FC 00 00 1E */	fctiwz f0, f0
/* 803FEF5C  D8 01 00 08 */	stfd f0, 8(r1)
/* 803FEF60  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803FEF64  B0 05 00 00 */	sth r0, 0(r5)
/* 803FEF68  B0 1F 2D E8 */	sth r0, 0x2de8(r31)
/* 803FEF6C  A0 BF 00 00 */	lhz r5, 0(r31)
/* 803FEF70  4B FA D5 BD */	bl mFRm_GetFlatCheckSum
/* 803FEF74  B0 7F 00 00 */	sth r3, 0(r31)
/* 803FEF78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FEF7C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803FEF80  7C 08 03 A6 */	mtlr r0
/* 803FEF84  38 21 00 20 */	addi r1, r1, 0x20
/* 803FEF88  4E 80 00 20 */	blr 
