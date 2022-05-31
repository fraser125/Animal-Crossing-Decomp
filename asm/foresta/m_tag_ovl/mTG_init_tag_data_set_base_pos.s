lbl_805F0E64:
/* 805F0E64  80 83 00 38 */	lwz r4, 0x38(r3)
/* 805F0E68  38 04 FF F6 */	addi r0, r4, -10
/* 805F0E6C  28 00 00 0F */	cmplwi r0, 0xf
/* 805F0E70  4D 81 00 20 */	bgtlr 
/* 805F0E74  3C 80 80 6D */	lis r4, lit_899@ha /* 0x806D0918@ha */
/* 805F0E78  54 00 10 3A */	slwi r0, r0, 2
/* 805F0E7C  38 84 09 18 */	addi r4, r4, lit_899@l /* 0x806D0918@l */
/* 805F0E80  7C 04 00 2E */	lwzx r0, r4, r0
/* 805F0E84  7C 09 03 A6 */	mtctr r0
/* 805F0E88  4E 80 04 20 */	bctr 
lbl_805F0E8C:
/* 805F0E8C  3C A0 80 65 */	lis r5, lit_894@ha /* 0x8064B878@ha */
/* 805F0E90  3C 80 80 65 */	lis r4, lit_895@ha /* 0x8064B87C@ha */
/* 805F0E94  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 805F0E98  C0 25 B8 78 */	lfs f1, lit_894@l(r5)  /* 0x8064B878@l */
/* 805F0E9C  C0 04 B8 7C */	lfs f0, lit_895@l(r4)  /* 0x8064B87C@l */
/* 805F0EA0  EC 22 08 2A */	fadds f1, f2, f1
/* 805F0EA4  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 805F0EA8  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 805F0EAC  EC 01 00 2A */	fadds f0, f1, f0
/* 805F0EB0  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 805F0EB4  4E 80 00 20 */	blr 
lbl_805F0EB8:
/* 805F0EB8  3C A0 80 65 */	lis r5, lit_896@ha /* 0x8064B880@ha */
/* 805F0EBC  3C 80 80 65 */	lis r4, lit_897@ha /* 0x8064B884@ha */
/* 805F0EC0  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 805F0EC4  C0 25 B8 80 */	lfs f1, lit_896@l(r5)  /* 0x8064B880@l */
/* 805F0EC8  C0 04 B8 84 */	lfs f0, lit_897@l(r4)  /* 0x8064B884@l */
/* 805F0ECC  EC 22 08 2A */	fadds f1, f2, f1
/* 805F0ED0  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 805F0ED4  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 805F0ED8  EC 01 00 2A */	fadds f0, f1, f0
/* 805F0EDC  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 805F0EE0  4E 80 00 20 */	blr 
lbl_805F0EE4:
/* 805F0EE4  3C 80 80 65 */	lis r4, lit_898@ha /* 0x8064B888@ha */
/* 805F0EE8  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 805F0EEC  C0 04 B8 88 */	lfs f0, lit_898@l(r4)  /* 0x8064B888@l */
/* 805F0EF0  EC 01 00 2A */	fadds f0, f1, f0
/* 805F0EF4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 805F0EF8  4E 80 00 20 */	blr 
lbl_805F0EFC:
/* 805F0EFC  3C 80 80 65 */	lis r4, lit_898@ha /* 0x8064B888@ha */
/* 805F0F00  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 805F0F04  C0 04 B8 88 */	lfs f0, lit_898@l(r4)  /* 0x8064B888@l */
/* 805F0F08  EC 01 00 2A */	fadds f0, f1, f0
/* 805F0F0C  D0 03 00 0C */	stfs f0, 0xc(r3)
lbl_805F0F10:
/* 805F0F10  4E 80 00 20 */	blr 
