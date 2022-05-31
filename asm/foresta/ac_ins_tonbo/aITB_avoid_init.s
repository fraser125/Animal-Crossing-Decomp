lbl_805A1798:
/* 805A1798  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A179C  7C 08 02 A6 */	mflr r0
/* 805A17A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A17A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A17A8  7C 7F 1B 78 */	mr r31, r3
/* 805A17AC  7C 83 23 78 */	mr r3, r4
/* 805A17B0  4B E3 7E 91 */	bl get_player_actor_withoutCheck
/* 805A17B4  28 03 00 00 */	cmplwi r3, 0
/* 805A17B8  41 82 00 14 */	beq lbl_805A17CC
/* 805A17BC  38 63 00 28 */	addi r3, r3, 0x28
/* 805A17C0  38 9F 00 28 */	addi r4, r31, 0x28
/* 805A17C4  4B E1 99 6D */	bl search_position_angleY
/* 805A17C8  B0 7F 00 36 */	sth r3, 0x36(r31)
lbl_805A17CC:
/* 805A17CC  38 00 00 00 */	li r0, 0
/* 805A17D0  90 1F 02 2C */	stw r0, 0x22c(r31)
/* 805A17D4  4B AB B5 21 */	bl fqrand
/* 805A17D8  3C 80 80 65 */	lis r4, lit_526@ha /* 0x8064A2F0@ha */
/* 805A17DC  3C 60 80 65 */	lis r3, lit_525@ha /* 0x8064A2EC@ha */
/* 805A17E0  C0 44 A2 F0 */	lfs f2, lit_526@l(r4)  /* 0x8064A2F0@l */
/* 805A17E4  38 00 00 14 */	li r0, 0x14
/* 805A17E8  C0 03 A2 EC */	lfs f0, lit_525@l(r3)  /* 0x8064A2EC@l */
/* 805A17EC  EC 22 00 72 */	fmuls f1, f2, f1
/* 805A17F0  EC 00 08 2A */	fadds f0, f0, f1
/* 805A17F4  D0 1F 01 EC */	stfs f0, 0x1ec(r31)
/* 805A17F8  90 1F 02 28 */	stw r0, 0x228(r31)
/* 805A17FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A1800  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A1804  7C 08 03 A6 */	mtlr r0
/* 805A1808  38 21 00 10 */	addi r1, r1, 0x10
/* 805A180C  4E 80 00 20 */	blr 
