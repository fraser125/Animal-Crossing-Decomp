lbl_803C2C50:
/* 803C2C50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C2C54  3C A0 80 64 */	lis r5, lit_947@ha /* 0x80642630@ha */
/* 803C2C58  3C 80 80 64 */	lis r4, lit_1585@ha /* 0x80642638@ha */
/* 803C2C5C  C0 25 26 30 */	lfs f1, lit_947@l(r5)  /* 0x80642630@l */
/* 803C2C60  C0 43 04 18 */	lfs f2, 0x418(r3)
/* 803C2C64  C0 04 26 38 */	lfs f0, lit_1585@l(r4)  /* 0x80642638@l */
/* 803C2C68  EC 22 08 2A */	fadds f1, f2, f1
/* 803C2C6C  D0 23 04 18 */	stfs f1, 0x418(r3)
/* 803C2C70  C0 23 04 18 */	lfs f1, 0x418(r3)
/* 803C2C74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803C2C78  4C 41 13 82 */	cror 2, 1, 2
/* 803C2C7C  40 82 00 10 */	bne lbl_803C2C8C
/* 803C2C80  3C 80 80 64 */	lis r4, lit_725@ha /* 0x80642618@ha */
/* 803C2C84  C0 04 26 18 */	lfs f0, lit_725@l(r4)  /* 0x80642618@l */
/* 803C2C88  D0 03 04 18 */	stfs f0, 0x418(r3)
lbl_803C2C8C:
/* 803C2C8C  3C A0 80 64 */	lis r5, lit_1586@ha /* 0x8064263C@ha */
/* 803C2C90  3C 80 80 64 */	lis r4, lit_725@ha /* 0x80642618@ha */
/* 803C2C94  C0 23 04 18 */	lfs f1, 0x418(r3)
/* 803C2C98  C0 45 26 3C */	lfs f2, lit_1586@l(r5)  /* 0x8064263C@l */
/* 803C2C9C  C0 04 26 18 */	lfs f0, lit_725@l(r4)  /* 0x80642618@l */
/* 803C2CA0  EC 21 10 28 */	fsubs f1, f1, f2
/* 803C2CA4  EC 21 10 24 */	fdivs f1, f1, f2
/* 803C2CA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803C2CAC  4C 40 13 82 */	cror 2, 0, 2
/* 803C2CB0  40 82 00 14 */	bne lbl_803C2CC4
/* 803C2CB4  3C 80 80 64 */	lis r4, lit_947@ha /* 0x80642630@ha */
/* 803C2CB8  C0 04 26 30 */	lfs f0, lit_947@l(r4)  /* 0x80642630@l */
/* 803C2CBC  EC 20 08 2A */	fadds f1, f0, f1
/* 803C2CC0  48 00 00 10 */	b lbl_803C2CD0
lbl_803C2CC4:
/* 803C2CC4  3C 80 80 64 */	lis r4, lit_947@ha /* 0x80642630@ha */
/* 803C2CC8  C0 04 26 30 */	lfs f0, lit_947@l(r4)  /* 0x80642630@l */
/* 803C2CCC  EC 20 08 28 */	fsubs f1, f0, f1
lbl_803C2CD0:
/* 803C2CD0  3C 80 80 64 */	lis r4, lit_725@ha /* 0x80642618@ha */
/* 803C2CD4  C0 04 26 18 */	lfs f0, lit_725@l(r4)  /* 0x80642618@l */
/* 803C2CD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803C2CDC  40 80 00 0C */	bge lbl_803C2CE8
/* 803C2CE0  FC 20 00 90 */	fmr f1, f0
/* 803C2CE4  48 00 00 18 */	b lbl_803C2CFC
lbl_803C2CE8:
/* 803C2CE8  3C 80 80 64 */	lis r4, lit_947@ha /* 0x80642630@ha */
/* 803C2CEC  C0 04 26 30 */	lfs f0, lit_947@l(r4)  /* 0x80642630@l */
/* 803C2CF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803C2CF4  40 81 00 08 */	ble lbl_803C2CFC
/* 803C2CF8  FC 20 00 90 */	fmr f1, f0
lbl_803C2CFC:
/* 803C2CFC  3C 80 80 64 */	lis r4, lit_1587@ha /* 0x80642640@ha */
/* 803C2D00  C0 04 26 40 */	lfs f0, lit_1587@l(r4)  /* 0x80642640@l */
/* 803C2D04  EC 00 00 72 */	fmuls f0, f0, f1
/* 803C2D08  FC 00 00 1E */	fctiwz f0, f0
/* 803C2D0C  D8 01 00 08 */	stfd f0, 8(r1)
/* 803C2D10  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803C2D14  98 03 02 CF */	stb r0, 0x2cf(r3)
/* 803C2D18  38 21 00 10 */	addi r1, r1, 0x10
/* 803C2D1C  4E 80 00 20 */	blr 
