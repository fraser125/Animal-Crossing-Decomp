lbl_8038B390:
/* 8038B390  3C E0 80 65 */	lis r7, data_80650860@ha /* 0x80650860@ha */
/* 8038B394  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 8038B398  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038B39C  54 C6 1D 78 */	rlwinm r6, r6, 3, 0x15, 0x1c
/* 8038B3A0  38 A7 08 60 */	addi r5, r7, data_80650860@l /* 0x80650860@l */
/* 8038B3A4  2C 00 00 03 */	cmpwi r0, 3
/* 8038B3A8  7C A5 32 14 */	add r5, r5, r6
/* 8038B3AC  80 C5 00 00 */	lwz r6, 0(r5)
/* 8038B3B0  80 A5 00 04 */	lwz r5, 4(r5)
/* 8038B3B4  90 C1 00 08 */	stw r6, 8(r1)
/* 8038B3B8  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8038B3BC  41 82 00 FC */	beq lbl_8038B4B8
/* 8038B3C0  40 80 00 1C */	bge lbl_8038B3DC
/* 8038B3C4  2C 00 00 01 */	cmpwi r0, 1
/* 8038B3C8  41 82 00 64 */	beq lbl_8038B42C
/* 8038B3CC  40 80 00 A0 */	bge lbl_8038B46C
/* 8038B3D0  2C 00 00 00 */	cmpwi r0, 0
/* 8038B3D4  40 80 00 18 */	bge lbl_8038B3EC
/* 8038B3D8  48 00 01 CC */	b lbl_8038B5A4
lbl_8038B3DC:
/* 8038B3DC  2C 00 00 05 */	cmpwi r0, 5
/* 8038B3E0  41 82 01 7C */	beq lbl_8038B55C
/* 8038B3E4  40 80 01 C0 */	bge lbl_8038B5A4
/* 8038B3E8  48 00 01 1C */	b lbl_8038B504
lbl_8038B3EC:
/* 8038B3EC  3C A0 80 64 */	lis r5, lit_789@ha /* 0x806419D0@ha */
/* 8038B3F0  C0 61 00 08 */	lfs f3, 8(r1)
/* 8038B3F4  C0 A5 19 D0 */	lfs f5, lit_789@l(r5)  /* 0x806419D0@l */
/* 8038B3F8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8038B3FC  EC 85 00 72 */	fmuls f4, f5, f1
/* 8038B400  EC 25 00 B2 */	fmuls f1, f5, f2
/* 8038B404  EC 44 18 28 */	fsubs f2, f4, f3
/* 8038B408  D0 43 00 00 */	stfs f2, 0(r3)
/* 8038B40C  D0 23 00 04 */	stfs f1, 4(r3)
/* 8038B410  C0 23 00 00 */	lfs f1, 0(r3)
/* 8038B414  EC 25 08 2A */	fadds f1, f5, f1
/* 8038B418  EC 01 00 2A */	fadds f0, f1, f0
/* 8038B41C  D0 04 00 00 */	stfs f0, 0(r4)
/* 8038B420  C0 03 00 04 */	lfs f0, 4(r3)
/* 8038B424  D0 04 00 04 */	stfs f0, 4(r4)
/* 8038B428  48 00 01 7C */	b lbl_8038B5A4
lbl_8038B42C:
/* 8038B42C  3C A0 80 64 */	lis r5, lit_789@ha /* 0x806419D0@ha */
/* 8038B430  C0 61 00 08 */	lfs f3, 8(r1)
/* 8038B434  C0 A5 19 D0 */	lfs f5, lit_789@l(r5)  /* 0x806419D0@l */
/* 8038B438  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8038B43C  EC 45 00 B2 */	fmuls f2, f5, f2
/* 8038B440  EC 85 00 72 */	fmuls f4, f5, f1
/* 8038B444  EC 22 18 28 */	fsubs f1, f2, f3
/* 8038B448  D0 83 00 00 */	stfs f4, 0(r3)
/* 8038B44C  D0 23 00 04 */	stfs f1, 4(r3)
/* 8038B450  C0 23 00 00 */	lfs f1, 0(r3)
/* 8038B454  D0 24 00 00 */	stfs f1, 0(r4)
/* 8038B458  C0 23 00 04 */	lfs f1, 4(r3)
/* 8038B45C  EC 25 08 2A */	fadds f1, f5, f1
/* 8038B460  EC 01 00 2A */	fadds f0, f1, f0
/* 8038B464  D0 04 00 04 */	stfs f0, 4(r4)
/* 8038B468  48 00 01 3C */	b lbl_8038B5A4
lbl_8038B46C:
/* 8038B46C  3C C0 80 64 */	lis r6, lit_789@ha /* 0x806419D0@ha */
/* 8038B470  3C A0 80 64 */	lis r5, lit_522@ha /* 0x806419B0@ha */
/* 8038B474  C0 C6 19 D0 */	lfs f6, lit_789@l(r6)  /* 0x806419D0@l */
/* 8038B478  C0 65 19 B0 */	lfs f3, lit_522@l(r5)  /* 0x806419B0@l */
/* 8038B47C  EC A6 00 72 */	fmuls f5, f6, f1
/* 8038B480  C0 81 00 08 */	lfs f4, 8(r1)
/* 8038B484  EC 23 10 2A */	fadds f1, f3, f2
/* 8038B488  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8038B48C  EC 45 20 28 */	fsubs f2, f5, f4
/* 8038B490  EC 26 00 72 */	fmuls f1, f6, f1
/* 8038B494  D0 44 00 00 */	stfs f2, 0(r4)
/* 8038B498  D0 24 00 04 */	stfs f1, 4(r4)
/* 8038B49C  C0 24 00 00 */	lfs f1, 0(r4)
/* 8038B4A0  EC 26 08 2A */	fadds f1, f6, f1
/* 8038B4A4  EC 01 00 2A */	fadds f0, f1, f0
/* 8038B4A8  D0 03 00 00 */	stfs f0, 0(r3)
/* 8038B4AC  C0 04 00 04 */	lfs f0, 4(r4)
/* 8038B4B0  D0 03 00 04 */	stfs f0, 4(r3)
/* 8038B4B4  48 00 00 F0 */	b lbl_8038B5A4
lbl_8038B4B8:
/* 8038B4B8  3C A0 80 64 */	lis r5, lit_522@ha /* 0x806419B0@ha */
/* 8038B4BC  3C C0 80 64 */	lis r6, lit_789@ha /* 0x806419D0@ha */
/* 8038B4C0  C0 05 19 B0 */	lfs f0, lit_522@l(r5)  /* 0x806419B0@l */
/* 8038B4C4  C0 A6 19 D0 */	lfs f5, lit_789@l(r6)  /* 0x806419D0@l */
/* 8038B4C8  EC 80 08 2A */	fadds f4, f0, f1
/* 8038B4CC  C0 61 00 08 */	lfs f3, 8(r1)
/* 8038B4D0  EC 25 00 B2 */	fmuls f1, f5, f2
/* 8038B4D4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8038B4D8  EC 45 01 32 */	fmuls f2, f5, f4
/* 8038B4DC  EC 21 18 28 */	fsubs f1, f1, f3
/* 8038B4E0  D0 43 00 00 */	stfs f2, 0(r3)
/* 8038B4E4  D0 23 00 04 */	stfs f1, 4(r3)
/* 8038B4E8  C0 23 00 00 */	lfs f1, 0(r3)
/* 8038B4EC  D0 24 00 00 */	stfs f1, 0(r4)
/* 8038B4F0  C0 23 00 04 */	lfs f1, 4(r3)
/* 8038B4F4  EC 25 08 2A */	fadds f1, f5, f1
/* 8038B4F8  EC 01 00 2A */	fadds f0, f1, f0
/* 8038B4FC  D0 04 00 04 */	stfs f0, 4(r4)
/* 8038B500  48 00 00 A4 */	b lbl_8038B5A4
lbl_8038B504:
/* 8038B504  3C C0 80 64 */	lis r6, lit_789@ha /* 0x806419D0@ha */
/* 8038B508  3C A0 80 64 */	lis r5, lit_522@ha /* 0x806419B0@ha */
/* 8038B50C  C0 86 19 D0 */	lfs f4, lit_789@l(r6)  /* 0x806419D0@l */
/* 8038B510  C0 05 19 B0 */	lfs f0, lit_522@l(r5)  /* 0x806419B0@l */
/* 8038B514  EC 24 00 72 */	fmuls f1, f4, f1
/* 8038B518  C0 61 00 08 */	lfs f3, 8(r1)
/* 8038B51C  EC 00 10 2A */	fadds f0, f0, f2
/* 8038B520  C0 A1 00 0C */	lfs f5, 0xc(r1)
/* 8038B524  EC 21 18 28 */	fsubs f1, f1, f3
/* 8038B528  EC 04 00 32 */	fmuls f0, f4, f0
/* 8038B52C  D0 23 00 00 */	stfs f1, 0(r3)
/* 8038B530  EC 00 18 2A */	fadds f0, f0, f3
/* 8038B534  C0 23 00 00 */	lfs f1, 0(r3)
/* 8038B538  EC 21 28 2A */	fadds f1, f1, f5
/* 8038B53C  EC 24 08 2A */	fadds f1, f4, f1
/* 8038B540  D0 24 00 00 */	stfs f1, 0(r4)
/* 8038B544  D0 03 00 04 */	stfs f0, 4(r3)
/* 8038B548  C0 03 00 04 */	lfs f0, 4(r3)
/* 8038B54C  EC 00 20 28 */	fsubs f0, f0, f4
/* 8038B550  EC 00 28 28 */	fsubs f0, f0, f5
/* 8038B554  D0 04 00 04 */	stfs f0, 4(r4)
/* 8038B558  48 00 00 4C */	b lbl_8038B5A4
lbl_8038B55C:
/* 8038B55C  3C A0 80 64 */	lis r5, lit_789@ha /* 0x806419D0@ha */
/* 8038B560  C0 61 00 08 */	lfs f3, 8(r1)
/* 8038B564  C0 85 19 D0 */	lfs f4, lit_789@l(r5)  /* 0x806419D0@l */
/* 8038B568  C0 A1 00 0C */	lfs f5, 0xc(r1)
/* 8038B56C  EC 24 00 72 */	fmuls f1, f4, f1
/* 8038B570  EC 04 00 B2 */	fmuls f0, f4, f2
/* 8038B574  EC 21 18 28 */	fsubs f1, f1, f3
/* 8038B578  EC 00 18 28 */	fsubs f0, f0, f3
/* 8038B57C  D0 23 00 00 */	stfs f1, 0(r3)
/* 8038B580  C0 23 00 00 */	lfs f1, 0(r3)
/* 8038B584  EC 21 28 2A */	fadds f1, f1, f5
/* 8038B588  EC 24 08 2A */	fadds f1, f4, f1
/* 8038B58C  D0 24 00 00 */	stfs f1, 0(r4)
/* 8038B590  D0 03 00 04 */	stfs f0, 4(r3)
/* 8038B594  C0 03 00 04 */	lfs f0, 4(r3)
/* 8038B598  EC 04 00 2A */	fadds f0, f4, f0
/* 8038B59C  EC 00 28 2A */	fadds f0, f0, f5
/* 8038B5A0  D0 04 00 04 */	stfs f0, 4(r4)
lbl_8038B5A4:
/* 8038B5A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8038B5A8  4E 80 00 20 */	blr 
