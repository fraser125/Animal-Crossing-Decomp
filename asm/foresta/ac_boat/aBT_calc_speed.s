lbl_805A7A68:
/* 805A7A68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A7A6C  7C 08 02 A6 */	mflr r0
/* 805A7A70  3C 80 80 6C */	lis r4, aBT_last_point_idx@ha /* 0x806C43C4@ha */
/* 805A7A74  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A7A78  38 84 43 C4 */	addi r4, r4, aBT_last_point_idx@l /* 0x806C43C4@l */
/* 805A7A7C  80 03 02 C4 */	lwz r0, 0x2c4(r3)
/* 805A7A80  80 A3 02 C0 */	lwz r5, 0x2c0(r3)
/* 805A7A84  54 00 10 3A */	slwi r0, r0, 2
/* 805A7A88  7C 04 00 2E */	lwzx r0, r4, r0
/* 805A7A8C  7C 05 00 00 */	cmpw r5, r0
/* 805A7A90  40 82 00 18 */	bne lbl_805A7AA8
/* 805A7A94  3C A0 80 65 */	lis r5, lit_450@ha /* 0x8064A4CC@ha */
/* 805A7A98  3C 80 80 65 */	lis r4, lit_652@ha /* 0x8064A50C@ha */
/* 805A7A9C  C0 25 A4 CC */	lfs f1, lit_450@l(r5)  /* 0x8064A4CC@l */
/* 805A7AA0  C0 44 A5 0C */	lfs f2, lit_652@l(r4)  /* 0x8064A50C@l */
/* 805A7AA4  48 00 00 14 */	b lbl_805A7AB8
lbl_805A7AA8:
/* 805A7AA8  3C A0 80 65 */	lis r5, lit_653@ha /* 0x8064A510@ha */
/* 805A7AAC  3C 80 80 65 */	lis r4, lit_654@ha /* 0x8064A514@ha */
/* 805A7AB0  C0 25 A5 10 */	lfs f1, lit_653@l(r5)  /* 0x8064A510@l */
/* 805A7AB4  C0 44 A5 14 */	lfs f2, lit_654@l(r4)  /* 0x8064A514@l */
lbl_805A7AB8:
/* 805A7AB8  38 63 00 74 */	addi r3, r3, 0x74
/* 805A7ABC  4B E1 31 AD */	bl chase_f
/* 805A7AC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A7AC4  7C 08 03 A6 */	mtlr r0
/* 805A7AC8  38 21 00 10 */	addi r1, r1, 0x10
/* 805A7ACC  4E 80 00 20 */	blr 
