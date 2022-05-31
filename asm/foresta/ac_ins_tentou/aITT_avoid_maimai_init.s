lbl_805A028C:
/* 805A028C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A0290  7C 08 02 A6 */	mflr r0
/* 805A0294  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A0298  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A029C  7C 7F 1B 78 */	mr r31, r3
/* 805A02A0  4B FF FF 15 */	bl aITT_avoid_init
/* 805A02A4  3C 60 80 65 */	lis r3, lit_413@ha /* 0x8064A25C@ha */
/* 805A02A8  3C 80 80 65 */	lis r4, lit_575@ha /* 0x8064A298@ha */
/* 805A02AC  38 A3 A2 5C */	addi r5, r3, lit_413@l /* 0x8064A25C@l */
/* 805A02B0  3C 60 80 65 */	lis r3, lit_576@ha /* 0x8064A29C@ha */
/* 805A02B4  C0 05 00 00 */	lfs f0, 0(r5)
/* 805A02B8  38 C4 A2 98 */	addi r6, r4, lit_575@l /* 0x8064A298@l */
/* 805A02BC  38 A3 A2 9C */	addi r5, r3, lit_576@l /* 0x8064A29C@l */
/* 805A02C0  3C 60 80 65 */	lis r3, lit_577@ha /* 0x8064A2A0@ha */
/* 805A02C4  D0 1F 00 78 */	stfs f0, 0x78(r31)
/* 805A02C8  38 83 A2 A0 */	addi r4, r3, lit_577@l /* 0x8064A2A0@l */
/* 805A02CC  C0 06 00 00 */	lfs f0, 0(r6)
/* 805A02D0  38 60 00 00 */	li r3, 0
/* 805A02D4  C0 25 00 00 */	lfs f1, 0(r5)
/* 805A02D8  D0 1F 00 7C */	stfs f0, 0x7c(r31)
/* 805A02DC  C0 04 00 00 */	lfs f0, 0(r4)
/* 805A02E0  D0 3F 00 74 */	stfs f1, 0x74(r31)
/* 805A02E4  D0 3F 01 EC */	stfs f1, 0x1ec(r31)
/* 805A02E8  D0 1F 01 E8 */	stfs f0, 0x1e8(r31)
/* 805A02EC  88 1F 02 1E */	lbz r0, 0x21e(r31)
/* 805A02F0  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 805A02F4  98 1F 02 1E */	stb r0, 0x21e(r31)
/* 805A02F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A02FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A0300  7C 08 03 A6 */	mtlr r0
/* 805A0304  38 21 00 10 */	addi r1, r1, 0x10
/* 805A0308  4E 80 00 20 */	blr 
