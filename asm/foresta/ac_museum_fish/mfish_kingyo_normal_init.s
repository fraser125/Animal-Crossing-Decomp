lbl_8044A5A0:
/* 8044A5A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8044A5A4  7C 08 02 A6 */	mflr r0
/* 8044A5A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8044A5AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8044A5B0  7C 7F 1B 78 */	mr r31, r3
/* 8044A5B4  4B C1 27 41 */	bl fqrand
/* 8044A5B8  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 8044A5BC  3C 60 80 45 */	lis r3, mfish_kingyo_normal@ha /* 0x8044A5EC@ha */
/* 8044A5C0  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8044A5C4  38 03 A5 EC */	addi r0, r3, mfish_kingyo_normal@l /* 0x8044A5EC@l */
/* 8044A5C8  EC 22 00 72 */	fmuls f1, f2, f1
/* 8044A5CC  EC 00 08 2A */	fadds f0, f0, f1
/* 8044A5D0  D0 1F 05 F0 */	stfs f0, 0x5f0(r31)
/* 8044A5D4  90 1F 00 34 */	stw r0, 0x34(r31)
/* 8044A5D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8044A5DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8044A5E0  7C 08 03 A6 */	mtlr r0
/* 8044A5E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8044A5E8  4E 80 00 20 */	blr 
