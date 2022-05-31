lbl_80384C8C:
/* 80384C8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80384C90  7C 08 02 A6 */	mflr r0
/* 80384C94  3C 80 80 64 */	lis r4, lit_792@ha /* 0x80641990@ha */
/* 80384C98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80384C9C  C0 64 19 90 */	lfs f3, lit_792@l(r4)  /* 0x80641990@l */
/* 80384CA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80384CA4  7C 7F 1B 78 */	mr r31, r3
/* 80384CA8  C0 23 00 F8 */	lfs f1, 0xf8(r3)
/* 80384CAC  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 80384CB0  40 80 00 74 */	bge lbl_80384D24
/* 80384CB4  3C 80 80 64 */	lis r4, lit_399@ha /* 0x80641744@ha */
/* 80384CB8  3C 60 80 64 */	lis r3, lit_402@ha /* 0x80641750@ha */
/* 80384CBC  C0 04 17 44 */	lfs f0, lit_399@l(r4)  /* 0x80641744@l */
/* 80384CC0  C0 43 17 50 */	lfs f2, lit_402@l(r3)  /* 0x80641750@l */
/* 80384CC4  EC 01 00 2A */	fadds f0, f1, f0
/* 80384CC8  FC 80 10 90 */	fmr f4, f2
/* 80384CCC  FC A0 10 90 */	fmr f5, f2
/* 80384CD0  D0 1F 00 F8 */	stfs f0, 0xf8(r31)
/* 80384CD4  C0 3F 00 F8 */	lfs f1, 0xf8(r31)
/* 80384CD8  48 03 69 25 */	bl get_percent_forAccelBrake
/* 80384CDC  3C 80 80 64 */	lis r4, lit_399@ha /* 0x80641744@ha */
/* 80384CE0  38 60 00 00 */	li r3, 0
/* 80384CE4  C0 04 17 44 */	lfs f0, lit_399@l(r4)  /* 0x80641744@l */
/* 80384CE8  EC 40 08 28 */	fsubs f2, f0, f1
/* 80384CEC  D0 5F 00 DC */	stfs f2, 0xdc(r31)
/* 80384CF0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80384CF4  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80384CF8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80384CFC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80384D00  EC 01 00 2A */	fadds f0, f1, f0
/* 80384D04  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80384D08  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80384D0C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80384D10  EC 00 08 28 */	fsubs f0, f0, f1
/* 80384D14  EC 02 00 32 */	fmuls f0, f2, f0
/* 80384D18  EC 01 00 2A */	fadds f0, f1, f0
/* 80384D1C  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80384D20  48 00 00 28 */	b lbl_80384D48
lbl_80384D24:
/* 80384D24  3C 80 80 64 */	lis r4, lit_402@ha /* 0x80641750@ha */
/* 80384D28  38 60 00 01 */	li r3, 1
/* 80384D2C  C0 04 17 50 */	lfs f0, lit_402@l(r4)  /* 0x80641750@l */
/* 80384D30  D0 1F 00 F8 */	stfs f0, 0xf8(r31)
/* 80384D34  D0 1F 00 DC */	stfs f0, 0xdc(r31)
/* 80384D38  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80384D3C  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80384D40  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80384D44  D0 1F 00 04 */	stfs f0, 4(r31)
lbl_80384D48:
/* 80384D48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80384D4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80384D50  7C 08 03 A6 */	mtlr r0
/* 80384D54  38 21 00 10 */	addi r1, r1, 0x10
/* 80384D58  4E 80 00 20 */	blr 
