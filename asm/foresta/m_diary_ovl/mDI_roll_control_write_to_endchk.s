lbl_805D01A8:
/* 805D01A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D01AC  7C 08 02 A6 */	mflr r0
/* 805D01B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D01B4  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805D01B8  80 C3 09 E8 */	lwz r6, 0x9e8(r3)
/* 805D01BC  80 66 00 18 */	lwz r3, 0x18(r6)
/* 805D01C0  38 03 00 02 */	addi r0, r3, 2
/* 805D01C4  2C 00 00 08 */	cmpwi r0, 8
/* 805D01C8  40 80 00 08 */	bge lbl_805D01D0
/* 805D01CC  38 00 00 08 */	li r0, 8
lbl_805D01D0:
/* 805D01D0  98 06 00 05 */	stb r0, 5(r6)
/* 805D01D4  3C 00 43 30 */	lis r0, 0x4330
/* 805D01D8  3C A0 80 65 */	lis r5, lit_626@ha /* 0x8064B0DC@ha */
/* 805D01DC  3C 60 80 65 */	lis r3, lit_616@ha /* 0x8064B0B4@ha */
/* 805D01E0  88 C6 00 05 */	lbz r6, 5(r6)
/* 805D01E4  90 01 00 08 */	stw r0, 8(r1)
/* 805D01E8  38 06 FF F8 */	addi r0, r6, -8
/* 805D01EC  C8 65 B0 DC */	lfd f3, lit_626@l(r5)  /* 0x8064B0DC@l */
/* 805D01F0  54 00 20 36 */	slwi r0, r0, 4
/* 805D01F4  C0 44 00 1C */	lfs f2, 0x1c(r4)
/* 805D01F8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805D01FC  C0 03 B0 B4 */	lfs f0, lit_616@l(r3)  /* 0x8064B0B4@l */
/* 805D0200  90 01 00 0C */	stw r0, 0xc(r1)
/* 805D0204  C8 21 00 08 */	lfd f1, 8(r1)
/* 805D0208  EC 21 18 28 */	fsubs f1, f1, f3
/* 805D020C  EC 41 10 28 */	fsubs f2, f1, f2
/* 805D0210  FC 40 12 10 */	fabs f2, f2
/* 805D0214  FC 60 10 18 */	frsp f3, f2
/* 805D0218  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 805D021C  40 81 00 24 */	ble lbl_805D0240
/* 805D0220  3C 60 80 65 */	lis r3, lit_624@ha /* 0x8064B0D4@ha */
/* 805D0224  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 805D0228  C0 43 B0 D4 */	lfs f2, lit_624@l(r3)  /* 0x8064B0D4@l */
/* 805D022C  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 805D0230  40 82 00 10 */	bne lbl_805D0240
/* 805D0234  3C 60 80 65 */	lis r3, lit_615@ha /* 0x8064B0B0@ha */
/* 805D0238  C0 03 B0 B0 */	lfs f0, lit_615@l(r3)  /* 0x8064B0B0@l */
/* 805D023C  D0 04 00 24 */	stfs f0, 0x24(r4)
lbl_805D0240:
/* 805D0240  3C 60 80 65 */	lis r3, lit_616@ha /* 0x8064B0B4@ha */
/* 805D0244  C0 03 B0 B4 */	lfs f0, lit_616@l(r3)  /* 0x8064B0B4@l */
/* 805D0248  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 805D024C  40 81 00 90 */	ble lbl_805D02DC
/* 805D0250  3C 60 80 65 */	lis r3, lit_619@ha /* 0x8064B0C0@ha */
/* 805D0254  C0 03 B0 C0 */	lfs f0, lit_619@l(r3)  /* 0x8064B0C0@l */
/* 805D0258  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 805D025C  40 81 00 34 */	ble lbl_805D0290
/* 805D0260  3C A0 80 65 */	lis r5, lit_620@ha /* 0x8064B0C4@ha */
/* 805D0264  3C 60 80 65 */	lis r3, lit_621@ha /* 0x8064B0C8@ha */
/* 805D0268  C0 64 00 24 */	lfs f3, 0x24(r4)
/* 805D026C  C0 45 B0 C4 */	lfs f2, lit_620@l(r5)  /* 0x8064B0C4@l */
/* 805D0270  C0 03 B0 C8 */	lfs f0, lit_621@l(r3)  /* 0x8064B0C8@l */
/* 805D0274  EC 43 00 B2 */	fmuls f2, f3, f2
/* 805D0278  D0 44 00 24 */	stfs f2, 0x24(r4)
/* 805D027C  C0 44 00 24 */	lfs f2, 0x24(r4)
/* 805D0280  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805D0284  40 81 00 48 */	ble lbl_805D02CC
/* 805D0288  D0 04 00 24 */	stfs f0, 0x24(r4)
/* 805D028C  48 00 00 40 */	b lbl_805D02CC
lbl_805D0290:
/* 805D0290  3C 60 80 65 */	lis r3, lit_622@ha /* 0x8064B0CC@ha */
/* 805D0294  C0 03 B0 CC */	lfs f0, lit_622@l(r3)  /* 0x8064B0CC@l */
/* 805D0298  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 805D029C  40 80 00 30 */	bge lbl_805D02CC
/* 805D02A0  3C A0 80 65 */	lis r5, data_8064B0AC@ha /* 0x8064B0AC@ha */
/* 805D02A4  3C 60 80 65 */	lis r3, lit_615@ha /* 0x8064B0B0@ha */
/* 805D02A8  C0 64 00 24 */	lfs f3, 0x24(r4)
/* 805D02AC  C0 45 B0 AC */	lfs f2, data_8064B0AC@l(r5)  /* 0x8064B0AC@l */
/* 805D02B0  C0 03 B0 B0 */	lfs f0, lit_615@l(r3)  /* 0x8064B0B0@l */
/* 805D02B4  EC 43 00 B2 */	fmuls f2, f3, f2
/* 805D02B8  D0 44 00 24 */	stfs f2, 0x24(r4)
/* 805D02BC  C0 44 00 24 */	lfs f2, 0x24(r4)
/* 805D02C0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805D02C4  40 80 00 08 */	bge lbl_805D02CC
/* 805D02C8  D0 04 00 24 */	stfs f0, 0x24(r4)
lbl_805D02CC:
/* 805D02CC  C0 44 00 24 */	lfs f2, 0x24(r4)
/* 805D02D0  38 64 00 1C */	addi r3, r4, 0x1c
/* 805D02D4  4B DE A9 95 */	bl chase_f
/* 805D02D8  48 00 00 14 */	b lbl_805D02EC
lbl_805D02DC:
/* 805D02DC  3C 60 80 65 */	lis r3, lit_624@ha /* 0x8064B0D4@ha */
/* 805D02E0  C0 03 B0 D4 */	lfs f0, lit_624@l(r3)  /* 0x8064B0D4@l */
/* 805D02E4  D0 04 00 24 */	stfs f0, 0x24(r4)
/* 805D02E8  D0 24 00 1C */	stfs f1, 0x1c(r4)
lbl_805D02EC:
/* 805D02EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D02F0  7C 08 03 A6 */	mtlr r0
/* 805D02F4  38 21 00 10 */	addi r1, r1, 0x10
/* 805D02F8  4E 80 00 20 */	blr 
