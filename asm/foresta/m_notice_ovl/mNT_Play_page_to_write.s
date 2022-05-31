lbl_805EB18C:
/* 805EB18C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805EB190  7C 08 02 A6 */	mflr r0
/* 805EB194  90 01 00 24 */	stw r0, 0x24(r1)
/* 805EB198  39 61 00 20 */	addi r11, r1, 0x20
/* 805EB19C  4B AA FD 39 */	bl func_8009AED4
/* 805EB1A0  3D 00 80 65 */	lis r8, lit_489@ha /* 0x8064B6E4@ha */
/* 805EB1A4  3C E0 80 65 */	lis r7, lit_565@ha /* 0x8064B6FC@ha */
/* 805EB1A8  3C C0 80 65 */	lis r6, lit_566@ha /* 0x8064B700@ha */
/* 805EB1AC  3C 60 80 65 */	lis r3, lit_567@ha /* 0x8064B704@ha */
/* 805EB1B0  39 28 B6 E4 */	addi r9, r8, lit_489@l /* 0x8064B6E4@l */
/* 805EB1B4  39 07 B6 FC */	addi r8, r7, lit_565@l /* 0x8064B6FC@l */
/* 805EB1B8  38 E6 B7 00 */	addi r7, r6, lit_566@l /* 0x8064B700@l */
/* 805EB1BC  38 C3 B7 04 */	addi r6, r3, lit_567@l /* 0x8064B704@l */
/* 805EB1C0  7C 9E 23 78 */	mr r30, r4
/* 805EB1C4  C0 29 00 00 */	lfs f1, 0(r9)
/* 805EB1C8  C0 48 00 00 */	lfs f2, 0(r8)
/* 805EB1CC  7C BF 2B 78 */	mr r31, r5
/* 805EB1D0  C0 67 00 00 */	lfs f3, 0(r7)
/* 805EB1D4  38 7E 00 18 */	addi r3, r30, 0x18
/* 805EB1D8  C0 86 00 00 */	lfs f4, 0(r6)
/* 805EB1DC  4B DC FF D5 */	bl add_calc
/* 805EB1E0  FC 20 0A 10 */	fabs f1, f1
/* 805EB1E4  3C 60 80 65 */	lis r3, lit_462@ha /* 0x8064B6C0@ha */
/* 805EB1E8  C0 03 B6 C0 */	lfs f0, lit_462@l(r3)  /* 0x8064B6C0@l */
/* 805EB1EC  FC 20 08 18 */	frsp f1, f1
/* 805EB1F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805EB1F4  40 80 00 20 */	bge lbl_805EB214
/* 805EB1F8  88 1F 00 04 */	lbz r0, 4(r31)
/* 805EB1FC  3C 60 80 65 */	lis r3, lit_489@ha /* 0x8064B6E4@ha */
/* 805EB200  C0 03 B6 E4 */	lfs f0, lit_489@l(r3)  /* 0x8064B6E4@l */
/* 805EB204  3B A0 00 01 */	li r29, 1
/* 805EB208  98 1F 00 05 */	stb r0, 5(r31)
/* 805EB20C  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 805EB210  48 00 00 08 */	b lbl_805EB218
lbl_805EB214:
/* 805EB214  3B A0 00 00 */	li r29, 0
lbl_805EB218:
/* 805EB218  3C C0 80 65 */	lis r6, lit_586@ha /* 0x8064B708@ha */
/* 805EB21C  3C A0 80 65 */	lis r5, lit_565@ha /* 0x8064B6FC@ha */
/* 805EB220  3C 80 80 65 */	lis r4, lit_566@ha /* 0x8064B700@ha */
/* 805EB224  3C 60 80 65 */	lis r3, lit_567@ha /* 0x8064B704@ha */
/* 805EB228  38 E6 B7 08 */	addi r7, r6, lit_586@l /* 0x8064B708@l */
/* 805EB22C  38 C5 B6 FC */	addi r6, r5, lit_565@l /* 0x8064B6FC@l */
/* 805EB230  38 A4 B7 00 */	addi r5, r4, lit_566@l /* 0x8064B700@l */
/* 805EB234  38 83 B7 04 */	addi r4, r3, lit_567@l /* 0x8064B704@l */
/* 805EB238  C0 27 00 00 */	lfs f1, 0(r7)
/* 805EB23C  38 7F 00 D0 */	addi r3, r31, 0xd0
/* 805EB240  C0 46 00 00 */	lfs f2, 0(r6)
/* 805EB244  C0 65 00 00 */	lfs f3, 0(r5)
/* 805EB248  C0 84 00 00 */	lfs f4, 0(r4)
/* 805EB24C  4B DC FF 65 */	bl add_calc
/* 805EB250  FC 20 0A 10 */	fabs f1, f1
/* 805EB254  3C 60 80 65 */	lis r3, lit_462@ha /* 0x8064B6C0@ha */
/* 805EB258  C0 03 B6 C0 */	lfs f0, lit_462@l(r3)  /* 0x8064B6C0@l */
/* 805EB25C  FC 20 08 18 */	frsp f1, f1
/* 805EB260  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805EB264  40 80 00 18 */	bge lbl_805EB27C
/* 805EB268  3C 60 80 65 */	lis r3, lit_586@ha /* 0x8064B708@ha */
/* 805EB26C  38 00 00 01 */	li r0, 1
/* 805EB270  C0 03 B7 08 */	lfs f0, lit_586@l(r3)  /* 0x8064B708@l */
/* 805EB274  D0 1F 00 D0 */	stfs f0, 0xd0(r31)
/* 805EB278  48 00 00 08 */	b lbl_805EB280
lbl_805EB27C:
/* 805EB27C  38 00 00 00 */	li r0, 0
lbl_805EB280:
/* 805EB280  2C 1D 00 00 */	cmpwi r29, 0
/* 805EB284  41 82 00 14 */	beq lbl_805EB298
/* 805EB288  2C 00 00 00 */	cmpwi r0, 0
/* 805EB28C  41 82 00 0C */	beq lbl_805EB298
/* 805EB290  38 00 00 02 */	li r0, 2
/* 805EB294  90 1E 00 04 */	stw r0, 4(r30)
lbl_805EB298:
/* 805EB298  39 61 00 20 */	addi r11, r1, 0x20
/* 805EB29C  4B AA FC 85 */	bl func_8009AF20
/* 805EB2A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805EB2A4  7C 08 03 A6 */	mtlr r0
/* 805EB2A8  38 21 00 20 */	addi r1, r1, 0x20
/* 805EB2AC  4E 80 00 20 */	blr 
