lbl_805AB9B0:
/* 805AB9B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AB9B4  7C 08 02 A6 */	mflr r0
/* 805AB9B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AB9BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805AB9C0  7C 7F 1B 78 */	mr r31, r3
/* 805AB9C4  4B FF FF 01 */	bl func_805AB8C4
/* 805AB9C8  3C 80 80 65 */	lis r4, lit_436@ha /* 0x8064A668@ha */
/* 805AB9CC  90 7F 02 BC */	stw r3, 0x2bc(r31)
/* 805AB9D0  C0 04 A6 68 */	lfs f0, lit_436@l(r4)  /* 0x8064A668@l */
/* 805AB9D4  38 00 00 00 */	li r0, 0
/* 805AB9D8  7F E3 FB 78 */	mr r3, r31
/* 805AB9DC  38 80 00 01 */	li r4, 1
/* 805AB9E0  D0 1F 02 CC */	stfs f0, 0x2cc(r31)
/* 805AB9E4  90 1F 02 C0 */	stw r0, 0x2c0(r31)
/* 805AB9E8  48 00 01 35 */	bl aCOU_setup_action
/* 805AB9EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AB9F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805AB9F4  7C 08 03 A6 */	mtlr r0
/* 805AB9F8  38 21 00 10 */	addi r1, r1, 0x10
/* 805AB9FC  4E 80 00 20 */	blr 
