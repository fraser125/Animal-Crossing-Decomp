lbl_8046BAC0:
/* 8046BAC0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8046BAC4  7C 08 02 A6 */	mflr r0
/* 8046BAC8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8046BACC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8046BAD0  7C 9F 23 78 */	mr r31, r4
/* 8046BAD4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8046BAD8  7C 7E 1B 78 */	mr r30, r3
/* 8046BADC  38 9E 00 1C */	addi r4, r30, 0x1c
/* 8046BAE0  80 63 00 90 */	lwz r3, 0x90(r3)
/* 8046BAE4  4B F4 DE F1 */	bl mEnv_OperateReservedPointLight_Position
/* 8046BAE8  A8 7E 00 6E */	lha r3, 0x6e(r30)
/* 8046BAEC  38 03 FF FF */	addi r0, r3, -1
/* 8046BAF0  B0 1E 00 6E */	sth r0, 0x6e(r30)
/* 8046BAF4  A8 1E 00 8C */	lha r0, 0x8c(r30)
/* 8046BAF8  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8046BAFC  41 82 00 30 */	beq lbl_8046BB2C
/* 8046BB00  3C 60 80 64 */	lis r3, lit_4231@ha /* 0x806448D4@ha */
/* 8046BB04  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8046BB08  C0 23 48 D4 */	lfs f1, lit_4231@l(r3)  /* 0x806448D4@l */
/* 8046BB0C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8046BB10  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 8046BB14  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8046BB18  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8046BB1C  40 80 00 3C */	bge lbl_8046BB58
/* 8046BB20  38 00 00 00 */	li r0, 0
/* 8046BB24  B0 1E 00 8C */	sth r0, 0x8c(r30)
/* 8046BB28  48 00 04 58 */	b lbl_8046BF80
lbl_8046BB2C:
/* 8046BB2C  3C 80 80 64 */	lis r4, lit_4231@ha /* 0x806448D4@ha */
/* 8046BB30  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8046BB34  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 8046BB38  C0 24 48 D4 */	lfs f1, lit_4231@l(r4)  /* 0x806448D4@l */
/* 8046BB3C  C0 03 46 0C */	lfs f0, lit_511@l(r3)  /* 0x8064460C@l */
/* 8046BB40  EC 22 08 2A */	fadds f1, f2, f1
/* 8046BB44  D0 3E 00 0C */	stfs f1, 0xc(r30)
/* 8046BB48  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 8046BB4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046BB50  40 81 00 08 */	ble lbl_8046BB58
/* 8046BB54  D0 1E 00 0C */	stfs f0, 0xc(r30)
lbl_8046BB58:
/* 8046BB58  7F C3 F3 78 */	mr r3, r30
/* 8046BB5C  4B FE F0 89 */	bl func_8045ABE4
/* 8046BB60  3C 60 80 64 */	lis r3, lit_583@ha /* 0x80644624@ha */
/* 8046BB64  3C 80 80 64 */	lis r4, lit_509@ha /* 0x806445FC@ha */
/* 8046BB68  38 A3 46 24 */	addi r5, r3, lit_583@l /* 0x80644624@l */
/* 8046BB6C  C8 A4 45 FC */	lfd f5, lit_509@l(r4)  /* 0x806445FC@l */
/* 8046BB70  C8 C5 00 00 */	lfd f6, 0(r5)
/* 8046BB74  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 8046BB78  38 A3 46 04 */	addi r5, r3, lit_510@l /* 0x80644604@l */
/* 8046BB7C  FC 60 30 34 */	frsqrte f3, f6
/* 8046BB80  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8046BB84  38 83 46 0C */	addi r4, r3, lit_511@l /* 0x8064460C@l */
/* 8046BB88  C8 85 00 00 */	lfd f4, 0(r5)
/* 8046BB8C  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8046BB90  C0 44 00 00 */	lfs f2, 0(r4)
/* 8046BB94  FC 23 00 F2 */	fmul f1, f3, f3
/* 8046BB98  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8046BB9C  FC 65 00 F2 */	fmul f3, f5, f3
/* 8046BBA0  FC 26 00 72 */	fmul f1, f6, f1
/* 8046BBA4  FC 24 08 28 */	fsub f1, f4, f1
/* 8046BBA8  FC 63 00 72 */	fmul f3, f3, f1
/* 8046BBAC  FC 23 00 F2 */	fmul f1, f3, f3
/* 8046BBB0  FC 65 00 F2 */	fmul f3, f5, f3
/* 8046BBB4  FC 26 00 72 */	fmul f1, f6, f1
/* 8046BBB8  FC 24 08 28 */	fsub f1, f4, f1
/* 8046BBBC  FC 63 00 72 */	fmul f3, f3, f1
/* 8046BBC0  FC 23 00 F2 */	fmul f1, f3, f3
/* 8046BBC4  FC 65 00 F2 */	fmul f3, f5, f3
/* 8046BBC8  FC 26 00 72 */	fmul f1, f6, f1
/* 8046BBCC  FC 24 08 28 */	fsub f1, f4, f1
/* 8046BBD0  FC 23 00 72 */	fmul f1, f3, f1
/* 8046BBD4  FC 26 00 72 */	fmul f1, f6, f1
/* 8046BBD8  FC 20 08 18 */	frsp f1, f1
/* 8046BBDC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8046BBE0  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8046BBE4  EC 22 08 28 */	fsubs f1, f2, f1
/* 8046BBE8  EC 42 08 28 */	fsubs f2, f2, f1
/* 8046BBEC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8046BBF0  40 81 00 54 */	ble lbl_8046BC44
/* 8046BBF4  FC 20 10 34 */	frsqrte f1, f2
/* 8046BBF8  FC 01 00 72 */	fmul f0, f1, f1
/* 8046BBFC  FC 25 00 72 */	fmul f1, f5, f1
/* 8046BC00  FC 02 00 32 */	fmul f0, f2, f0
/* 8046BC04  FC 04 00 28 */	fsub f0, f4, f0
/* 8046BC08  FC 21 00 32 */	fmul f1, f1, f0
/* 8046BC0C  FC 01 00 72 */	fmul f0, f1, f1
/* 8046BC10  FC 25 00 72 */	fmul f1, f5, f1
/* 8046BC14  FC 02 00 32 */	fmul f0, f2, f0
/* 8046BC18  FC 04 00 28 */	fsub f0, f4, f0
/* 8046BC1C  FC 21 00 32 */	fmul f1, f1, f0
/* 8046BC20  FC 01 00 72 */	fmul f0, f1, f1
/* 8046BC24  FC 25 00 72 */	fmul f1, f5, f1
/* 8046BC28  FC 02 00 32 */	fmul f0, f2, f0
/* 8046BC2C  FC 04 00 28 */	fsub f0, f4, f0
/* 8046BC30  FC 01 00 32 */	fmul f0, f1, f0
/* 8046BC34  FC 02 00 32 */	fmul f0, f2, f0
/* 8046BC38  FC 00 00 18 */	frsp f0, f0
/* 8046BC3C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8046BC40  C0 41 00 0C */	lfs f2, 0xc(r1)
lbl_8046BC44:
/* 8046BC44  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8046BC48  A8 9E 00 5E */	lha r4, 0x5e(r30)
/* 8046BC4C  38 A3 46 0C */	addi r5, r3, lit_511@l /* 0x8064460C@l */
/* 8046BC50  38 7E 00 6A */	addi r3, r30, 0x6a
/* 8046BC54  C0 05 00 00 */	lfs f0, 0(r5)
/* 8046BC58  38 A0 00 5B */	li r5, 0x5b
/* 8046BC5C  38 C0 00 2D */	li r6, 0x2d
/* 8046BC60  EC 20 10 28 */	fsubs f1, f0, f2
/* 8046BC64  4B F4 F6 AD */	bl add_calc_short_angle2
/* 8046BC68  A8 1E 00 6E */	lha r0, 0x6e(r30)
/* 8046BC6C  2C 00 00 00 */	cmpwi r0, 0
/* 8046BC70  40 80 00 34 */	bge lbl_8046BCA4
/* 8046BC74  4B BF 10 59 */	bl func_8005CCCC
/* 8046BC78  B0 7E 00 5E */	sth r3, 0x5e(r30)
/* 8046BC7C  4B BF 10 79 */	bl fqrand
/* 8046BC80  3C 60 80 64 */	lis r3, lit_823@ha /* 0x8064469C@ha */
/* 8046BC84  C0 03 46 9C */	lfs f0, lit_823@l(r3)  /* 0x8064469C@l */
/* 8046BC88  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046BC8C  FC 00 00 1E */	fctiwz f0, f0
/* 8046BC90  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8046BC94  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8046BC98  38 03 00 3C */	addi r0, r3, 0x3c
/* 8046BC9C  B0 1E 00 6E */	sth r0, 0x6e(r30)
/* 8046BCA0  48 00 01 98 */	b lbl_8046BE38
lbl_8046BCA4:
/* 8046BCA4  A8 7E 00 8C */	lha r3, 0x8c(r30)
/* 8046BCA8  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 8046BCAC  41 82 00 58 */	beq lbl_8046BD04
/* 8046BCB0  4B BF 10 7D */	bl fqrand2
/* 8046BCB4  3C 80 80 64 */	lis r4, lit_675@ha /* 0x80644648@ha */
/* 8046BCB8  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806445E4@ha */
/* 8046BCBC  C0 44 46 48 */	lfs f2, lit_675@l(r4)  /* 0x80644648@l */
/* 8046BCC0  C0 03 45 E4 */	lfs f0, lit_505@l(r3)  /* 0x806445E4@l */
/* 8046BCC4  EC 22 00 72 */	fmuls f1, f2, f1
/* 8046BCC8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046BCCC  FC 00 00 1E */	fctiwz f0, f0
/* 8046BCD0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8046BCD4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8046BCD8  B0 1E 00 5E */	sth r0, 0x5e(r30)
/* 8046BCDC  4B BF 10 19 */	bl fqrand
/* 8046BCE0  3C 60 80 64 */	lis r3, lit_823@ha /* 0x8064469C@ha */
/* 8046BCE4  C0 03 46 9C */	lfs f0, lit_823@l(r3)  /* 0x8064469C@l */
/* 8046BCE8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046BCEC  FC 00 00 1E */	fctiwz f0, f0
/* 8046BCF0  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8046BCF4  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8046BCF8  38 03 00 3C */	addi r0, r3, 0x3c
/* 8046BCFC  B0 1E 00 6E */	sth r0, 0x6e(r30)
/* 8046BD00  48 00 01 38 */	b lbl_8046BE38
lbl_8046BD04:
/* 8046BD04  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 8046BD08  41 82 00 68 */	beq lbl_8046BD70
/* 8046BD0C  4B BF 0F E9 */	bl fqrand
/* 8046BD10  3C 60 80 64 */	lis r3, lit_823@ha /* 0x8064469C@ha */
/* 8046BD14  C0 03 46 9C */	lfs f0, lit_823@l(r3)  /* 0x8064469C@l */
/* 8046BD18  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046BD1C  FC 00 00 1E */	fctiwz f0, f0
/* 8046BD20  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8046BD24  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8046BD28  38 03 00 3C */	addi r0, r3, 0x3c
/* 8046BD2C  B0 1E 00 6E */	sth r0, 0x6e(r30)
/* 8046BD30  4B BF 0F FD */	bl fqrand2
/* 8046BD34  3C 60 80 64 */	lis r3, lit_675@ha /* 0x80644648@ha */
/* 8046BD38  3C 80 80 64 */	lis r4, lit_4232@ha /* 0x806448D8@ha */
/* 8046BD3C  38 A3 46 48 */	addi r5, r3, lit_675@l /* 0x80644648@l */
/* 8046BD40  C0 44 48 D8 */	lfs f2, lit_4232@l(r4)  /* 0x806448D8@l */
/* 8046BD44  C0 05 00 00 */	lfs f0, 0(r5)
/* 8046BD48  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806445E4@ha */
/* 8046BD4C  EC 20 00 72 */	fmuls f1, f0, f1
/* 8046BD50  C0 03 45 E4 */	lfs f0, lit_505@l(r3)  /* 0x806445E4@l */
/* 8046BD54  EC 22 08 2A */	fadds f1, f2, f1
/* 8046BD58  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046BD5C  FC 00 00 1E */	fctiwz f0, f0
/* 8046BD60  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8046BD64  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8046BD68  B0 1E 00 5E */	sth r0, 0x5e(r30)
/* 8046BD6C  48 00 00 CC */	b lbl_8046BE38
lbl_8046BD70:
/* 8046BD70  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8046BD74  41 82 00 5C */	beq lbl_8046BDD0
/* 8046BD78  4B BF 0F 7D */	bl fqrand
/* 8046BD7C  3C 60 80 64 */	lis r3, lit_823@ha /* 0x8064469C@ha */
/* 8046BD80  C0 03 46 9C */	lfs f0, lit_823@l(r3)  /* 0x8064469C@l */
/* 8046BD84  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046BD88  FC 00 00 1E */	fctiwz f0, f0
/* 8046BD8C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8046BD90  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8046BD94  38 03 00 3C */	addi r0, r3, 0x3c
/* 8046BD98  B0 1E 00 6E */	sth r0, 0x6e(r30)
/* 8046BD9C  4B BF 0F 91 */	bl fqrand2
/* 8046BDA0  3C 80 80 64 */	lis r4, lit_580@ha /* 0x80644618@ha */
/* 8046BDA4  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806445E4@ha */
/* 8046BDA8  C0 44 46 18 */	lfs f2, lit_580@l(r4)  /* 0x80644618@l */
/* 8046BDAC  C0 03 45 E4 */	lfs f0, lit_505@l(r3)  /* 0x806445E4@l */
/* 8046BDB0  EC 22 00 72 */	fmuls f1, f2, f1
/* 8046BDB4  EC 22 08 2A */	fadds f1, f2, f1
/* 8046BDB8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046BDBC  FC 00 00 1E */	fctiwz f0, f0
/* 8046BDC0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8046BDC4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8046BDC8  B0 1E 00 5E */	sth r0, 0x5e(r30)
/* 8046BDCC  48 00 00 6C */	b lbl_8046BE38
lbl_8046BDD0:
/* 8046BDD0  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 8046BDD4  41 82 00 64 */	beq lbl_8046BE38
/* 8046BDD8  4B BF 0F 1D */	bl fqrand
/* 8046BDDC  3C 60 80 64 */	lis r3, lit_823@ha /* 0x8064469C@ha */
/* 8046BDE0  C0 03 46 9C */	lfs f0, lit_823@l(r3)  /* 0x8064469C@l */
/* 8046BDE4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046BDE8  FC 00 00 1E */	fctiwz f0, f0
/* 8046BDEC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8046BDF0  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8046BDF4  38 03 00 3C */	addi r0, r3, 0x3c
/* 8046BDF8  B0 1E 00 6E */	sth r0, 0x6e(r30)
/* 8046BDFC  4B BF 0F 31 */	bl fqrand2
/* 8046BE00  3C 60 80 64 */	lis r3, lit_580@ha /* 0x80644618@ha */
/* 8046BE04  3C 80 80 64 */	lis r4, lit_4233@ha /* 0x806448DC@ha */
/* 8046BE08  38 A3 46 18 */	addi r5, r3, lit_580@l /* 0x80644618@l */
/* 8046BE0C  C0 44 48 DC */	lfs f2, lit_4233@l(r4)  /* 0x806448DC@l */
/* 8046BE10  C0 05 00 00 */	lfs f0, 0(r5)
/* 8046BE14  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806445E4@ha */
/* 8046BE18  EC 20 00 72 */	fmuls f1, f0, f1
/* 8046BE1C  C0 03 45 E4 */	lfs f0, lit_505@l(r3)  /* 0x806445E4@l */
/* 8046BE20  EC 22 08 2A */	fadds f1, f2, f1
/* 8046BE24  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046BE28  FC 00 00 1E */	fctiwz f0, f0
/* 8046BE2C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8046BE30  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8046BE34  B0 1E 00 5E */	sth r0, 0x5e(r30)
lbl_8046BE38:
/* 8046BE38  4B BF 0E BD */	bl fqrand
/* 8046BE3C  3C 60 80 64 */	lis r3, lit_761@ha /* 0x8064465C@ha */
/* 8046BE40  3C 80 80 64 */	lis r4, lit_509@ha /* 0x806445FC@ha */
/* 8046BE44  38 A3 46 5C */	addi r5, r3, lit_761@l /* 0x8064465C@l */
/* 8046BE48  C8 A4 45 FC */	lfd f5, lit_509@l(r4)  /* 0x806445FC@l */
/* 8046BE4C  C8 E5 00 00 */	lfd f7, 0(r5)
/* 8046BE50  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 8046BE54  38 A3 46 04 */	addi r5, r3, lit_510@l /* 0x80644604@l */
/* 8046BE58  A8 1E 00 5C */	lha r0, 0x5c(r30)
/* 8046BE5C  FC 40 38 34 */	frsqrte f2, f7
/* 8046BE60  3C 60 80 64 */	lis r3, lit_461@ha /* 0x806445C4@ha */
/* 8046BE64  38 83 45 C4 */	addi r4, r3, lit_461@l /* 0x806445C4@l */
/* 8046BE68  C8 C5 00 00 */	lfd f6, 0(r5)
/* 8046BE6C  C0 64 00 00 */	lfs f3, 0(r4)
/* 8046BE70  3C 60 80 64 */	lis r3, lit_1067@ha /* 0x80644700@ha */
/* 8046BE74  FC 02 00 B2 */	fmul f0, f2, f2
/* 8046BE78  39 03 47 00 */	addi r8, r3, lit_1067@l /* 0x80644700@l */
/* 8046BE7C  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806445E4@ha */
/* 8046BE80  3C 80 80 64 */	lis r4, lit_465@ha /* 0x806445D4@ha */
/* 8046BE84  38 E3 45 E4 */	addi r7, r3, lit_505@l /* 0x806445E4@l */
/* 8046BE88  FC 45 00 B2 */	fmul f2, f5, f2
/* 8046BE8C  FC 07 00 32 */	fmul f0, f7, f0
/* 8046BE90  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8046BE94  38 C3 46 0C */	addi r6, r3, lit_511@l /* 0x8064460C@l */
/* 8046BE98  C0 88 00 00 */	lfs f4, 0(r8)
/* 8046BE9C  EC 23 00 72 */	fmuls f1, f3, f1
/* 8046BEA0  38 A4 45 D4 */	addi r5, r4, lit_465@l /* 0x806445D4@l */
/* 8046BEA4  FC 06 00 28 */	fsub f0, f6, f0
/* 8046BEA8  3C 60 80 64 */	lis r3, lit_460@ha /* 0x806445C0@ha */
/* 8046BEAC  38 83 45 C0 */	addi r4, r3, lit_460@l /* 0x806445C0@l */
/* 8046BEB0  C1 07 00 00 */	lfs f8, 0(r7)
/* 8046BEB4  C0 65 00 00 */	lfs f3, 0(r5)
/* 8046BEB8  38 7E 00 58 */	addi r3, r30, 0x58
/* 8046BEBC  FD 22 00 32 */	fmul f9, f2, f0
/* 8046BEC0  C0 06 00 00 */	lfs f0, 0(r6)
/* 8046BEC4  EC 44 08 2A */	fadds f2, f4, f1
/* 8046BEC8  C0 84 00 00 */	lfs f4, 0(r4)
/* 8046BECC  FC 29 02 72 */	fmul f1, f9, f9
/* 8046BED0  ED 08 00 B2 */	fmuls f8, f8, f2
/* 8046BED4  FC 45 02 72 */	fmul f2, f5, f9
/* 8046BED8  FC 27 00 72 */	fmul f1, f7, f1
/* 8046BEDC  FD 00 40 1E */	fctiwz f8, f8
/* 8046BEE0  FC 26 08 28 */	fsub f1, f6, f1
/* 8046BEE4  D9 01 00 20 */	stfd f8, 0x20(r1)
/* 8046BEE8  FC 22 00 72 */	fmul f1, f2, f1
/* 8046BEEC  80 81 00 24 */	lwz r4, 0x24(r1)
/* 8046BEF0  7C 84 07 34 */	extsh r4, r4
/* 8046BEF4  7C 00 22 14 */	add r0, r0, r4
/* 8046BEF8  FC 41 00 72 */	fmul f2, f1, f1
/* 8046BEFC  B0 1E 00 5C */	sth r0, 0x5c(r30)
/* 8046BF00  FC A5 00 72 */	fmul f5, f5, f1
/* 8046BF04  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 8046BF08  FC 47 00 B2 */	fmul f2, f7, f2
/* 8046BF0C  FC 46 10 28 */	fsub f2, f6, f2
/* 8046BF10  FC 45 00 B2 */	fmul f2, f5, f2
/* 8046BF14  FC 47 00 B2 */	fmul f2, f7, f2
/* 8046BF18  FC 40 10 18 */	frsp f2, f2
/* 8046BF1C  D0 41 00 08 */	stfs f2, 8(r1)
/* 8046BF20  C0 41 00 08 */	lfs f2, 8(r1)
/* 8046BF24  EC 40 10 28 */	fsubs f2, f0, f2
/* 8046BF28  4B F4 F2 89 */	bl add_calc
/* 8046BF2C  A8 7E 00 5C */	lha r3, 0x5c(r30)
/* 8046BF30  4B F4 EB C1 */	bl sin_s
/* 8046BF34  3C 60 80 64 */	lis r3, lit_586@ha /* 0x80644634@ha */
/* 8046BF38  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 8046BF3C  38 83 46 34 */	addi r4, r3, lit_586@l /* 0x80644634@l */
/* 8046BF40  7F C3 F3 78 */	mr r3, r30
/* 8046BF44  C0 44 00 00 */	lfs f2, 0(r4)
/* 8046BF48  EC 22 00 72 */	fmuls f1, f2, f1
/* 8046BF4C  EC 00 08 2A */	fadds f0, f0, f1
/* 8046BF50  D0 1E 00 20 */	stfs f0, 0x20(r30)
/* 8046BF54  4B FF 02 01 */	bl minsect_tree_ObjCheck
/* 8046BF58  3C 60 80 64 */	lis r3, lit_762@ha /* 0x80644664@ha */
/* 8046BF5C  3C 80 80 64 */	lis r4, lit_502@ha /* 0x806445D8@ha */
/* 8046BF60  38 A3 46 64 */	addi r5, r3, lit_762@l /* 0x80644664@l */
/* 8046BF64  C0 44 45 D8 */	lfs f2, lit_502@l(r4)  /* 0x806445D8@l */
/* 8046BF68  C0 25 00 00 */	lfs f1, 0(r5)
/* 8046BF6C  7F C3 F3 78 */	mr r3, r30
/* 8046BF70  4B FE FC 29 */	bl minsect_fly_BGCheck
/* 8046BF74  7F C3 F3 78 */	mr r3, r30
/* 8046BF78  7F E4 FB 78 */	mr r4, r31
/* 8046BF7C  4B FF F7 E1 */	bl genji_light_anime
lbl_8046BF80:
/* 8046BF80  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8046BF84  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8046BF88  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8046BF8C  7C 08 03 A6 */	mtlr r0
/* 8046BF90  38 21 00 30 */	addi r1, r1, 0x30
/* 8046BF94  4E 80 00 20 */	blr 
