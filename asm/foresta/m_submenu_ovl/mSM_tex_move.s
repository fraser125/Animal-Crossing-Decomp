lbl_805EF008:
/* 805EF008  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805EF00C  3C 60 80 65 */	lis r3, lit_987@ha /* 0x8064B808@ha */
/* 805EF010  38 83 B8 08 */	addi r4, r3, lit_987@l /* 0x8064B808@l */
/* 805EF014  C0 05 09 34 */	lfs f0, 0x934(r5)
/* 805EF018  3C 60 80 65 */	lis r3, lit_988@ha /* 0x8064B80C@ha */
/* 805EF01C  C0 44 00 00 */	lfs f2, 0(r4)
/* 805EF020  C0 23 B8 0C */	lfs f1, lit_988@l(r3)  /* 0x8064B80C@l */
/* 805EF024  EC 00 10 2A */	fadds f0, f0, f2
/* 805EF028  D0 05 09 34 */	stfs f0, 0x934(r5)
/* 805EF02C  C0 05 09 38 */	lfs f0, 0x938(r5)
/* 805EF030  EC 00 10 2A */	fadds f0, f0, f2
/* 805EF034  D0 05 09 38 */	stfs f0, 0x938(r5)
/* 805EF038  48 00 00 10 */	b lbl_805EF048
lbl_805EF03C:
/* 805EF03C  C0 05 09 34 */	lfs f0, 0x934(r5)
/* 805EF040  EC 00 08 28 */	fsubs f0, f0, f1
/* 805EF044  D0 05 09 34 */	stfs f0, 0x934(r5)
lbl_805EF048:
/* 805EF048  C0 05 09 34 */	lfs f0, 0x934(r5)
/* 805EF04C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 805EF050  4C 41 13 82 */	cror 2, 1, 2
/* 805EF054  41 82 FF E8 */	beq lbl_805EF03C
/* 805EF058  3C 60 80 65 */	lis r3, lit_988@ha /* 0x8064B80C@ha */
/* 805EF05C  C0 23 B8 0C */	lfs f1, lit_988@l(r3)  /* 0x8064B80C@l */
/* 805EF060  48 00 00 10 */	b lbl_805EF070
lbl_805EF064:
/* 805EF064  C0 05 09 38 */	lfs f0, 0x938(r5)
/* 805EF068  EC 00 08 28 */	fsubs f0, f0, f1
/* 805EF06C  D0 05 09 38 */	stfs f0, 0x938(r5)
lbl_805EF070:
/* 805EF070  C0 05 09 38 */	lfs f0, 0x938(r5)
/* 805EF074  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 805EF078  4C 41 13 82 */	cror 2, 1, 2
/* 805EF07C  41 82 FF E8 */	beq lbl_805EF064
/* 805EF080  4E 80 00 20 */	blr 
