lbl_8044FFC4:
/* 8044FFC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8044FFC8  7C 08 02 A6 */	mflr r0
/* 8044FFCC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8044FFD0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8044FFD4  7C 7F 1B 78 */	mr r31, r3
/* 8044FFD8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8044FFDC  7C 9E 23 78 */	mr r30, r4
/* 8044FFE0  4B C0 CC ED */	bl func_8005CCCC
/* 8044FFE4  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8044FFE8  7F E3 FB 78 */	mr r3, r31
/* 8044FFEC  7F C4 F3 78 */	mr r4, r30
/* 8044FFF0  D0 1F 05 A4 */	stfs f0, 0x5a4(r31)
/* 8044FFF4  4B FE 45 15 */	bl mfish_onefish_ct
/* 8044FFF8  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 8044FFFC  3C 60 80 66 */	lis r3, data_8065F050@ha /* 0x8065F050@ha */
/* 80450000  38 A4 42 48 */	addi r5, r4, lit_468@l /* 0x80644248@l */
/* 80450004  38 80 40 00 */	li r4, 0x4000
/* 80450008  C0 25 00 00 */	lfs f1, 0(r5)
/* 8045000C  38 E3 F0 50 */	addi r7, r3, data_8065F050@l /* 0x8065F050@l */
/* 80450010  38 60 00 00 */	li r3, 0
/* 80450014  38 00 00 07 */	li r0, 7
/* 80450018  D0 3F 05 E8 */	stfs f1, 0x5e8(r31)
/* 8045001C  80 C7 00 00 */	lwz r6, 0(r7)
/* 80450020  80 A7 00 04 */	lwz r5, 4(r7)
/* 80450024  90 DF 05 AC */	stw r6, 0x5ac(r31)
/* 80450028  90 BF 05 B0 */	stw r5, 0x5b0(r31)
/* 8045002C  80 A7 00 08 */	lwz r5, 8(r7)
/* 80450030  90 BF 05 B4 */	stw r5, 0x5b4(r31)
/* 80450034  C0 1F 05 E8 */	lfs f0, 0x5e8(r31)
/* 80450038  D0 1F 05 F0 */	stfs f0, 0x5f0(r31)
/* 8045003C  B0 9F 06 0E */	sth r4, 0x60e(r31)
/* 80450040  A8 9F 06 0E */	lha r4, 0x60e(r31)
/* 80450044  B0 9F 06 14 */	sth r4, 0x614(r31)
/* 80450048  D0 3F 05 F4 */	stfs f1, 0x5f4(r31)
/* 8045004C  D0 3F 05 D4 */	stfs f1, 0x5d4(r31)
/* 80450050  B0 7F 06 22 */	sth r3, 0x622(r31)
/* 80450054  B0 1F 06 24 */	sth r0, 0x624(r31)
/* 80450058  4B C0 CC 75 */	bl func_8005CCCC
/* 8045005C  B0 7F 06 3A */	sth r3, 0x63a(r31)
/* 80450060  4B C0 CC 6D */	bl func_8005CCCC
/* 80450064  B0 7F 06 3C */	sth r3, 0x63c(r31)
/* 80450068  38 00 00 00 */	li r0, 0
/* 8045006C  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80450070  B0 1F 06 40 */	sth r0, 0x640(r31)
/* 80450074  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80450078  B0 1F 06 34 */	sth r0, 0x634(r31)
/* 8045007C  B0 1F 06 32 */	sth r0, 0x632(r31)
/* 80450080  B0 1F 06 44 */	sth r0, 0x644(r31)
/* 80450084  D0 1F 05 AC */	stfs f0, 0x5ac(r31)
/* 80450088  D0 1F 05 B4 */	stfs f0, 0x5b4(r31)
/* 8045008C  4B C0 CC 69 */	bl fqrand
/* 80450090  A8 7F 00 2E */	lha r3, 0x2e(r31)
/* 80450094  3C 00 43 30 */	lis r0, 0x4330
/* 80450098  90 01 00 08 */	stw r0, 8(r1)
/* 8045009C  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 804500A0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804500A4  C8 44 42 8C */	lfd f2, lit_570@l(r4)  /* 0x8064428C@l */
/* 804500A8  90 61 00 0C */	stw r3, 0xc(r1)
/* 804500AC  A8 1F 00 2C */	lha r0, 0x2c(r31)
/* 804500B0  C8 01 00 08 */	lfd f0, 8(r1)
/* 804500B4  EC 00 10 28 */	fsubs f0, f0, f2
/* 804500B8  EC 00 00 72 */	fmuls f0, f0, f1
/* 804500BC  FC 00 00 1E */	fctiwz f0, f0
/* 804500C0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804500C4  80 61 00 14 */	lwz r3, 0x14(r1)
/* 804500C8  7C 00 1A 14 */	add r0, r0, r3
/* 804500CC  B0 1F 06 26 */	sth r0, 0x626(r31)
/* 804500D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804500D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804500D8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804500DC  7C 08 03 A6 */	mtlr r0
/* 804500E0  38 21 00 20 */	addi r1, r1, 0x20
/* 804500E4  4E 80 00 20 */	blr 
