lbl_805EAFB8:
/* 805EAFB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805EAFBC  7C 08 02 A6 */	mflr r0
/* 805EAFC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805EAFC4  39 61 00 20 */	addi r11, r1, 0x20
/* 805EAFC8  4B AA FF 0D */	bl func_8009AED4
/* 805EAFCC  7C BE 2B 78 */	mr r30, r5
/* 805EAFD0  7C 9D 23 78 */	mr r29, r4
/* 805EAFD4  88 05 00 06 */	lbz r0, 6(r5)
/* 805EAFD8  3B E0 00 00 */	li r31, 0
/* 805EAFDC  28 00 00 01 */	cmplwi r0, 1
/* 805EAFE0  40 82 00 64 */	bne lbl_805EB044
/* 805EAFE4  3C C0 80 65 */	lis r6, lit_489@ha /* 0x8064B6E4@ha */
/* 805EAFE8  3C A0 80 65 */	lis r5, lit_565@ha /* 0x8064B6FC@ha */
/* 805EAFEC  3C 80 80 65 */	lis r4, lit_566@ha /* 0x8064B700@ha */
/* 805EAFF0  3C 60 80 65 */	lis r3, lit_567@ha /* 0x8064B704@ha */
/* 805EAFF4  38 E6 B6 E4 */	addi r7, r6, lit_489@l /* 0x8064B6E4@l */
/* 805EAFF8  38 C5 B6 FC */	addi r6, r5, lit_565@l /* 0x8064B6FC@l */
/* 805EAFFC  38 A4 B7 00 */	addi r5, r4, lit_566@l /* 0x8064B700@l */
/* 805EB000  38 83 B7 04 */	addi r4, r3, lit_567@l /* 0x8064B704@l */
/* 805EB004  C0 27 00 00 */	lfs f1, 0(r7)
/* 805EB008  38 7D 00 18 */	addi r3, r29, 0x18
/* 805EB00C  C0 46 00 00 */	lfs f2, 0(r6)
/* 805EB010  C0 65 00 00 */	lfs f3, 0(r5)
/* 805EB014  C0 84 00 00 */	lfs f4, 0(r4)
/* 805EB018  4B DD 01 99 */	bl add_calc
/* 805EB01C  FC 20 0A 10 */	fabs f1, f1
/* 805EB020  3C 60 80 65 */	lis r3, lit_462@ha /* 0x8064B6C0@ha */
/* 805EB024  C0 03 B6 C0 */	lfs f0, lit_462@l(r3)  /* 0x8064B6C0@l */
/* 805EB028  FC 20 08 18 */	frsp f1, f1
/* 805EB02C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805EB030  40 80 00 0C */	bge lbl_805EB03C
/* 805EB034  38 00 00 01 */	li r0, 1
/* 805EB038  48 00 00 84 */	b lbl_805EB0BC
lbl_805EB03C:
/* 805EB03C  38 00 00 00 */	li r0, 0
/* 805EB040  48 00 00 7C */	b lbl_805EB0BC
lbl_805EB044:
/* 805EB044  3C 60 80 65 */	lis r3, lit_489@ha /* 0x8064B6E4@ha */
/* 805EB048  C0 5D 00 18 */	lfs f2, 0x18(r29)
/* 805EB04C  C0 23 B6 E4 */	lfs f1, lit_489@l(r3)  /* 0x8064B6E4@l */
/* 805EB050  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 805EB054  40 81 00 38 */	ble lbl_805EB08C
/* 805EB058  3C 60 80 65 */	lis r3, lit_566@ha /* 0x8064B700@ha */
/* 805EB05C  3B E0 00 01 */	li r31, 1
/* 805EB060  C0 03 B7 00 */	lfs f0, lit_566@l(r3)  /* 0x8064B700@l */
/* 805EB064  EC 02 00 28 */	fsubs f0, f2, f0
/* 805EB068  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 805EB06C  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 805EB070  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 805EB074  4C 40 13 82 */	cror 2, 0, 2
/* 805EB078  40 82 00 0C */	bne lbl_805EB084
/* 805EB07C  38 00 00 01 */	li r0, 1
/* 805EB080  48 00 00 3C */	b lbl_805EB0BC
lbl_805EB084:
/* 805EB084  38 00 00 00 */	li r0, 0
/* 805EB088  48 00 00 34 */	b lbl_805EB0BC
lbl_805EB08C:
/* 805EB08C  3C 60 80 65 */	lis r3, lit_566@ha /* 0x8064B700@ha */
/* 805EB090  3B E0 00 00 */	li r31, 0
/* 805EB094  C0 03 B7 00 */	lfs f0, lit_566@l(r3)  /* 0x8064B700@l */
/* 805EB098  EC 02 00 2A */	fadds f0, f2, f0
/* 805EB09C  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 805EB0A0  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 805EB0A4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 805EB0A8  4C 41 13 82 */	cror 2, 1, 2
/* 805EB0AC  40 82 00 0C */	bne lbl_805EB0B8
/* 805EB0B0  38 00 00 01 */	li r0, 1
/* 805EB0B4  48 00 00 08 */	b lbl_805EB0BC
lbl_805EB0B8:
/* 805EB0B8  38 00 00 00 */	li r0, 0
lbl_805EB0BC:
/* 805EB0BC  2C 00 00 00 */	cmpwi r0, 0
/* 805EB0C0  41 82 00 B4 */	beq lbl_805EB174
/* 805EB0C4  88 7E 00 06 */	lbz r3, 6(r30)
/* 805EB0C8  38 03 FF FF */	addi r0, r3, -1
/* 805EB0CC  98 1E 00 06 */	stb r0, 6(r30)
/* 805EB0D0  88 1E 00 06 */	lbz r0, 6(r30)
/* 805EB0D4  28 00 00 00 */	cmplwi r0, 0
/* 805EB0D8  40 82 00 24 */	bne lbl_805EB0FC
/* 805EB0DC  3C 60 80 65 */	lis r3, lit_489@ha /* 0x8064B6E4@ha */
/* 805EB0E0  38 00 00 00 */	li r0, 0
/* 805EB0E4  C0 03 B6 E4 */	lfs f0, lit_489@l(r3)  /* 0x8064B6E4@l */
/* 805EB0E8  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 805EB0EC  88 7E 00 04 */	lbz r3, 4(r30)
/* 805EB0F0  98 7E 00 05 */	stb r3, 5(r30)
/* 805EB0F4  98 1E 00 00 */	stb r0, 0(r30)
/* 805EB0F8  48 00 00 7C */	b lbl_805EB174
lbl_805EB0FC:
/* 805EB0FC  38 60 00 5F */	li r3, 0x5f
/* 805EB100  48 04 2C 05 */	bl sAdo_SysTrgStart
/* 805EB104  88 1E 00 04 */	lbz r0, 4(r30)
/* 805EB108  2C 1F 00 00 */	cmpwi r31, 0
/* 805EB10C  98 1E 00 05 */	stb r0, 5(r30)
/* 805EB110  41 82 00 3C */	beq lbl_805EB14C
/* 805EB114  3C 60 80 65 */	lis r3, lit_533@ha /* 0x8064B6F4@ha */
/* 805EB118  C0 3D 00 18 */	lfs f1, 0x18(r29)
/* 805EB11C  C0 03 B6 F4 */	lfs f0, lit_533@l(r3)  /* 0x8064B6F4@l */
/* 805EB120  EC 01 00 2A */	fadds f0, f1, f0
/* 805EB124  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 805EB128  88 9E 00 04 */	lbz r4, 4(r30)
/* 805EB12C  88 7E 00 03 */	lbz r3, 3(r30)
/* 805EB130  88 1E 00 06 */	lbz r0, 6(r30)
/* 805EB134  7C 64 18 50 */	subf r3, r4, r3
/* 805EB138  38 63 FF FF */	addi r3, r3, -1
/* 805EB13C  7C 03 03 D6 */	divw r0, r3, r0
/* 805EB140  7C 04 02 14 */	add r0, r4, r0
/* 805EB144  98 1E 00 04 */	stb r0, 4(r30)
/* 805EB148  48 00 00 2C */	b lbl_805EB174
lbl_805EB14C:
/* 805EB14C  3C 60 80 65 */	lis r3, lit_533@ha /* 0x8064B6F4@ha */
/* 805EB150  C0 3D 00 18 */	lfs f1, 0x18(r29)
/* 805EB154  C0 03 B6 F4 */	lfs f0, lit_533@l(r3)  /* 0x8064B6F4@l */
/* 805EB158  EC 01 00 28 */	fsubs f0, f1, f0
/* 805EB15C  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 805EB160  88 7E 00 04 */	lbz r3, 4(r30)
/* 805EB164  88 1E 00 06 */	lbz r0, 6(r30)
/* 805EB168  7C 03 03 D6 */	divw r0, r3, r0
/* 805EB16C  7C 00 18 50 */	subf r0, r0, r3
/* 805EB170  98 1E 00 04 */	stb r0, 4(r30)
lbl_805EB174:
/* 805EB174  39 61 00 20 */	addi r11, r1, 0x20
/* 805EB178  4B AA FD A9 */	bl func_8009AF20
/* 805EB17C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805EB180  7C 08 03 A6 */	mtlr r0
/* 805EB184  38 21 00 20 */	addi r1, r1, 0x20
/* 805EB188  4E 80 00 20 */	blr 
