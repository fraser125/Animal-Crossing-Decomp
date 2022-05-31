lbl_805A18B0:
/* 805A18B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805A18B4  7C 08 02 A6 */	mflr r0
/* 805A18B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A18BC  39 61 00 30 */	addi r11, r1, 0x30
/* 805A18C0  4B AF 96 0D */	bl func_8009AECC
/* 805A18C4  7C 7E 1B 78 */	mr r30, r3
/* 805A18C8  7C 9F 23 78 */	mr r31, r4
/* 805A18CC  80 03 02 34 */	lwz r0, 0x234(r3)
/* 805A18D0  2C 00 00 00 */	cmpwi r0, 0
/* 805A18D4  40 82 00 7C */	bne lbl_805A1950
/* 805A18D8  C0 5E 02 4C */	lfs f2, 0x24c(r30)
/* 805A18DC  3C 60 80 65 */	lis r3, lit_775@ha /* 0x8064A344@ha */
/* 805A18E0  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 805A18E4  C0 7E 02 50 */	lfs f3, 0x250(r30)
/* 805A18E8  EC 42 00 28 */	fsubs f2, f2, f0
/* 805A18EC  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 805A18F0  C0 03 A3 44 */	lfs f0, lit_775@l(r3)  /* 0x8064A344@l */
/* 805A18F4  EC 23 08 28 */	fsubs f1, f3, f1
/* 805A18F8  EC 82 00 B2 */	fmuls f4, f2, f2
/* 805A18FC  EC 61 00 72 */	fmuls f3, f1, f1
/* 805A1900  EC 64 18 2A */	fadds f3, f4, f3
/* 805A1904  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 805A1908  40 80 00 40 */	bge lbl_805A1948
/* 805A190C  4B AB B3 E9 */	bl fqrand
/* 805A1910  3C 80 80 65 */	lis r4, lit_525@ha /* 0x8064A2EC@ha */
/* 805A1914  3C 60 80 6C */	lis r3, data_806C3680@ha /* 0x806C3680@ha */
/* 805A1918  C0 04 A2 EC */	lfs f0, lit_525@l(r4)  /* 0x8064A2EC@l */
/* 805A191C  38 63 36 80 */	addi r3, r3, data_806C3680@l /* 0x806C3680@l */
/* 805A1920  A8 1E 00 36 */	lha r0, 0x36(r30)
/* 805A1924  EC 00 00 72 */	fmuls f0, f0, f1
/* 805A1928  FC 00 00 1E */	fctiwz f0, f0
/* 805A192C  D8 01 00 08 */	stfd f0, 8(r1)
/* 805A1930  80 81 00 0C */	lwz r4, 0xc(r1)
/* 805A1934  54 84 08 3C */	slwi r4, r4, 1
/* 805A1938  7C 63 22 AE */	lhax r3, r3, r4
/* 805A193C  7C 00 1A 14 */	add r0, r0, r3
/* 805A1940  B0 1E 00 36 */	sth r0, 0x36(r30)
/* 805A1944  48 00 00 0C */	b lbl_805A1950
lbl_805A1948:
/* 805A1948  4B E6 A6 B9 */	bl atans_table
/* 805A194C  B0 7E 00 36 */	sth r3, 0x36(r30)
lbl_805A1950:
/* 805A1950  3C 80 80 65 */	lis r4, lit_407@ha /* 0x8064A2C4@ha */
/* 805A1954  3C 60 80 65 */	lis r3, lit_595@ha /* 0x8064A320@ha */
/* 805A1958  C0 04 A2 C4 */	lfs f0, lit_407@l(r4)  /* 0x8064A2C4@l */
/* 805A195C  38 00 00 00 */	li r0, 0
/* 805A1960  C0 23 A3 20 */	lfs f1, lit_595@l(r3)  /* 0x8064A320@l */
/* 805A1964  7F C4 F3 78 */	mr r4, r30
/* 805A1968  D0 1E 01 F0 */	stfs f0, 0x1f0(r30)
/* 805A196C  38 60 00 00 */	li r3, 0
/* 805A1970  38 A0 00 01 */	li r5, 1
/* 805A1974  38 C0 00 00 */	li r6, 0
/* 805A1978  90 1E 02 2C */	stw r0, 0x22c(r30)
/* 805A197C  38 E0 00 00 */	li r7, 0
/* 805A1980  90 1E 02 3C */	stw r0, 0x23c(r30)
/* 805A1984  D0 1E 00 74 */	stfs f0, 0x74(r30)
/* 805A1988  D0 1E 01 E8 */	stfs f0, 0x1e8(r30)
/* 805A198C  90 1E 02 28 */	stw r0, 0x228(r30)
/* 805A1990  AB 7E 00 DE */	lha r27, 0xde(r30)
/* 805A1994  A8 1E 00 36 */	lha r0, 0x36(r30)
/* 805A1998  B0 1E 00 DE */	sth r0, 0xde(r30)
/* 805A199C  C0 5E 02 14 */	lfs f2, 0x214(r30)
/* 805A19A0  4B DE 84 01 */	bl mCoBG_BgCheckControll
/* 805A19A4  3C 60 80 65 */	lis r3, lit_595@ha /* 0x8064A320@ha */
/* 805A19A8  B3 7E 00 DE */	sth r27, 0xde(r30)
/* 805A19AC  3B A3 A3 20 */	addi r29, r3, lit_595@l /* 0x8064A320@l */
/* 805A19B0  3B 80 00 00 */	li r28, 0
lbl_805A19B4:
/* 805A19B4  7F C3 F3 78 */	mr r3, r30
/* 805A19B8  7F E4 FB 78 */	mr r4, r31
/* 805A19BC  4B FF EE 55 */	bl aITB_BGcheck
/* 805A19C0  2C 03 00 01 */	cmpwi r3, 1
/* 805A19C4  40 82 00 3C */	bne lbl_805A1A00
/* 805A19C8  A8 1E 00 36 */	lha r0, 0x36(r30)
/* 805A19CC  7F C4 F3 78 */	mr r4, r30
/* 805A19D0  C0 3D 00 00 */	lfs f1, 0(r29)
/* 805A19D4  38 60 00 00 */	li r3, 0
/* 805A19D8  B0 1E 00 DE */	sth r0, 0xde(r30)
/* 805A19DC  38 A0 00 01 */	li r5, 1
/* 805A19E0  38 C0 00 00 */	li r6, 0
/* 805A19E4  38 E0 00 00 */	li r7, 0
/* 805A19E8  C0 5E 02 14 */	lfs f2, 0x214(r30)
/* 805A19EC  4B DE 83 B5 */	bl mCoBG_BgCheckControll
/* 805A19F0  3B 9C 00 01 */	addi r28, r28, 1
/* 805A19F4  2C 1C 00 04 */	cmpwi r28, 4
/* 805A19F8  41 80 FF BC */	blt lbl_805A19B4
/* 805A19FC  B3 7E 00 DE */	sth r27, 0xde(r30)
lbl_805A1A00:
/* 805A1A00  39 61 00 30 */	addi r11, r1, 0x30
/* 805A1A04  4B AF 95 15 */	bl func_8009AF18
/* 805A1A08  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805A1A0C  7C 08 03 A6 */	mtlr r0
/* 805A1A10  38 21 00 30 */	addi r1, r1, 0x30
/* 805A1A14  4E 80 00 20 */	blr 
