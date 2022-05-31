lbl_805EAB68:
/* 805EAB68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EAB6C  7C 08 02 A6 */	mflr r0
/* 805EAB70  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EAB74  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805EAB78  80 A3 09 8C */	lwz r5, 0x98c(r3)
/* 805EAB7C  80 C3 09 B8 */	lwz r6, 0x9b8(r3)
/* 805EAB80  28 05 00 00 */	cmplwi r5, 0
/* 805EAB84  41 82 01 1C */	beq lbl_805EACA0
/* 805EAB88  A8 A5 00 24 */	lha r5, 0x24(r5)
/* 805EAB8C  88 06 00 02 */	lbz r0, 2(r6)
/* 805EAB90  7C 00 28 51 */	subf. r0, r0, r5
/* 805EAB94  40 80 00 18 */	bge lbl_805EABAC
/* 805EAB98  3C 60 80 65 */	lis r3, data_8064B6BC@ha /* 0x8064B6BC@ha */
/* 805EAB9C  98 A6 00 02 */	stb r5, 2(r6)
/* 805EABA0  C0 03 B6 BC */	lfs f0, data_8064B6BC@l(r3)  /* 0x8064B6BC@l */
/* 805EABA4  D0 04 00 24 */	stfs f0, 0x24(r4)
/* 805EABA8  48 00 00 20 */	b lbl_805EABC8
lbl_805EABAC:
/* 805EABAC  2C 00 00 02 */	cmpwi r0, 2
/* 805EABB0  40 81 00 18 */	ble lbl_805EABC8
/* 805EABB4  3C 60 80 65 */	lis r3, data_8064B6BC@ha /* 0x8064B6BC@ha */
/* 805EABB8  38 05 FF FE */	addi r0, r5, -2
/* 805EABBC  98 06 00 02 */	stb r0, 2(r6)
/* 805EABC0  C0 03 B6 BC */	lfs f0, data_8064B6BC@l(r3)  /* 0x8064B6BC@l */
/* 805EABC4  D0 04 00 24 */	stfs f0, 0x24(r4)
lbl_805EABC8:
/* 805EABC8  88 C6 00 02 */	lbz r6, 2(r6)
/* 805EABCC  3C 00 43 30 */	lis r0, 0x4330
/* 805EABD0  3C A0 80 65 */	lis r5, lit_469@ha /* 0x8064B6DC@ha */
/* 805EABD4  90 01 00 08 */	stw r0, 8(r1)
/* 805EABD8  54 C6 20 36 */	slwi r6, r6, 4
/* 805EABDC  C8 25 B6 DC */	lfd f1, lit_469@l(r5)  /* 0x8064B6DC@l */
/* 805EABE0  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 805EABE4  C0 44 00 1C */	lfs f2, 0x1c(r4)
/* 805EABE8  90 01 00 0C */	stw r0, 0xc(r1)
/* 805EABEC  3C 60 80 65 */	lis r3, lit_462@ha /* 0x8064B6C0@ha */
/* 805EABF0  C8 01 00 08 */	lfd f0, 8(r1)
/* 805EABF4  EC 20 08 28 */	fsubs f1, f0, f1
/* 805EABF8  C0 03 B6 C0 */	lfs f0, lit_462@l(r3)  /* 0x8064B6C0@l */
/* 805EABFC  EC 41 10 28 */	fsubs f2, f1, f2
/* 805EAC00  FC 40 12 10 */	fabs f2, f2
/* 805EAC04  FC 40 10 18 */	frsp f2, f2
/* 805EAC08  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805EAC0C  40 81 00 90 */	ble lbl_805EAC9C
/* 805EAC10  3C 60 80 65 */	lis r3, lit_463@ha /* 0x8064B6C4@ha */
/* 805EAC14  C0 03 B6 C4 */	lfs f0, lit_463@l(r3)  /* 0x8064B6C4@l */
/* 805EAC18  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805EAC1C  40 81 00 34 */	ble lbl_805EAC50
/* 805EAC20  3C A0 80 65 */	lis r5, lit_464@ha /* 0x8064B6C8@ha */
/* 805EAC24  3C 60 80 65 */	lis r3, lit_465@ha /* 0x8064B6CC@ha */
/* 805EAC28  C0 64 00 24 */	lfs f3, 0x24(r4)
/* 805EAC2C  C0 45 B6 C8 */	lfs f2, lit_464@l(r5)  /* 0x8064B6C8@l */
/* 805EAC30  C0 03 B6 CC */	lfs f0, lit_465@l(r3)  /* 0x8064B6CC@l */
/* 805EAC34  EC 43 00 B2 */	fmuls f2, f3, f2
/* 805EAC38  D0 44 00 24 */	stfs f2, 0x24(r4)
/* 805EAC3C  C0 44 00 24 */	lfs f2, 0x24(r4)
/* 805EAC40  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805EAC44  40 81 00 48 */	ble lbl_805EAC8C
/* 805EAC48  D0 04 00 24 */	stfs f0, 0x24(r4)
/* 805EAC4C  48 00 00 40 */	b lbl_805EAC8C
lbl_805EAC50:
/* 805EAC50  3C 60 80 65 */	lis r3, lit_466@ha /* 0x8064B6D0@ha */
/* 805EAC54  C0 03 B6 D0 */	lfs f0, lit_466@l(r3)  /* 0x8064B6D0@l */
/* 805EAC58  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805EAC5C  40 80 00 30 */	bge lbl_805EAC8C
/* 805EAC60  3C A0 80 65 */	lis r5, lit_467@ha /* 0x8064B6D4@ha */
/* 805EAC64  3C 60 80 65 */	lis r3, data_8064B6BC@ha /* 0x8064B6BC@ha */
/* 805EAC68  C0 64 00 24 */	lfs f3, 0x24(r4)
/* 805EAC6C  C0 45 B6 D4 */	lfs f2, lit_467@l(r5)  /* 0x8064B6D4@l */
/* 805EAC70  C0 03 B6 BC */	lfs f0, data_8064B6BC@l(r3)  /* 0x8064B6BC@l */
/* 805EAC74  EC 43 00 B2 */	fmuls f2, f3, f2
/* 805EAC78  D0 44 00 24 */	stfs f2, 0x24(r4)
/* 805EAC7C  C0 44 00 24 */	lfs f2, 0x24(r4)
/* 805EAC80  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805EAC84  40 80 00 08 */	bge lbl_805EAC8C
/* 805EAC88  D0 04 00 24 */	stfs f0, 0x24(r4)
lbl_805EAC8C:
/* 805EAC8C  C0 44 00 24 */	lfs f2, 0x24(r4)
/* 805EAC90  38 64 00 1C */	addi r3, r4, 0x1c
/* 805EAC94  4B DC FF D5 */	bl chase_f
/* 805EAC98  48 00 00 08 */	b lbl_805EACA0
lbl_805EAC9C:
/* 805EAC9C  D0 24 00 1C */	stfs f1, 0x1c(r4)
lbl_805EACA0:
/* 805EACA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EACA4  7C 08 03 A6 */	mtlr r0
/* 805EACA8  38 21 00 10 */	addi r1, r1, 0x10
/* 805EACAC  4E 80 00 20 */	blr 
