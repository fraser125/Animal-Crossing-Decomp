lbl_8059B868:
/* 8059B868  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8059B86C  7C 08 02 A6 */	mflr r0
/* 8059B870  90 01 00 44 */	stw r0, 0x44(r1)
/* 8059B874  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8059B878  7C 9F 23 78 */	mr r31, r4
/* 8059B87C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8059B880  7C 7E 1B 78 */	mr r30, r3
/* 8059B884  80 03 01 B8 */	lwz r0, 0x1b8(r3)
/* 8059B888  2C 00 00 01 */	cmpwi r0, 1
/* 8059B88C  41 82 00 14 */	beq lbl_8059B8A0
/* 8059B890  88 1E 02 1E */	lbz r0, 0x21e(r30)
/* 8059B894  54 00 D7 FE */	rlwinm r0, r0, 0x1a, 0x1f, 0x1f
/* 8059B898  28 00 00 01 */	cmplwi r0, 1
/* 8059B89C  40 82 02 74 */	bne lbl_8059BB10
lbl_8059B8A0:
/* 8059B8A0  7F E3 FB 78 */	mr r3, r31
/* 8059B8A4  4B E3 DD CD */	bl mPlib_get_player_actor_main_index
/* 8059B8A8  2C 03 00 30 */	cmpwi r3, 0x30
/* 8059B8AC  40 82 00 3C */	bne lbl_8059B8E8
/* 8059B8B0  80 1F 20 90 */	lwz r0, 0x2090(r31)
/* 8059B8B4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8059B8B8  40 82 00 38 */	bne lbl_8059B8F0
/* 8059B8BC  C0 3E 01 E0 */	lfs f1, 0x1e0(r30)
/* 8059B8C0  FC 00 08 1E */	fctiwz f0, f1
/* 8059B8C4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8059B8C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059B8CC  2C 00 00 00 */	cmpwi r0, 0
/* 8059B8D0  40 81 00 20 */	ble lbl_8059B8F0
/* 8059B8D4  3C 60 80 65 */	lis r3, lit_566@ha /* 0x8064A064@ha */
/* 8059B8D8  C0 03 A0 64 */	lfs f0, lit_566@l(r3)  /* 0x8064A064@l */
/* 8059B8DC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8059B8E0  D0 1E 01 E0 */	stfs f0, 0x1e0(r30)
/* 8059B8E4  48 00 00 0C */	b lbl_8059B8F0
lbl_8059B8E8:
/* 8059B8E8  38 00 00 00 */	li r0, 0
/* 8059B8EC  B0 1E 02 86 */	sth r0, 0x286(r30)
lbl_8059B8F0:
/* 8059B8F0  80 1E 02 80 */	lwz r0, 0x280(r30)
/* 8059B8F4  2C 00 00 01 */	cmpwi r0, 1
/* 8059B8F8  41 82 00 C8 */	beq lbl_8059B9C0
/* 8059B8FC  40 80 00 10 */	bge lbl_8059B90C
/* 8059B900  2C 00 00 00 */	cmpwi r0, 0
/* 8059B904  40 80 00 14 */	bge lbl_8059B918
/* 8059B908  48 00 01 58 */	b lbl_8059BA60
lbl_8059B90C:
/* 8059B90C  2C 00 00 03 */	cmpwi r0, 3
/* 8059B910  40 80 01 50 */	bge lbl_8059BA60
/* 8059B914  48 00 00 C8 */	b lbl_8059B9DC
lbl_8059B918:
/* 8059B918  A8 7E 02 84 */	lha r3, 0x284(r30)
/* 8059B91C  4B E1 F1 D5 */	bl sin_s
/* 8059B920  FC 00 0A 10 */	fabs f0, f1
/* 8059B924  3C 60 80 65 */	lis r3, lit_471@ha /* 0x8064A040@ha */
/* 8059B928  C0 23 A0 40 */	lfs f1, lit_471@l(r3)  /* 0x8064A040@l */
/* 8059B92C  3C A0 80 65 */	lis r5, lit_567@ha /* 0x8064A068@ha */
/* 8059B930  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 8059B934  3C 80 80 65 */	lis r4, lit_568@ha /* 0x8064A06C@ha */
/* 8059B938  FC 00 00 18 */	frsp f0, f0
/* 8059B93C  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 8059B940  FC A0 18 1E */	fctiwz f5, f3
/* 8059B944  C0 9E 00 2C */	lfs f4, 0x2c(r30)
/* 8059B948  C0 65 A0 68 */	lfs f3, lit_567@l(r5)  /* 0x8064A068@l */
/* 8059B94C  FC 40 10 1E */	fctiwz f2, f2
/* 8059B950  EC 01 00 32 */	fmuls f0, f1, f0
/* 8059B954  C0 24 A0 6C */	lfs f1, lit_568@l(r4)  /* 0x8064A06C@l */
/* 8059B958  EC 64 18 28 */	fsubs f3, f4, f3
/* 8059B95C  D8 A1 00 10 */	stfd f5, 0x10(r1)
/* 8059B960  38 7E 02 6C */	addi r3, r30, 0x26c
/* 8059B964  38 E0 00 78 */	li r7, 0x78
/* 8059B968  EC 01 00 2A */	fadds f0, f1, f0
/* 8059B96C  D8 41 00 20 */	stfd f2, 0x20(r1)
/* 8059B970  FC 20 18 1E */	fctiwz f1, f3
/* 8059B974  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8059B978  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 8059B97C  39 00 00 FF */	li r8, 0xff
/* 8059B980  FC 00 00 1E */	fctiwz f0, f0
/* 8059B984  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 8059B988  39 20 00 B4 */	li r9, 0xb4
/* 8059B98C  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 8059B990  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8059B994  81 41 00 2C */	lwz r10, 0x2c(r1)
/* 8059B998  4B E1 FF 29 */	bl Light_point_ct
/* 8059B99C  7F E3 FB 78 */	mr r3, r31
/* 8059B9A0  38 9F 1D 90 */	addi r4, r31, 0x1d90
/* 8059B9A4  38 BE 02 6C */	addi r5, r30, 0x26c
/* 8059B9A8  4B E2 07 D5 */	bl Global_light_list_new
/* 8059B9AC  90 7E 02 7C */	stw r3, 0x27c(r30)
/* 8059B9B0  80 7E 02 80 */	lwz r3, 0x280(r30)
/* 8059B9B4  38 03 00 01 */	addi r0, r3, 1
/* 8059B9B8  90 1E 02 80 */	stw r0, 0x280(r30)
/* 8059B9BC  48 00 00 A4 */	b lbl_8059BA60
lbl_8059B9C0:
/* 8059B9C0  38 00 00 00 */	li r0, 0
/* 8059B9C4  90 1E 02 28 */	stw r0, 0x228(r30)
/* 8059B9C8  90 1E 02 2C */	stw r0, 0x22c(r30)
/* 8059B9CC  80 7E 02 80 */	lwz r3, 0x280(r30)
/* 8059B9D0  38 03 00 01 */	addi r0, r3, 1
/* 8059B9D4  90 1E 02 80 */	stw r0, 0x280(r30)
/* 8059B9D8  48 00 00 88 */	b lbl_8059BA60
lbl_8059B9DC:
/* 8059B9DC  A8 7E 02 84 */	lha r3, 0x284(r30)
/* 8059B9E0  4B E1 F1 11 */	bl sin_s
/* 8059B9E4  FC 00 0A 10 */	fabs f0, f1
/* 8059B9E8  3C 60 80 65 */	lis r3, lit_471@ha /* 0x8064A040@ha */
/* 8059B9EC  C0 23 A0 40 */	lfs f1, lit_471@l(r3)  /* 0x8064A040@l */
/* 8059B9F0  3C A0 80 65 */	lis r5, lit_567@ha /* 0x8064A068@ha */
/* 8059B9F4  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 8059B9F8  3C 80 80 65 */	lis r4, lit_568@ha /* 0x8064A06C@ha */
/* 8059B9FC  FC 00 00 18 */	frsp f0, f0
/* 8059BA00  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 8059BA04  FC A0 18 1E */	fctiwz f5, f3
/* 8059BA08  C0 9E 00 2C */	lfs f4, 0x2c(r30)
/* 8059BA0C  C0 65 A0 68 */	lfs f3, lit_567@l(r5)  /* 0x8064A068@l */
/* 8059BA10  FC 40 10 1E */	fctiwz f2, f2
/* 8059BA14  EC 01 00 32 */	fmuls f0, f1, f0
/* 8059BA18  C0 24 A0 6C */	lfs f1, lit_568@l(r4)  /* 0x8064A06C@l */
/* 8059BA1C  EC 64 18 28 */	fsubs f3, f4, f3
/* 8059BA20  D8 A1 00 28 */	stfd f5, 0x28(r1)
/* 8059BA24  38 7E 02 6C */	addi r3, r30, 0x26c
/* 8059BA28  38 E0 00 78 */	li r7, 0x78
/* 8059BA2C  EC 01 00 2A */	fadds f0, f1, f0
/* 8059BA30  D8 41 00 18 */	stfd f2, 0x18(r1)
/* 8059BA34  FC 20 18 1E */	fctiwz f1, f3
/* 8059BA38  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 8059BA3C  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 8059BA40  39 00 00 FF */	li r8, 0xff
/* 8059BA44  FC 00 00 1E */	fctiwz f0, f0
/* 8059BA48  D8 21 00 20 */	stfd f1, 0x20(r1)
/* 8059BA4C  39 20 00 B4 */	li r9, 0xb4
/* 8059BA50  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 8059BA54  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8059BA58  81 41 00 14 */	lwz r10, 0x14(r1)
/* 8059BA5C  4B E1 FE 65 */	bl Light_point_ct
lbl_8059BA60:
/* 8059BA60  3C 60 80 65 */	lis r3, lit_569@ha /* 0x8064A074@ha */
/* 8059BA64  3C 80 80 65 */	lis r4, lit_570@ha /* 0x8064A07C@ha */
/* 8059BA68  38 A3 A0 74 */	addi r5, r3, lit_569@l /* 0x8064A074@l */
/* 8059BA6C  C8 C4 A0 7C */	lfd f6, lit_570@l(r4)  /* 0x8064A07C@l */
/* 8059BA70  C8 E5 00 00 */	lfd f7, 0(r5)
/* 8059BA74  3C 60 80 65 */	lis r3, lit_571@ha /* 0x8064A084@ha */
/* 8059BA78  38 C3 A0 84 */	addi r6, r3, lit_571@l /* 0x8064A084@l */
/* 8059BA7C  C0 3E 01 E0 */	lfs f1, 0x1e0(r30)
/* 8059BA80  FC 00 38 34 */	frsqrte f0, f7
/* 8059BA84  3C 60 80 65 */	lis r3, lit_572@ha /* 0x8064A08C@ha */
/* 8059BA88  38 A3 A0 8C */	addi r5, r3, lit_572@l /* 0x8064A08C@l */
/* 8059BA8C  C8 86 00 00 */	lfd f4, 0(r6)
/* 8059BA90  C0 45 00 00 */	lfs f2, 0(r5)
/* 8059BA94  3C 60 80 65 */	lis r3, lit_566@ha /* 0x8064A064@ha */
/* 8059BA98  FC 60 00 32 */	fmul f3, f0, f0
/* 8059BA9C  38 83 A0 64 */	addi r4, r3, lit_566@l /* 0x8064A064@l */
/* 8059BAA0  38 7E 02 84 */	addi r3, r30, 0x284
/* 8059BAA4  38 A0 09 C4 */	li r5, 0x9c4
/* 8059BAA8  FC A6 00 32 */	fmul f5, f6, f0
/* 8059BAAC  C0 04 00 00 */	lfs f0, 0(r4)
/* 8059BAB0  FC 67 00 F2 */	fmul f3, f7, f3
/* 8059BAB4  38 C0 00 00 */	li r6, 0
/* 8059BAB8  EC 22 00 72 */	fmuls f1, f2, f1
/* 8059BABC  FC 44 18 28 */	fsub f2, f4, f3
/* 8059BAC0  FC 20 08 1E */	fctiwz f1, f1
/* 8059BAC4  FC 45 00 B2 */	fmul f2, f5, f2
/* 8059BAC8  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 8059BACC  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 8059BAD0  FC 22 00 B2 */	fmul f1, f2, f2
/* 8059BAD4  FC 46 00 B2 */	fmul f2, f6, f2
/* 8059BAD8  FC 27 00 72 */	fmul f1, f7, f1
/* 8059BADC  FC 24 08 28 */	fsub f1, f4, f1
/* 8059BAE0  FC 42 00 72 */	fmul f2, f2, f1
/* 8059BAE4  FC 22 00 B2 */	fmul f1, f2, f2
/* 8059BAE8  FC 46 00 B2 */	fmul f2, f6, f2
/* 8059BAEC  FC 27 00 72 */	fmul f1, f7, f1
/* 8059BAF0  FC 24 08 28 */	fsub f1, f4, f1
/* 8059BAF4  FC 22 00 72 */	fmul f1, f2, f1
/* 8059BAF8  FC 27 00 72 */	fmul f1, f7, f1
/* 8059BAFC  FC 20 08 18 */	frsp f1, f1
/* 8059BB00  D0 21 00 08 */	stfs f1, 8(r1)
/* 8059BB04  C0 21 00 08 */	lfs f1, 8(r1)
/* 8059BB08  EC 20 08 28 */	fsubs f1, f0, f1
/* 8059BB0C  4B E1 F8 05 */	bl add_calc_short_angle2
lbl_8059BB10:
/* 8059BB10  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8059BB14  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8059BB18  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8059BB1C  7C 08 03 A6 */	mtlr r0
/* 8059BB20  38 21 00 40 */	addi r1, r1, 0x40
/* 8059BB24  4E 80 00 20 */	blr 
