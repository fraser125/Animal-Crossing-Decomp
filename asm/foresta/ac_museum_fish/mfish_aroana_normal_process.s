lbl_8043A92C:
/* 8043A92C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8043A930  7C 08 02 A6 */	mflr r0
/* 8043A934  90 01 00 54 */	stw r0, 0x54(r1)
/* 8043A938  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8043A93C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8043A940  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8043A944  7C 7F 1B 78 */	mr r31, r3
/* 8043A948  A8 63 06 32 */	lha r3, 0x632(r3)
/* 8043A94C  2C 03 0E 38 */	cmpwi r3, 0xe38
/* 8043A950  40 81 01 0C */	ble lbl_8043AA5C
/* 8043A954  38 63 F1 C8 */	addi r3, r3, -3640
/* 8043A958  38 00 01 6C */	li r0, 0x16c
/* 8043A95C  7C 83 03 D6 */	divw r4, r3, r0
/* 8043A960  3C A0 80 64 */	lis r5, lit_1957@ha /* 0x8064436C@ha */
/* 8043A964  3C 00 43 30 */	lis r0, 0x4330
/* 8043A968  C0 65 43 6C */	lfs f3, lit_1957@l(r5)  /* 0x8064436C@l */
/* 8043A96C  90 01 00 28 */	stw r0, 0x28(r1)
/* 8043A970  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8043A974  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8043A978  C8 23 42 8C */	lfd f1, lit_570@l(r3)  /* 0x8064428C@l */
/* 8043A97C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8043A980  3C 80 80 64 */	lis r4, lit_1556@ha /* 0x80644340@ha */
/* 8043A984  38 C4 43 40 */	addi r6, r4, lit_1556@l /* 0x80644340@l */
/* 8043A988  3C 60 80 64 */	lis r3, lit_1558@ha /* 0x80644348@ha */
/* 8043A98C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8043A990  3C 80 80 64 */	lis r4, lit_1068@ha /* 0x80644308@ha */
/* 8043A994  38 A4 43 08 */	addi r5, r4, lit_1068@l /* 0x80644308@l */
/* 8043A998  EC 00 08 28 */	fsubs f0, f0, f1
/* 8043A99C  38 83 43 48 */	addi r4, r3, lit_1558@l /* 0x80644348@l */
/* 8043A9A0  C0 26 00 00 */	lfs f1, 0(r6)
/* 8043A9A4  38 7F 05 EC */	addi r3, r31, 0x5ec
/* 8043A9A8  C0 45 00 00 */	lfs f2, 0(r5)
/* 8043A9AC  EC 03 00 32 */	fmuls f0, f3, f0
/* 8043A9B0  C0 64 00 00 */	lfs f3, 0(r4)
/* 8043A9B4  EC 21 00 2A */	fadds f1, f1, f0
/* 8043A9B8  4B F8 08 DD */	bl add_calc2
/* 8043A9BC  3C 60 80 64 */	lis r3, lit_665@ha /* 0x806442A4@ha */
/* 8043A9C0  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8043A9C4  38 A3 42 A4 */	addi r5, r3, lit_665@l /* 0x806442A4@l */
/* 8043A9C8  C0 1F 05 EC */	lfs f0, 0x5ec(r31)
/* 8043A9CC  C9 25 00 00 */	lfd f9, 0(r5)
/* 8043A9D0  38 C4 42 4C */	addi r6, r4, lit_469@l /* 0x8064424C@l */
/* 8043A9D4  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8043A9D8  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8043A9DC  FC 60 48 34 */	frsqrte f3, f9
/* 8043A9E0  38 A3 42 54 */	addi r5, r3, lit_470@l /* 0x80644254@l */
/* 8043A9E4  C9 06 00 00 */	lfd f8, 0(r6)
/* 8043A9E8  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 8043A9EC  C0 43 42 5C */	lfs f2, lit_471@l(r3)  /* 0x8064425C@l */
/* 8043A9F0  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 8043A9F4  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043A9F8  C8 C5 00 00 */	lfd f6, 0(r5)
/* 8043A9FC  C0 84 42 60 */	lfs f4, lit_472@l(r4)  /* 0x80644260@l */
/* 8043AA00  FC E8 00 F2 */	fmul f7, f8, f3
/* 8043AA04  FC A9 00 72 */	fmul f5, f9, f1
/* 8043AA08  C0 3F 05 F0 */	lfs f1, 0x5f0(r31)
/* 8043AA0C  EC 62 00 32 */	fmuls f3, f2, f0
/* 8043AA10  FC 06 28 28 */	fsub f0, f6, f5
/* 8043AA14  FC 47 00 32 */	fmul f2, f7, f0
/* 8043AA18  FC 02 00 B2 */	fmul f0, f2, f2
/* 8043AA1C  FC 48 00 B2 */	fmul f2, f8, f2
/* 8043AA20  FC 09 00 32 */	fmul f0, f9, f0
/* 8043AA24  FC 06 00 28 */	fsub f0, f6, f0
/* 8043AA28  FC 42 00 32 */	fmul f2, f2, f0
/* 8043AA2C  FC 02 00 B2 */	fmul f0, f2, f2
/* 8043AA30  FC 48 00 B2 */	fmul f2, f8, f2
/* 8043AA34  FC 09 00 32 */	fmul f0, f9, f0
/* 8043AA38  FC 06 00 28 */	fsub f0, f6, f0
/* 8043AA3C  FC 02 00 32 */	fmul f0, f2, f0
/* 8043AA40  FC 09 00 32 */	fmul f0, f9, f0
/* 8043AA44  FC 00 00 18 */	frsp f0, f0
/* 8043AA48  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8043AA4C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8043AA50  EC 44 00 28 */	fsubs f2, f4, f0
/* 8043AA54  4B F8 08 41 */	bl add_calc2
/* 8043AA58  48 00 00 D4 */	b lbl_8043AB2C
lbl_8043AA5C:
/* 8043AA5C  A8 7F 06 28 */	lha r3, 0x628(r31)
/* 8043AA60  A8 9F 06 26 */	lha r4, 0x626(r31)
/* 8043AA64  38 03 FF F6 */	addi r0, r3, -10
/* 8043AA68  7C 04 00 00 */	cmpw r4, r0
/* 8043AA6C  40 81 00 C0 */	ble lbl_8043AB2C
/* 8043AA70  3C C0 80 64 */	lis r6, lit_1068@ha /* 0x80644308@ha */
/* 8043AA74  3C A0 80 64 */	lis r5, lit_839@ha /* 0x806442D4@ha */
/* 8043AA78  3C 80 80 64 */	lis r4, lit_471@ha /* 0x8064425C@ha */
/* 8043AA7C  C0 26 43 08 */	lfs f1, lit_1068@l(r6)  /* 0x80644308@l */
/* 8043AA80  C0 45 42 D4 */	lfs f2, lit_839@l(r5)  /* 0x806442D4@l */
/* 8043AA84  38 7F 05 EC */	addi r3, r31, 0x5ec
/* 8043AA88  C0 64 42 5C */	lfs f3, lit_471@l(r4)  /* 0x8064425C@l */
/* 8043AA8C  4B F8 08 09 */	bl add_calc2
/* 8043AA90  3C 60 80 64 */	lis r3, lit_1958@ha /* 0x80644374@ha */
/* 8043AA94  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8043AA98  38 A3 43 74 */	addi r5, r3, lit_1958@l /* 0x80644374@l */
/* 8043AA9C  C0 1F 05 EC */	lfs f0, 0x5ec(r31)
/* 8043AAA0  C9 25 00 00 */	lfd f9, 0(r5)
/* 8043AAA4  38 C4 42 4C */	addi r6, r4, lit_469@l /* 0x8064424C@l */
/* 8043AAA8  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8043AAAC  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8043AAB0  FC 60 48 34 */	frsqrte f3, f9
/* 8043AAB4  38 A3 42 54 */	addi r5, r3, lit_470@l /* 0x80644254@l */
/* 8043AAB8  C9 06 00 00 */	lfd f8, 0(r6)
/* 8043AABC  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 8043AAC0  C0 43 42 5C */	lfs f2, lit_471@l(r3)  /* 0x8064425C@l */
/* 8043AAC4  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 8043AAC8  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043AACC  C8 C5 00 00 */	lfd f6, 0(r5)
/* 8043AAD0  C0 84 42 60 */	lfs f4, lit_472@l(r4)  /* 0x80644260@l */
/* 8043AAD4  FC E8 00 F2 */	fmul f7, f8, f3
/* 8043AAD8  FC A9 00 72 */	fmul f5, f9, f1
/* 8043AADC  C0 3F 05 F0 */	lfs f1, 0x5f0(r31)
/* 8043AAE0  EC 62 00 32 */	fmuls f3, f2, f0
/* 8043AAE4  FC 06 28 28 */	fsub f0, f6, f5
/* 8043AAE8  FC 47 00 32 */	fmul f2, f7, f0
/* 8043AAEC  FC 02 00 B2 */	fmul f0, f2, f2
/* 8043AAF0  FC 48 00 B2 */	fmul f2, f8, f2
/* 8043AAF4  FC 09 00 32 */	fmul f0, f9, f0
/* 8043AAF8  FC 06 00 28 */	fsub f0, f6, f0
/* 8043AAFC  FC 42 00 32 */	fmul f2, f2, f0
/* 8043AB00  FC 02 00 B2 */	fmul f0, f2, f2
/* 8043AB04  FC 48 00 B2 */	fmul f2, f8, f2
/* 8043AB08  FC 09 00 32 */	fmul f0, f9, f0
/* 8043AB0C  FC 06 00 28 */	fsub f0, f6, f0
/* 8043AB10  FC 02 00 32 */	fmul f0, f2, f0
/* 8043AB14  FC 09 00 32 */	fmul f0, f9, f0
/* 8043AB18  FC 00 00 18 */	frsp f0, f0
/* 8043AB1C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8043AB20  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8043AB24  EC 44 00 28 */	fsubs f2, f4, f0
/* 8043AB28  4B F8 07 6D */	bl add_calc2
lbl_8043AB2C:
/* 8043AB2C  3C 60 80 64 */	lis r3, lit_1958@ha /* 0x80644374@ha */
/* 8043AB30  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8043AB34  38 A3 43 74 */	addi r5, r3, lit_1958@l /* 0x80644374@l */
/* 8043AB38  C8 A4 42 4C */	lfd f5, lit_469@l(r4)  /* 0x8064424C@l */
/* 8043AB3C  C8 C5 00 00 */	lfd f6, 0(r5)
/* 8043AB40  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8043AB44  38 A3 42 54 */	addi r5, r3, lit_470@l /* 0x80644254@l */
/* 8043AB48  FC 60 30 34 */	frsqrte f3, f6
/* 8043AB4C  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043AB50  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 8043AB54  C8 85 00 00 */	lfd f4, 0(r5)
/* 8043AB58  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8043AB5C  C0 44 00 00 */	lfs f2, 0(r4)
/* 8043AB60  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043AB64  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8043AB68  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043AB6C  FC 26 00 72 */	fmul f1, f6, f1
/* 8043AB70  FC 24 08 28 */	fsub f1, f4, f1
/* 8043AB74  FC 63 00 72 */	fmul f3, f3, f1
/* 8043AB78  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043AB7C  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043AB80  FC 26 00 72 */	fmul f1, f6, f1
/* 8043AB84  FC 24 08 28 */	fsub f1, f4, f1
/* 8043AB88  FC 63 00 72 */	fmul f3, f3, f1
/* 8043AB8C  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043AB90  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043AB94  FC 26 00 72 */	fmul f1, f6, f1
/* 8043AB98  FC 24 08 28 */	fsub f1, f4, f1
/* 8043AB9C  FC 23 00 72 */	fmul f1, f3, f1
/* 8043ABA0  FC 26 00 72 */	fmul f1, f6, f1
/* 8043ABA4  FC 20 08 18 */	frsp f1, f1
/* 8043ABA8  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8043ABAC  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8043ABB0  EC 22 08 28 */	fsubs f1, f2, f1
/* 8043ABB4  EC 42 08 28 */	fsubs f2, f2, f1
/* 8043ABB8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8043ABBC  40 81 00 54 */	ble lbl_8043AC10
/* 8043ABC0  FC 20 10 34 */	frsqrte f1, f2
/* 8043ABC4  FC 01 00 72 */	fmul f0, f1, f1
/* 8043ABC8  FC 25 00 72 */	fmul f1, f5, f1
/* 8043ABCC  FC 02 00 32 */	fmul f0, f2, f0
/* 8043ABD0  FC 04 00 28 */	fsub f0, f4, f0
/* 8043ABD4  FC 21 00 32 */	fmul f1, f1, f0
/* 8043ABD8  FC 01 00 72 */	fmul f0, f1, f1
/* 8043ABDC  FC 25 00 72 */	fmul f1, f5, f1
/* 8043ABE0  FC 02 00 32 */	fmul f0, f2, f0
/* 8043ABE4  FC 04 00 28 */	fsub f0, f4, f0
/* 8043ABE8  FC 21 00 32 */	fmul f1, f1, f0
/* 8043ABEC  FC 01 00 72 */	fmul f0, f1, f1
/* 8043ABF0  FC 25 00 72 */	fmul f1, f5, f1
/* 8043ABF4  FC 02 00 32 */	fmul f0, f2, f0
/* 8043ABF8  FC 04 00 28 */	fsub f0, f4, f0
/* 8043ABFC  FC 01 00 32 */	fmul f0, f1, f0
/* 8043AC00  FC 02 00 32 */	fmul f0, f2, f0
/* 8043AC04  FC 00 00 18 */	frsp f0, f0
/* 8043AC08  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8043AC0C  C0 41 00 18 */	lfs f2, 0x18(r1)
lbl_8043AC10:
/* 8043AC10  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8043AC14  38 7F 06 32 */	addi r3, r31, 0x632
/* 8043AC18  38 A4 42 60 */	addi r5, r4, lit_472@l /* 0x80644260@l */
/* 8043AC1C  38 80 00 00 */	li r4, 0
/* 8043AC20  C0 05 00 00 */	lfs f0, 0(r5)
/* 8043AC24  38 A0 00 44 */	li r5, 0x44
/* 8043AC28  38 C0 00 16 */	li r6, 0x16
/* 8043AC2C  EC 20 10 28 */	fsubs f1, f0, f2
/* 8043AC30  4B F8 06 E1 */	bl add_calc_short_angle2
/* 8043AC34  3C 60 80 64 */	lis r3, lit_665@ha /* 0x806442A4@ha */
/* 8043AC38  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8043AC3C  38 A3 42 A4 */	addi r5, r3, lit_665@l /* 0x806442A4@l */
/* 8043AC40  C8 A4 42 4C */	lfd f5, lit_469@l(r4)  /* 0x8064424C@l */
/* 8043AC44  C8 C5 00 00 */	lfd f6, 0(r5)
/* 8043AC48  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8043AC4C  38 A3 42 54 */	addi r5, r3, lit_470@l /* 0x80644254@l */
/* 8043AC50  C0 FF 05 E8 */	lfs f7, 0x5e8(r31)
/* 8043AC54  FC 20 30 34 */	frsqrte f1, f6
/* 8043AC58  3C 60 80 64 */	lis r3, lit_1145@ha /* 0x80644328@ha */
/* 8043AC5C  38 C3 43 28 */	addi r6, r3, lit_1145@l /* 0x80644328@l */
/* 8043AC60  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 8043AC64  C1 06 00 00 */	lfs f8, 0(r6)
/* 8043AC68  3C 60 80 64 */	lis r3, lit_1559@ha /* 0x8064434C@ha */
/* 8043AC6C  FC 01 00 72 */	fmul f0, f1, f1
/* 8043AC70  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 8043AC74  38 E3 43 4C */	addi r7, r3, lit_1559@l /* 0x8064434C@l */
/* 8043AC78  3C 60 80 64 */	lis r3, lit_588@ha /* 0x80644298@ha */
/* 8043AC7C  39 03 42 98 */	addi r8, r3, lit_588@l /* 0x80644298@l */
/* 8043AC80  EC E8 01 F2 */	fmuls f7, f8, f7
/* 8043AC84  EC 43 10 2A */	fadds f2, f3, f2
/* 8043AC88  C8 85 00 00 */	lfd f4, 0(r5)
/* 8043AC8C  FC 06 00 32 */	fmul f0, f6, f0
/* 8043AC90  C1 07 00 00 */	lfs f8, 0(r7)
/* 8043AC94  C1 28 00 00 */	lfs f9, 0(r8)
/* 8043AC98  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8043AC9C  EC E7 10 24 */	fdivs f7, f7, f2
/* 8043ACA0  C0 44 42 60 */	lfs f2, lit_472@l(r4)  /* 0x80644260@l */
/* 8043ACA4  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8043ACA8  A8 9F 06 36 */	lha r4, 0x636(r31)
/* 8043ACAC  EC E8 38 2A */	fadds f7, f8, f7
/* 8043ACB0  FC 25 00 72 */	fmul f1, f5, f1
/* 8043ACB4  FC 04 00 28 */	fsub f0, f4, f0
/* 8043ACB8  EC E9 01 F2 */	fmuls f7, f9, f7
/* 8043ACBC  FC 61 00 32 */	fmul f3, f1, f0
/* 8043ACC0  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8043ACC4  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043ACC8  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043ACCC  FC 26 00 72 */	fmul f1, f6, f1
/* 8043ACD0  FC 24 08 28 */	fsub f1, f4, f1
/* 8043ACD4  FD 03 00 72 */	fmul f8, f3, f1
/* 8043ACD8  FC 60 38 1E */	fctiwz f3, f7
/* 8043ACDC  FC 28 02 32 */	fmul f1, f8, f8
/* 8043ACE0  D8 61 00 28 */	stfd f3, 0x28(r1)
/* 8043ACE4  FC 65 02 32 */	fmul f3, f5, f8
/* 8043ACE8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8043ACEC  FC 26 00 72 */	fmul f1, f6, f1
/* 8043ACF0  7C 00 07 34 */	extsh r0, r0
/* 8043ACF4  7C 04 02 14 */	add r0, r4, r0
/* 8043ACF8  B0 1F 06 36 */	sth r0, 0x636(r31)
/* 8043ACFC  FC 24 08 28 */	fsub f1, f4, f1
/* 8043AD00  FC 23 00 72 */	fmul f1, f3, f1
/* 8043AD04  FC 26 00 72 */	fmul f1, f6, f1
/* 8043AD08  FC 20 08 18 */	frsp f1, f1
/* 8043AD0C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8043AD10  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8043AD14  EC 22 08 28 */	fsubs f1, f2, f1
/* 8043AD18  EF E2 08 28 */	fsubs f31, f2, f1
/* 8043AD1C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8043AD20  40 81 00 54 */	ble lbl_8043AD74
/* 8043AD24  FC 20 F8 34 */	frsqrte f1, f31
/* 8043AD28  FC 01 00 72 */	fmul f0, f1, f1
/* 8043AD2C  FC 25 00 72 */	fmul f1, f5, f1
/* 8043AD30  FC 1F 00 32 */	fmul f0, f31, f0
/* 8043AD34  FC 04 00 28 */	fsub f0, f4, f0
/* 8043AD38  FC 21 00 32 */	fmul f1, f1, f0
/* 8043AD3C  FC 01 00 72 */	fmul f0, f1, f1
/* 8043AD40  FC 25 00 72 */	fmul f1, f5, f1
/* 8043AD44  FC 1F 00 32 */	fmul f0, f31, f0
/* 8043AD48  FC 04 00 28 */	fsub f0, f4, f0
/* 8043AD4C  FC 21 00 32 */	fmul f1, f1, f0
/* 8043AD50  FC 01 00 72 */	fmul f0, f1, f1
/* 8043AD54  FC 25 00 72 */	fmul f1, f5, f1
/* 8043AD58  FC 1F 00 32 */	fmul f0, f31, f0
/* 8043AD5C  FC 04 00 28 */	fsub f0, f4, f0
/* 8043AD60  FC 01 00 32 */	fmul f0, f1, f0
/* 8043AD64  FC 1F 00 32 */	fmul f0, f31, f0
/* 8043AD68  FC 00 00 18 */	frsp f0, f0
/* 8043AD6C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8043AD70  C3 E1 00 10 */	lfs f31, 0x10(r1)
lbl_8043AD74:
/* 8043AD74  A8 7F 06 36 */	lha r3, 0x636(r31)
/* 8043AD78  4B F7 FD 79 */	bl sin_s
/* 8043AD7C  A8 BF 06 32 */	lha r5, 0x632(r31)
/* 8043AD80  3C 00 43 30 */	lis r0, 0x4330
/* 8043AD84  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 8043AD88  90 01 00 28 */	stw r0, 0x28(r1)
/* 8043AD8C  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8043AD90  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043AD94  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 8043AD98  38 C4 42 8C */	addi r6, r4, lit_570@l /* 0x8064428C@l */
/* 8043AD9C  C8 46 00 00 */	lfd f2, 0(r6)
/* 8043ADA0  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 8043ADA4  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8043ADA8  38 7F 06 0E */	addi r3, r31, 0x60e
/* 8043ADAC  A8 1F 06 14 */	lha r0, 0x614(r31)
/* 8043ADB0  38 A0 02 AA */	li r5, 0x2aa
/* 8043ADB4  EC 40 10 28 */	fsubs f2, f0, f2
/* 8043ADB8  C0 04 00 00 */	lfs f0, 0(r4)
/* 8043ADBC  38 C0 00 2D */	li r6, 0x2d
/* 8043ADC0  EC 42 00 72 */	fmuls f2, f2, f1
/* 8043ADC4  EC 20 F8 28 */	fsubs f1, f0, f31
/* 8043ADC8  FC 00 10 1E */	fctiwz f0, f2
/* 8043ADCC  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8043ADD0  80 81 00 34 */	lwz r4, 0x34(r1)
/* 8043ADD4  7C 00 22 14 */	add r0, r0, r4
/* 8043ADD8  7C 04 07 34 */	extsh r4, r0
/* 8043ADDC  4B F8 05 35 */	bl add_calc_short_angle2
/* 8043ADE0  3C 80 80 64 */	lis r4, lit_920@ha /* 0x806442DC@ha */
/* 8043ADE4  3C A0 80 64 */	lis r5, lit_469@ha /* 0x8064424C@ha */
/* 8043ADE8  38 C4 42 DC */	addi r6, r4, lit_920@l /* 0x806442DC@l */
/* 8043ADEC  C8 A5 42 4C */	lfd f5, lit_469@l(r5)  /* 0x8064424C@l */
/* 8043ADF0  C8 C6 00 00 */	lfd f6, 0(r6)
/* 8043ADF4  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 8043ADF8  38 C4 42 54 */	addi r6, r4, lit_470@l /* 0x80644254@l */
/* 8043ADFC  B0 7F 06 22 */	sth r3, 0x622(r31)
/* 8043AE00  FC 60 30 34 */	frsqrte f3, f6
/* 8043AE04  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8043AE08  38 A4 42 60 */	addi r5, r4, lit_472@l /* 0x80644260@l */
/* 8043AE0C  C8 86 00 00 */	lfd f4, 0(r6)
/* 8043AE10  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 8043AE14  C0 45 00 00 */	lfs f2, 0(r5)
/* 8043AE18  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043AE1C  C0 04 42 48 */	lfs f0, lit_468@l(r4)  /* 0x80644248@l */
/* 8043AE20  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043AE24  FC 26 00 72 */	fmul f1, f6, f1
/* 8043AE28  FC 24 08 28 */	fsub f1, f4, f1
/* 8043AE2C  FC 63 00 72 */	fmul f3, f3, f1
/* 8043AE30  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043AE34  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043AE38  FC 26 00 72 */	fmul f1, f6, f1
/* 8043AE3C  FC 24 08 28 */	fsub f1, f4, f1
/* 8043AE40  FC 63 00 72 */	fmul f3, f3, f1
/* 8043AE44  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043AE48  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043AE4C  FC 26 00 72 */	fmul f1, f6, f1
/* 8043AE50  FC 24 08 28 */	fsub f1, f4, f1
/* 8043AE54  FC 23 00 72 */	fmul f1, f3, f1
/* 8043AE58  FC 26 00 72 */	fmul f1, f6, f1
/* 8043AE5C  FC 20 08 18 */	frsp f1, f1
/* 8043AE60  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8043AE64  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8043AE68  EC 22 08 28 */	fsubs f1, f2, f1
/* 8043AE6C  EC 42 08 28 */	fsubs f2, f2, f1
/* 8043AE70  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8043AE74  40 81 00 54 */	ble lbl_8043AEC8
/* 8043AE78  FC 20 10 34 */	frsqrte f1, f2
/* 8043AE7C  FC 01 00 72 */	fmul f0, f1, f1
/* 8043AE80  FC 25 00 72 */	fmul f1, f5, f1
/* 8043AE84  FC 02 00 32 */	fmul f0, f2, f0
/* 8043AE88  FC 04 00 28 */	fsub f0, f4, f0
/* 8043AE8C  FC 21 00 32 */	fmul f1, f1, f0
/* 8043AE90  FC 01 00 72 */	fmul f0, f1, f1
/* 8043AE94  FC 25 00 72 */	fmul f1, f5, f1
/* 8043AE98  FC 02 00 32 */	fmul f0, f2, f0
/* 8043AE9C  FC 04 00 28 */	fsub f0, f4, f0
/* 8043AEA0  FC 21 00 32 */	fmul f1, f1, f0
/* 8043AEA4  FC 01 00 72 */	fmul f0, f1, f1
/* 8043AEA8  FC 25 00 72 */	fmul f1, f5, f1
/* 8043AEAC  FC 02 00 32 */	fmul f0, f2, f0
/* 8043AEB0  FC 04 00 28 */	fsub f0, f4, f0
/* 8043AEB4  FC 01 00 32 */	fmul f0, f1, f0
/* 8043AEB8  FC 02 00 32 */	fmul f0, f2, f0
/* 8043AEBC  FC 00 00 18 */	frsp f0, f0
/* 8043AEC0  D0 01 00 08 */	stfs f0, 8(r1)
/* 8043AEC4  C0 41 00 08 */	lfs f2, 8(r1)
lbl_8043AEC8:
/* 8043AEC8  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043AECC  A8 9F 06 22 */	lha r4, 0x622(r31)
/* 8043AED0  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 8043AED4  38 7F 06 1C */	addi r3, r31, 0x61c
/* 8043AED8  C0 05 00 00 */	lfs f0, 0(r5)
/* 8043AEDC  38 A0 02 AA */	li r5, 0x2aa
/* 8043AEE0  38 C0 00 2D */	li r6, 0x2d
/* 8043AEE4  EC 20 10 28 */	fsubs f1, f0, f2
/* 8043AEE8  4B F8 04 29 */	bl add_calc_short_angle2
/* 8043AEEC  3C 60 80 64 */	lis r3, lit_793@ha /* 0x806442C4@ha */
/* 8043AEF0  C0 3F 05 E8 */	lfs f1, 0x5e8(r31)
/* 8043AEF4  C0 03 42 C4 */	lfs f0, lit_793@l(r3)  /* 0x806442C4@l */
/* 8043AEF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043AEFC  40 80 00 3C */	bge lbl_8043AF38
/* 8043AF00  A8 1F 06 32 */	lha r0, 0x632(r31)
/* 8043AF04  2C 00 00 B6 */	cmpwi r0, 0xb6
/* 8043AF08  40 80 00 30 */	bge lbl_8043AF38
/* 8043AF0C  4B C2 1D E9 */	bl fqrand
/* 8043AF10  3C 60 80 64 */	lis r3, lit_587@ha /* 0x80644294@ha */
/* 8043AF14  C0 03 42 94 */	lfs f0, lit_587@l(r3)  /* 0x80644294@l */
/* 8043AF18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043AF1C  40 80 00 10 */	bge lbl_8043AF2C
/* 8043AF20  7F E3 FB 78 */	mr r3, r31
/* 8043AF24  48 00 07 69 */	bl mfish_aroana_long_move_process_init
/* 8043AF28  48 00 00 5C */	b lbl_8043AF84
lbl_8043AF2C:
/* 8043AF2C  7F E3 FB 78 */	mr r3, r31
/* 8043AF30  4B FF F4 F5 */	bl mfish_aroana_dummy_process_init
/* 8043AF34  48 00 00 50 */	b lbl_8043AF84
lbl_8043AF38:
/* 8043AF38  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043AF3C  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 8043AF40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043AF44  40 81 00 40 */	ble lbl_8043AF84
/* 8043AF48  A8 1F 06 2E */	lha r0, 0x62e(r31)
/* 8043AF4C  54 00 06 FD */	rlwinm. r0, r0, 0, 0x1b, 0x1e
/* 8043AF50  41 82 00 34 */	beq lbl_8043AF84
/* 8043AF54  A8 7F 06 2C */	lha r3, 0x62c(r31)
/* 8043AF58  A8 1F 06 0E */	lha r0, 0x60e(r31)
/* 8043AF5C  7C 03 00 50 */	subf r0, r3, r0
/* 8043AF60  7C 00 07 35 */	extsh. r0, r0
/* 8043AF64  40 81 00 10 */	ble lbl_8043AF74
/* 8043AF68  38 03 50 00 */	addi r0, r3, 0x5000
/* 8043AF6C  B0 1F 06 14 */	sth r0, 0x614(r31)
/* 8043AF70  48 00 00 0C */	b lbl_8043AF7C
lbl_8043AF74:
/* 8043AF74  38 03 B0 00 */	addi r0, r3, -20480
/* 8043AF78  B0 1F 06 14 */	sth r0, 0x614(r31)
lbl_8043AF7C:
/* 8043AF7C  38 00 00 00 */	li r0, 0
/* 8043AF80  B0 1F 06 32 */	sth r0, 0x632(r31)
lbl_8043AF84:
/* 8043AF84  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8043AF88  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8043AF8C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8043AF90  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8043AF94  7C 08 03 A6 */	mtlr r0
/* 8043AF98  38 21 00 50 */	addi r1, r1, 0x50
/* 8043AF9C  4E 80 00 20 */	blr 
