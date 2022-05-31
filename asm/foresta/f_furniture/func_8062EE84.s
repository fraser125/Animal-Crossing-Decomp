lbl_8062EE84:
/* 8062EE84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062EE88  7C 08 02 A6 */	mflr r0
/* 8062EE8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062EE90  38 04 00 01 */	addi r0, r4, 1
/* 8062EE94  7C 04 07 74 */	extsb r4, r0
/* 8062EE98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062EE9C  7C 7F 1B 78 */	mr r31, r3
/* 8062EEA0  4B FF F2 19 */	bl sAdo_RhythmStart
/* 8062EEA4  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 8062EEA8  38 00 00 00 */	li r0, 0
/* 8062EEAC  B0 1F 08 2A */	sth r0, 0x82a(r31)
/* 8062EEB0  C0 03 D2 78 */	lfs f0, lit_368@l(r3)  /* 0x8064D278@l */
/* 8062EEB4  D0 1F 08 38 */	stfs f0, 0x838(r31)
/* 8062EEB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062EEBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062EEC0  7C 08 03 A6 */	mtlr r0
/* 8062EEC4  38 21 00 10 */	addi r1, r1, 0x10
/* 8062EEC8  4E 80 00 20 */	blr 
