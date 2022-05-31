lbl_803D2194:
/* 803D2194  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D2198  7C 08 02 A6 */	mflr r0
/* 803D219C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D21A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803D21A4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803D21A8  4B FC FF 49 */	bl mFAs_GetFieldRank
/* 803D21AC  7C 7F 1B 79 */	or. r31, r3, r3
/* 803D21B0  3B C0 00 00 */	li r30, 0
/* 803D21B4  41 80 00 44 */	blt lbl_803D21F8
/* 803D21B8  2C 1F 00 07 */	cmpwi r31, 7
/* 803D21BC  40 80 00 3C */	bge lbl_803D21F8
/* 803D21C0  4B C8 AB 35 */	bl fqrand
/* 803D21C4  3C 80 80 64 */	lis r4, lit_2977@ha /* 0x806428FC@ha */
/* 803D21C8  3C 60 80 66 */	lis r3, npc_grow_prob@ha /* 0x8065B328@ha */
/* 803D21CC  C0 04 28 FC */	lfs f0, lit_2977@l(r4)  /* 0x806428FC@l */
/* 803D21D0  57 E0 10 3A */	slwi r0, r31, 2
/* 803D21D4  38 63 B3 28 */	addi r3, r3, npc_grow_prob@l /* 0x8065B328@l */
/* 803D21D8  EC 00 00 72 */	fmuls f0, f0, f1
/* 803D21DC  7C 03 00 2E */	lwzx r0, r3, r0
/* 803D21E0  FC 00 00 1E */	fctiwz f0, f0
/* 803D21E4  D8 01 00 08 */	stfd f0, 8(r1)
/* 803D21E8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803D21EC  7C 03 00 00 */	cmpw r3, r0
/* 803D21F0  40 80 00 08 */	bge lbl_803D21F8
/* 803D21F4  3B C0 00 01 */	li r30, 1
lbl_803D21F8:
/* 803D21F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D21FC  7F C3 F3 78 */	mr r3, r30
/* 803D2200  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803D2204  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803D2208  7C 08 03 A6 */	mtlr r0
/* 803D220C  38 21 00 20 */	addi r1, r1, 0x20
/* 803D2210  4E 80 00 20 */	blr 
