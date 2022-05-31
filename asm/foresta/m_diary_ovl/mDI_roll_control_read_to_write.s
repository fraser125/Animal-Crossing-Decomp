lbl_805CFB58:
/* 805CFB58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CFB5C  7C 08 02 A6 */	mflr r0
/* 805CFB60  3C A0 80 65 */	lis r5, lit_626@ha /* 0x8064B0DC@ha */
/* 805CFB64  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CFB68  3C 00 43 30 */	lis r0, 0x4330
/* 805CFB6C  C8 45 B0 DC */	lfd f2, lit_626@l(r5)  /* 0x8064B0DC@l */
/* 805CFB70  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805CFB74  3C 60 80 65 */	lis r3, lit_615@ha /* 0x8064B0B0@ha */
/* 805CFB78  90 01 00 08 */	stw r0, 8(r1)
/* 805CFB7C  80 E6 09 E8 */	lwz r7, 0x9e8(r6)
/* 805CFB80  C0 63 B0 B0 */	lfs f3, lit_615@l(r3)  /* 0x8064B0B0@l */
/* 805CFB84  80 C7 00 18 */	lwz r6, 0x18(r7)
/* 805CFB88  38 06 00 02 */	addi r0, r6, 2
/* 805CFB8C  98 07 00 05 */	stb r0, 5(r7)
/* 805CFB90  88 67 00 05 */	lbz r3, 5(r7)
/* 805CFB94  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 805CFB98  38 03 FF FE */	addi r0, r3, -2
/* 805CFB9C  54 00 20 36 */	slwi r0, r0, 4
/* 805CFBA0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805CFBA4  90 01 00 0C */	stw r0, 0xc(r1)
/* 805CFBA8  C8 21 00 08 */	lfd f1, 8(r1)
/* 805CFBAC  EC 21 10 28 */	fsubs f1, f1, f2
/* 805CFBB0  EC 01 00 28 */	fsubs f0, f1, f0
/* 805CFBB4  FC 00 02 10 */	fabs f0, f0
/* 805CFBB8  FC 80 00 18 */	frsp f4, f0
/* 805CFBBC  FC 04 18 40 */	fcmpo cr0, f4, f3
/* 805CFBC0  40 81 00 1C */	ble lbl_805CFBDC
/* 805CFBC4  3C 60 80 65 */	lis r3, lit_624@ha /* 0x8064B0D4@ha */
/* 805CFBC8  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 805CFBCC  C0 43 B0 D4 */	lfs f2, lit_624@l(r3)  /* 0x8064B0D4@l */
/* 805CFBD0  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 805CFBD4  40 82 00 08 */	bne lbl_805CFBDC
/* 805CFBD8  D0 64 00 24 */	stfs f3, 0x24(r4)
lbl_805CFBDC:
/* 805CFBDC  3C 60 80 65 */	lis r3, lit_616@ha /* 0x8064B0B4@ha */
/* 805CFBE0  C0 03 B0 B4 */	lfs f0, lit_616@l(r3)  /* 0x8064B0B4@l */
/* 805CFBE4  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 805CFBE8  40 81 00 90 */	ble lbl_805CFC78
/* 805CFBEC  3C 60 80 65 */	lis r3, lit_619@ha /* 0x8064B0C0@ha */
/* 805CFBF0  C0 03 B0 C0 */	lfs f0, lit_619@l(r3)  /* 0x8064B0C0@l */
/* 805CFBF4  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 805CFBF8  40 81 00 34 */	ble lbl_805CFC2C
/* 805CFBFC  3C A0 80 65 */	lis r5, lit_620@ha /* 0x8064B0C4@ha */
/* 805CFC00  3C 60 80 65 */	lis r3, lit_621@ha /* 0x8064B0C8@ha */
/* 805CFC04  C0 64 00 24 */	lfs f3, 0x24(r4)
/* 805CFC08  C0 45 B0 C4 */	lfs f2, lit_620@l(r5)  /* 0x8064B0C4@l */
/* 805CFC0C  C0 03 B0 C8 */	lfs f0, lit_621@l(r3)  /* 0x8064B0C8@l */
/* 805CFC10  EC 43 00 B2 */	fmuls f2, f3, f2
/* 805CFC14  D0 44 00 24 */	stfs f2, 0x24(r4)
/* 805CFC18  C0 44 00 24 */	lfs f2, 0x24(r4)
/* 805CFC1C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805CFC20  40 81 00 48 */	ble lbl_805CFC68
/* 805CFC24  D0 04 00 24 */	stfs f0, 0x24(r4)
/* 805CFC28  48 00 00 40 */	b lbl_805CFC68
lbl_805CFC2C:
/* 805CFC2C  3C 60 80 65 */	lis r3, lit_622@ha /* 0x8064B0CC@ha */
/* 805CFC30  C0 03 B0 CC */	lfs f0, lit_622@l(r3)  /* 0x8064B0CC@l */
/* 805CFC34  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 805CFC38  40 80 00 30 */	bge lbl_805CFC68
/* 805CFC3C  3C A0 80 65 */	lis r5, data_8064B0AC@ha /* 0x8064B0AC@ha */
/* 805CFC40  3C 60 80 65 */	lis r3, lit_615@ha /* 0x8064B0B0@ha */
/* 805CFC44  C0 64 00 24 */	lfs f3, 0x24(r4)
/* 805CFC48  C0 45 B0 AC */	lfs f2, data_8064B0AC@l(r5)  /* 0x8064B0AC@l */
/* 805CFC4C  C0 03 B0 B0 */	lfs f0, lit_615@l(r3)  /* 0x8064B0B0@l */
/* 805CFC50  EC 43 00 B2 */	fmuls f2, f3, f2
/* 805CFC54  D0 44 00 24 */	stfs f2, 0x24(r4)
/* 805CFC58  C0 44 00 24 */	lfs f2, 0x24(r4)
/* 805CFC5C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805CFC60  40 80 00 08 */	bge lbl_805CFC68
/* 805CFC64  D0 04 00 24 */	stfs f0, 0x24(r4)
lbl_805CFC68:
/* 805CFC68  C0 44 00 24 */	lfs f2, 0x24(r4)
/* 805CFC6C  38 64 00 1C */	addi r3, r4, 0x1c
/* 805CFC70  4B DE AF F9 */	bl chase_f
/* 805CFC74  48 00 00 14 */	b lbl_805CFC88
lbl_805CFC78:
/* 805CFC78  3C 60 80 65 */	lis r3, lit_624@ha /* 0x8064B0D4@ha */
/* 805CFC7C  C0 03 B0 D4 */	lfs f0, lit_624@l(r3)  /* 0x8064B0D4@l */
/* 805CFC80  D0 04 00 24 */	stfs f0, 0x24(r4)
/* 805CFC84  D0 24 00 1C */	stfs f1, 0x1c(r4)
lbl_805CFC88:
/* 805CFC88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CFC8C  7C 08 03 A6 */	mtlr r0
/* 805CFC90  38 21 00 10 */	addi r1, r1, 0x10
/* 805CFC94  4E 80 00 20 */	blr 
