lbl_8044D6B8:
/* 8044D6B8  2C 05 00 01 */	cmpwi r5, 1
/* 8044D6BC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8044D6C0  40 82 00 88 */	bne lbl_8044D748
/* 8044D6C4  A8 89 00 00 */	lha r4, 0(r9)
/* 8044D6C8  38 00 E0 00 */	li r0, -8192
/* 8044D6CC  A8 68 06 1C */	lha r3, 0x61c(r8)
/* 8044D6D0  7C 64 1A 14 */	add r3, r4, r3
/* 8044D6D4  2C 03 E0 00 */	cmpwi r3, -8192
/* 8044D6D8  40 81 00 08 */	ble lbl_8044D6E0
/* 8044D6DC  7C 60 1B 78 */	mr r0, r3
lbl_8044D6E0:
/* 8044D6E0  2C 00 1C 71 */	cmpwi r0, 0x1c71
/* 8044D6E4  40 80 00 18 */	bge lbl_8044D6FC
/* 8044D6E8  2C 03 E0 00 */	cmpwi r3, -8192
/* 8044D6EC  38 00 E0 00 */	li r0, -8192
/* 8044D6F0  40 81 00 10 */	ble lbl_8044D700
/* 8044D6F4  7C 60 1B 78 */	mr r0, r3
/* 8044D6F8  48 00 00 08 */	b lbl_8044D700
lbl_8044D6FC:
/* 8044D6FC  38 00 1C 71 */	li r0, 0x1c71
lbl_8044D700:
/* 8044D700  B0 09 00 00 */	sth r0, 0(r9)
/* 8044D704  38 00 E3 8F */	li r0, -7281
/* 8044D708  A8 89 00 02 */	lha r4, 2(r9)
/* 8044D70C  A8 68 06 1C */	lha r3, 0x61c(r8)
/* 8044D710  7C 64 1A 14 */	add r3, r4, r3
/* 8044D714  2C 03 E3 8F */	cmpwi r3, -7281
/* 8044D718  40 81 00 08 */	ble lbl_8044D720
/* 8044D71C  7C 60 1B 78 */	mr r0, r3
lbl_8044D720:
/* 8044D720  2C 00 1C 71 */	cmpwi r0, 0x1c71
/* 8044D724  40 80 00 18 */	bge lbl_8044D73C
/* 8044D728  2C 03 E3 8F */	cmpwi r3, -7281
/* 8044D72C  38 00 E3 8F */	li r0, -7281
/* 8044D730  40 81 00 10 */	ble lbl_8044D740
/* 8044D734  7C 60 1B 78 */	mr r0, r3
/* 8044D738  48 00 00 08 */	b lbl_8044D740
lbl_8044D73C:
/* 8044D73C  38 00 1C 71 */	li r0, 0x1c71
lbl_8044D740:
/* 8044D740  B0 09 00 02 */	sth r0, 2(r9)
/* 8044D744  48 00 01 38 */	b lbl_8044D87C
lbl_8044D748:
/* 8044D748  2C 05 00 02 */	cmpwi r5, 2
/* 8044D74C  40 82 01 30 */	bne lbl_8044D87C
/* 8044D750  A8 88 06 18 */	lha r4, 0x618(r8)
/* 8044D754  38 00 E3 8F */	li r0, -7281
/* 8044D758  A8 69 00 04 */	lha r3, 4(r9)
/* 8044D75C  7C 64 18 50 */	subf r3, r4, r3
/* 8044D760  7C 63 07 34 */	extsh r3, r3
/* 8044D764  2C 03 E3 8F */	cmpwi r3, -7281
/* 8044D768  40 81 00 08 */	ble lbl_8044D770
/* 8044D76C  7C 60 1B 78 */	mr r0, r3
lbl_8044D770:
/* 8044D770  2C 00 1C 71 */	cmpwi r0, 0x1c71
/* 8044D774  40 80 00 18 */	bge lbl_8044D78C
/* 8044D778  2C 03 E3 8F */	cmpwi r3, -7281
/* 8044D77C  38 00 E3 8F */	li r0, -7281
/* 8044D780  40 81 00 10 */	ble lbl_8044D790
/* 8044D784  7C 60 1B 78 */	mr r0, r3
/* 8044D788  48 00 00 08 */	b lbl_8044D790
lbl_8044D78C:
/* 8044D78C  38 00 1C 71 */	li r0, 0x1c71
lbl_8044D790:
/* 8044D790  B0 09 00 04 */	sth r0, 4(r9)
/* 8044D794  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8044D798  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 8044D79C  3C E0 43 30 */	lis r7, 0x4330
/* 8044D7A0  80 63 00 00 */	lwz r3, 0(r3)
/* 8044D7A4  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 8044D7A8  39 44 42 8C */	addi r10, r4, lit_570@l /* 0x8064428C@l */
/* 8044D7AC  A8 A9 00 02 */	lha r5, 2(r9)
/* 8044D7B0  A8 03 1B 46 */	lha r0, 0x1b46(r3)
/* 8044D7B4  3C 80 80 64 */	lis r4, lit_527@ha /* 0x80644268@ha */
/* 8044D7B8  38 64 42 68 */	addi r3, r4, lit_527@l /* 0x80644268@l */
/* 8044D7BC  6C A6 80 00 */	xoris r6, r5, 0x8000
/* 8044D7C0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8044D7C4  3C 80 80 64 */	lis r4, lit_587@ha /* 0x80644294@ha */
/* 8044D7C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8044D7CC  3C A0 80 64 */	lis r5, lit_472@ha /* 0x80644260@ha */
/* 8044D7D0  C8 8A 00 00 */	lfd f4, 0(r10)
/* 8044D7D4  38 00 C7 1D */	li r0, -14563
/* 8044D7D8  90 E1 00 20 */	stw r7, 0x20(r1)
/* 8044D7DC  A9 68 06 1C */	lha r11, 0x61c(r8)
/* 8044D7E0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8044D7E4  C0 43 00 00 */	lfs f2, 0(r3)
/* 8044D7E8  6D 6A 80 00 */	xoris r10, r11, 0x8000
/* 8044D7EC  EC 20 20 28 */	fsubs f1, f0, f4
/* 8044D7F0  C0 64 42 94 */	lfs f3, lit_587@l(r4)  /* 0x80644294@l */
/* 8044D7F4  C0 08 05 AC */	lfs f0, 0x5ac(r8)
/* 8044D7F8  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 8044D7FC  EC 22 00 72 */	fmuls f1, f2, f1
/* 8044D800  C0 45 42 60 */	lfs f2, lit_472@l(r5)  /* 0x80644260@l */
/* 8044D804  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8044D808  EC 23 08 2A */	fadds f1, f3, f1
/* 8044D80C  C8 61 00 18 */	lfd f3, 0x18(r1)
/* 8044D810  91 41 00 0C */	stw r10, 0xc(r1)
/* 8044D814  EC 63 20 28 */	fsubs f3, f3, f4
/* 8044D818  EC 01 00 32 */	fmuls f0, f1, f0
/* 8044D81C  90 E1 00 08 */	stw r7, 8(r1)
/* 8044D820  C8 21 00 08 */	lfd f1, 8(r1)
/* 8044D824  EC 02 00 2A */	fadds f0, f2, f0
/* 8044D828  EC 21 20 28 */	fsubs f1, f1, f4
/* 8044D82C  EC 03 00 32 */	fmuls f0, f3, f0
/* 8044D830  FC 20 08 1E */	fctiwz f1, f1
/* 8044D834  FC 00 00 1E */	fctiwz f0, f0
/* 8044D838  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 8044D83C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8044D840  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8044D844  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 8044D848  7C 64 18 50 */	subf r3, r4, r3
/* 8044D84C  2C 03 C7 1D */	cmpwi r3, -14563
/* 8044D850  40 81 00 08 */	ble lbl_8044D858
/* 8044D854  7C 60 1B 78 */	mr r0, r3
lbl_8044D858:
/* 8044D858  2C 00 38 E3 */	cmpwi r0, 0x38e3
/* 8044D85C  40 80 00 18 */	bge lbl_8044D874
/* 8044D860  2C 03 C7 1D */	cmpwi r3, -14563
/* 8044D864  38 00 C7 1D */	li r0, -14563
/* 8044D868  40 81 00 10 */	ble lbl_8044D878
/* 8044D86C  7C 60 1B 78 */	mr r0, r3
/* 8044D870  48 00 00 08 */	b lbl_8044D878
lbl_8044D874:
/* 8044D874  38 00 38 E3 */	li r0, 0x38e3
lbl_8044D878:
/* 8044D878  B0 09 00 02 */	sth r0, 2(r9)
lbl_8044D87C:
/* 8044D87C  38 60 00 01 */	li r3, 1
/* 8044D880  38 21 00 30 */	addi r1, r1, 0x30
/* 8044D884  4E 80 00 20 */	blr 