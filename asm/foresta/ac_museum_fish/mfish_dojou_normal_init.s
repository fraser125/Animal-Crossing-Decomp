lbl_8044C50C:
/* 8044C50C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8044C510  7C 08 02 A6 */	mflr r0
/* 8044C514  90 01 00 14 */	stw r0, 0x14(r1)
/* 8044C518  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8044C51C  7C 7F 1B 78 */	mr r31, r3
/* 8044C520  4B C1 07 D5 */	bl fqrand
/* 8044C524  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 8044C528  3C 60 80 45 */	lis r3, mfish_dojou_normal@ha /* 0x8044C558@ha */
/* 8044C52C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8044C530  38 03 C5 58 */	addi r0, r3, mfish_dojou_normal@l /* 0x8044C558@l */
/* 8044C534  EC 22 00 72 */	fmuls f1, f2, f1
/* 8044C538  EC 00 08 2A */	fadds f0, f0, f1
/* 8044C53C  D0 1F 05 F0 */	stfs f0, 0x5f0(r31)
/* 8044C540  90 1F 00 34 */	stw r0, 0x34(r31)
/* 8044C544  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8044C548  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8044C54C  7C 08 03 A6 */	mtlr r0
/* 8044C550  38 21 00 10 */	addi r1, r1, 0x10
/* 8044C554  4E 80 00 20 */	blr 
