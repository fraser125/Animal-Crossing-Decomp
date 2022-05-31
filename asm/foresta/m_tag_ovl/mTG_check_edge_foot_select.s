lbl_805EFC8C:
/* 805EFC8C  3C 80 80 65 */	lis r4, lit_677@ha /* 0x8064B858@ha */
/* 805EFC90  3C A0 80 65 */	lis r5, lit_654@ha /* 0x8064B848@ha */
/* 805EFC94  C0 24 B8 58 */	lfs f1, lit_677@l(r4)  /* 0x8064B858@l */
/* 805EFC98  38 C5 B8 48 */	addi r6, r5, lit_654@l /* 0x8064B848@l */
/* 805EFC9C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805EFCA0  3C 80 80 65 */	lis r4, lit_678@ha /* 0x8064B85C@ha */
/* 805EFCA4  38 A4 B8 5C */	addi r5, r4, lit_678@l /* 0x8064B85C@l */
/* 805EFCA8  88 03 00 03 */	lbz r0, 3(r3)
/* 805EFCAC  EC 01 00 32 */	fmuls f0, f1, f0
/* 805EFCB0  C0 46 00 00 */	lfs f2, 0(r6)
/* 805EFCB4  C0 63 00 10 */	lfs f3, 0x10(r3)
/* 805EFCB8  3C 80 80 65 */	lis r4, lit_679@ha /* 0x8064B860@ha */
/* 805EFCBC  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 805EFCC0  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 805EFCC4  EC 63 08 2A */	fadds f3, f3, f1
/* 805EFCC8  C0 25 00 00 */	lfs f1, 0(r5)
/* 805EFCCC  EC 42 00 32 */	fmuls f2, f2, f0
/* 805EFCD0  C0 04 B8 60 */	lfs f0, lit_679@l(r4)  /* 0x8064B860@l */
/* 805EFCD4  98 03 00 03 */	stb r0, 3(r3)
/* 805EFCD8  38 80 00 00 */	li r4, 0
/* 805EFCDC  EC 43 10 28 */	fsubs f2, f3, f2
/* 805EFCE0  EC 22 08 28 */	fsubs f1, f2, f1
/* 805EFCE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805EFCE8  4C 41 13 82 */	cror 2, 1, 2
/* 805EFCEC  40 82 00 14 */	bne lbl_805EFD00
/* 805EFCF0  88 03 00 03 */	lbz r0, 3(r3)
/* 805EFCF4  38 80 00 01 */	li r4, 1
/* 805EFCF8  60 00 00 01 */	ori r0, r0, 1
/* 805EFCFC  98 03 00 03 */	stb r0, 3(r3)
lbl_805EFD00:
/* 805EFD00  7C 83 23 78 */	mr r3, r4
/* 805EFD04  4E 80 00 20 */	blr 
