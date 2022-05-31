lbl_804FEF14:
/* 804FEF14  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804FEF18  7C 08 02 A6 */	mflr r0
/* 804FEF1C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804FEF20  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804FEF24  3B E3 11 9A */	addi r31, r3, 0x119a
/* 804FEF28  93 C1 00 28 */	stw r30, 0x28(r1)
/* 804FEF2C  7C 9E 23 78 */	mr r30, r4
/* 804FEF30  80 03 0D 18 */	lwz r0, 0xd18(r3)
/* 804FEF34  2C 00 00 02 */	cmpwi r0, 2
/* 804FEF38  40 82 02 50 */	bne lbl_804FF188
/* 804FEF3C  A8 9E 00 00 */	lha r4, 0(r30)
/* 804FEF40  2C 04 00 00 */	cmpwi r4, 0
/* 804FEF44  41 82 00 98 */	beq lbl_804FEFDC
/* 804FEF48  3C 60 80 65 */	lis r3, lit_14484@ha /* 0x8064856C@ha */
/* 804FEF4C  3C A0 80 64 */	lis r5, lit_1027@ha /* 0x806469F4@ha */
/* 804FEF50  38 C3 85 6C */	addi r6, r3, lit_14484@l /* 0x8064856C@l */
/* 804FEF54  C8 A6 00 00 */	lfd f5, 0(r6)
/* 804FEF58  38 C5 69 F4 */	addi r6, r5, lit_1027@l /* 0x806469F4@l */
/* 804FEF5C  3C 60 80 64 */	lis r3, lit_1028@ha /* 0x806469FC@ha */
/* 804FEF60  C8 86 00 00 */	lfd f4, 0(r6)
/* 804FEF64  FC 40 28 34 */	frsqrte f2, f5
/* 804FEF68  38 A3 69 FC */	addi r5, r3, lit_1028@l /* 0x806469FC@l */
/* 804FEF6C  C8 65 00 00 */	lfd f3, 0(r5)
/* 804FEF70  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804FEF74  C0 03 65 64 */	lfs f0, lit_603@l(r3)  /* 0x80646564@l */
/* 804FEF78  7F E3 FB 78 */	mr r3, r31
/* 804FEF7C  FC 22 00 B2 */	fmul f1, f2, f2
/* 804FEF80  38 A0 01 F4 */	li r5, 0x1f4
/* 804FEF84  38 C0 00 00 */	li r6, 0
/* 804FEF88  FC 44 00 B2 */	fmul f2, f4, f2
/* 804FEF8C  FC 25 00 72 */	fmul f1, f5, f1
/* 804FEF90  FC 23 08 28 */	fsub f1, f3, f1
/* 804FEF94  FC 42 00 72 */	fmul f2, f2, f1
/* 804FEF98  FC 22 00 B2 */	fmul f1, f2, f2
/* 804FEF9C  FC 44 00 B2 */	fmul f2, f4, f2
/* 804FEFA0  FC 25 00 72 */	fmul f1, f5, f1
/* 804FEFA4  FC 23 08 28 */	fsub f1, f3, f1
/* 804FEFA8  FC 42 00 72 */	fmul f2, f2, f1
/* 804FEFAC  FC 22 00 B2 */	fmul f1, f2, f2
/* 804FEFB0  FC 44 00 B2 */	fmul f2, f4, f2
/* 804FEFB4  FC 25 00 72 */	fmul f1, f5, f1
/* 804FEFB8  FC 23 08 28 */	fsub f1, f3, f1
/* 804FEFBC  FC 22 00 72 */	fmul f1, f2, f1
/* 804FEFC0  FC 25 00 72 */	fmul f1, f5, f1
/* 804FEFC4  FC 20 08 18 */	frsp f1, f1
/* 804FEFC8  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 804FEFCC  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 804FEFD0  EC 20 08 28 */	fsubs f1, f0, f1
/* 804FEFD4  4B EB C3 3D */	bl add_calc_short_angle2
/* 804FEFD8  48 00 00 88 */	b lbl_804FF060
lbl_804FEFDC:
/* 804FEFDC  3C 60 80 64 */	lis r3, lit_1027@ha /* 0x806469F4@ha */
/* 804FEFE0  3C A0 80 64 */	lis r5, lit_1028@ha /* 0x806469FC@ha */
/* 804FEFE4  38 C3 69 F4 */	addi r6, r3, lit_1027@l /* 0x806469F4@l */
/* 804FEFE8  C8 65 69 FC */	lfd f3, lit_1028@l(r5)  /* 0x806469FC@l */
/* 804FEFEC  C8 A6 00 00 */	lfd f5, 0(r6)
/* 804FEFF0  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804FEFF4  C8 86 00 00 */	lfd f4, 0(r6)
/* 804FEFF8  38 A0 01 F4 */	li r5, 0x1f4
/* 804FEFFC  FC 40 28 34 */	frsqrte f2, f5
/* 804FF000  C0 03 65 64 */	lfs f0, lit_603@l(r3)  /* 0x80646564@l */
/* 804FF004  7F E3 FB 78 */	mr r3, r31
/* 804FF008  38 C0 00 00 */	li r6, 0
/* 804FF00C  FC 22 00 B2 */	fmul f1, f2, f2
/* 804FF010  FC 44 00 B2 */	fmul f2, f4, f2
/* 804FF014  FC 25 00 72 */	fmul f1, f5, f1
/* 804FF018  FC 23 08 28 */	fsub f1, f3, f1
/* 804FF01C  FC 42 00 72 */	fmul f2, f2, f1
/* 804FF020  FC 22 00 B2 */	fmul f1, f2, f2
/* 804FF024  FC 44 00 B2 */	fmul f2, f4, f2
/* 804FF028  FC 25 00 72 */	fmul f1, f5, f1
/* 804FF02C  FC 23 08 28 */	fsub f1, f3, f1
/* 804FF030  FC 42 00 72 */	fmul f2, f2, f1
/* 804FF034  FC 22 00 B2 */	fmul f1, f2, f2
/* 804FF038  FC 44 00 B2 */	fmul f2, f4, f2
/* 804FF03C  FC 25 00 72 */	fmul f1, f5, f1
/* 804FF040  FC 23 08 28 */	fsub f1, f3, f1
/* 804FF044  FC 22 00 72 */	fmul f1, f2, f1
/* 804FF048  FC 25 00 72 */	fmul f1, f5, f1
/* 804FF04C  FC 20 08 18 */	frsp f1, f1
/* 804FF050  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 804FF054  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 804FF058  EC 20 08 28 */	fsubs f1, f0, f1
/* 804FF05C  4B EB C2 B5 */	bl add_calc_short_angle2
lbl_804FF060:
/* 804FF060  A8 9E 00 02 */	lha r4, 2(r30)
/* 804FF064  2C 04 00 00 */	cmpwi r4, 0
/* 804FF068  41 82 00 98 */	beq lbl_804FF100
/* 804FF06C  3C 60 80 65 */	lis r3, lit_14484@ha /* 0x8064856C@ha */
/* 804FF070  3C A0 80 64 */	lis r5, lit_1027@ha /* 0x806469F4@ha */
/* 804FF074  38 C3 85 6C */	addi r6, r3, lit_14484@l /* 0x8064856C@l */
/* 804FF078  C8 A6 00 00 */	lfd f5, 0(r6)
/* 804FF07C  38 C5 69 F4 */	addi r6, r5, lit_1027@l /* 0x806469F4@l */
/* 804FF080  3C 60 80 64 */	lis r3, lit_1028@ha /* 0x806469FC@ha */
/* 804FF084  C8 86 00 00 */	lfd f4, 0(r6)
/* 804FF088  FC 40 28 34 */	frsqrte f2, f5
/* 804FF08C  38 A3 69 FC */	addi r5, r3, lit_1028@l /* 0x806469FC@l */
/* 804FF090  C8 65 00 00 */	lfd f3, 0(r5)
/* 804FF094  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804FF098  C0 03 65 64 */	lfs f0, lit_603@l(r3)  /* 0x80646564@l */
/* 804FF09C  38 7F 00 02 */	addi r3, r31, 2
/* 804FF0A0  FC 22 00 B2 */	fmul f1, f2, f2
/* 804FF0A4  38 A0 01 F4 */	li r5, 0x1f4
/* 804FF0A8  38 C0 00 00 */	li r6, 0
/* 804FF0AC  FC 44 00 B2 */	fmul f2, f4, f2
/* 804FF0B0  FC 25 00 72 */	fmul f1, f5, f1
/* 804FF0B4  FC 23 08 28 */	fsub f1, f3, f1
/* 804FF0B8  FC 42 00 72 */	fmul f2, f2, f1
/* 804FF0BC  FC 22 00 B2 */	fmul f1, f2, f2
/* 804FF0C0  FC 44 00 B2 */	fmul f2, f4, f2
/* 804FF0C4  FC 25 00 72 */	fmul f1, f5, f1
/* 804FF0C8  FC 23 08 28 */	fsub f1, f3, f1
/* 804FF0CC  FC 42 00 72 */	fmul f2, f2, f1
/* 804FF0D0  FC 22 00 B2 */	fmul f1, f2, f2
/* 804FF0D4  FC 44 00 B2 */	fmul f2, f4, f2
/* 804FF0D8  FC 25 00 72 */	fmul f1, f5, f1
/* 804FF0DC  FC 23 08 28 */	fsub f1, f3, f1
/* 804FF0E0  FC 22 00 72 */	fmul f1, f2, f1
/* 804FF0E4  FC 25 00 72 */	fmul f1, f5, f1
/* 804FF0E8  FC 20 08 18 */	frsp f1, f1
/* 804FF0EC  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 804FF0F0  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 804FF0F4  EC 20 08 28 */	fsubs f1, f0, f1
/* 804FF0F8  4B EB C2 19 */	bl add_calc_short_angle2
/* 804FF0FC  48 00 01 A8 */	b lbl_804FF2A4
lbl_804FF100:
/* 804FF100  3C 60 80 64 */	lis r3, lit_1027@ha /* 0x806469F4@ha */
/* 804FF104  3C A0 80 64 */	lis r5, lit_1028@ha /* 0x806469FC@ha */
/* 804FF108  38 C3 69 F4 */	addi r6, r3, lit_1027@l /* 0x806469F4@l */
/* 804FF10C  C8 65 69 FC */	lfd f3, lit_1028@l(r5)  /* 0x806469FC@l */
/* 804FF110  C8 A6 00 00 */	lfd f5, 0(r6)
/* 804FF114  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804FF118  C8 86 00 00 */	lfd f4, 0(r6)
/* 804FF11C  38 A0 00 C8 */	li r5, 0xc8
/* 804FF120  FC 40 28 34 */	frsqrte f2, f5
/* 804FF124  C0 03 65 64 */	lfs f0, lit_603@l(r3)  /* 0x80646564@l */
/* 804FF128  38 7F 00 02 */	addi r3, r31, 2
/* 804FF12C  38 C0 00 00 */	li r6, 0
/* 804FF130  FC 22 00 B2 */	fmul f1, f2, f2
/* 804FF134  FC 44 00 B2 */	fmul f2, f4, f2
/* 804FF138  FC 25 00 72 */	fmul f1, f5, f1
/* 804FF13C  FC 23 08 28 */	fsub f1, f3, f1
/* 804FF140  FC 42 00 72 */	fmul f2, f2, f1
/* 804FF144  FC 22 00 B2 */	fmul f1, f2, f2
/* 804FF148  FC 44 00 B2 */	fmul f2, f4, f2
/* 804FF14C  FC 25 00 72 */	fmul f1, f5, f1
/* 804FF150  FC 23 08 28 */	fsub f1, f3, f1
/* 804FF154  FC 42 00 72 */	fmul f2, f2, f1
/* 804FF158  FC 22 00 B2 */	fmul f1, f2, f2
/* 804FF15C  FC 44 00 B2 */	fmul f2, f4, f2
/* 804FF160  FC 25 00 72 */	fmul f1, f5, f1
/* 804FF164  FC 23 08 28 */	fsub f1, f3, f1
/* 804FF168  FC 22 00 72 */	fmul f1, f2, f1
/* 804FF16C  FC 25 00 72 */	fmul f1, f5, f1
/* 804FF170  FC 20 08 18 */	frsp f1, f1
/* 804FF174  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 804FF178  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 804FF17C  EC 20 08 28 */	fsubs f1, f0, f1
/* 804FF180  4B EB C1 91 */	bl add_calc_short_angle2
/* 804FF184  48 00 01 20 */	b lbl_804FF2A4
lbl_804FF188:
/* 804FF188  3C 60 80 64 */	lis r3, lit_1027@ha /* 0x806469F4@ha */
/* 804FF18C  3C 80 80 64 */	lis r4, lit_1028@ha /* 0x806469FC@ha */
/* 804FF190  38 E3 69 F4 */	addi r7, r3, lit_1027@l /* 0x806469F4@l */
/* 804FF194  C8 A7 00 00 */	lfd f5, 0(r7)
/* 804FF198  38 C4 69 FC */	addi r6, r4, lit_1028@l /* 0x806469FC@l */
/* 804FF19C  C8 66 00 00 */	lfd f3, 0(r6)
/* 804FF1A0  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804FF1A4  FC 40 28 34 */	frsqrte f2, f5
/* 804FF1A8  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804FF1AC  C0 05 00 00 */	lfs f0, 0(r5)
/* 804FF1B0  7F E3 FB 78 */	mr r3, r31
/* 804FF1B4  C8 87 00 00 */	lfd f4, 0(r7)
/* 804FF1B8  38 A0 01 F4 */	li r5, 0x1f4
/* 804FF1BC  FC 22 00 B2 */	fmul f1, f2, f2
/* 804FF1C0  A8 9E 00 00 */	lha r4, 0(r30)
/* 804FF1C4  38 C0 00 00 */	li r6, 0
/* 804FF1C8  FC 44 00 B2 */	fmul f2, f4, f2
/* 804FF1CC  FC 25 00 72 */	fmul f1, f5, f1
/* 804FF1D0  FC 23 08 28 */	fsub f1, f3, f1
/* 804FF1D4  FC 42 00 72 */	fmul f2, f2, f1
/* 804FF1D8  FC 22 00 B2 */	fmul f1, f2, f2
/* 804FF1DC  FC 44 00 B2 */	fmul f2, f4, f2
/* 804FF1E0  FC 25 00 72 */	fmul f1, f5, f1
/* 804FF1E4  FC 23 08 28 */	fsub f1, f3, f1
/* 804FF1E8  FC 42 00 72 */	fmul f2, f2, f1
/* 804FF1EC  FC 22 00 B2 */	fmul f1, f2, f2
/* 804FF1F0  FC 44 00 B2 */	fmul f2, f4, f2
/* 804FF1F4  FC 25 00 72 */	fmul f1, f5, f1
/* 804FF1F8  FC 23 08 28 */	fsub f1, f3, f1
/* 804FF1FC  FC 22 00 72 */	fmul f1, f2, f1
/* 804FF200  FC 25 00 72 */	fmul f1, f5, f1
/* 804FF204  FC 20 08 18 */	frsp f1, f1
/* 804FF208  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804FF20C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 804FF210  EC 20 08 28 */	fsubs f1, f0, f1
/* 804FF214  4B EB C0 FD */	bl add_calc_short_angle2
/* 804FF218  3C 60 80 64 */	lis r3, lit_1027@ha /* 0x806469F4@ha */
/* 804FF21C  3C 80 80 64 */	lis r4, lit_1028@ha /* 0x806469FC@ha */
/* 804FF220  38 C3 69 F4 */	addi r6, r3, lit_1027@l /* 0x806469F4@l */
/* 804FF224  C8 A6 00 00 */	lfd f5, 0(r6)
/* 804FF228  38 A4 69 FC */	addi r5, r4, lit_1028@l /* 0x806469FC@l */
/* 804FF22C  C8 86 00 00 */	lfd f4, 0(r6)
/* 804FF230  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804FF234  FC 40 28 34 */	frsqrte f2, f5
/* 804FF238  C8 65 00 00 */	lfd f3, 0(r5)
/* 804FF23C  C0 03 65 64 */	lfs f0, lit_603@l(r3)  /* 0x80646564@l */
/* 804FF240  38 7F 00 02 */	addi r3, r31, 2
/* 804FF244  A8 9E 00 02 */	lha r4, 2(r30)
/* 804FF248  38 A0 01 F4 */	li r5, 0x1f4
/* 804FF24C  FC 22 00 B2 */	fmul f1, f2, f2
/* 804FF250  38 C0 00 00 */	li r6, 0
/* 804FF254  FC 44 00 B2 */	fmul f2, f4, f2
/* 804FF258  FC 25 00 72 */	fmul f1, f5, f1
/* 804FF25C  FC 23 08 28 */	fsub f1, f3, f1
/* 804FF260  FC 42 00 72 */	fmul f2, f2, f1
/* 804FF264  FC 22 00 B2 */	fmul f1, f2, f2
/* 804FF268  FC 44 00 B2 */	fmul f2, f4, f2
/* 804FF26C  FC 25 00 72 */	fmul f1, f5, f1
/* 804FF270  FC 23 08 28 */	fsub f1, f3, f1
/* 804FF274  FC 42 00 72 */	fmul f2, f2, f1
/* 804FF278  FC 22 00 B2 */	fmul f1, f2, f2
/* 804FF27C  FC 44 00 B2 */	fmul f2, f4, f2
/* 804FF280  FC 25 00 72 */	fmul f1, f5, f1
/* 804FF284  FC 23 08 28 */	fsub f1, f3, f1
/* 804FF288  FC 22 00 72 */	fmul f1, f2, f1
/* 804FF28C  FC 25 00 72 */	fmul f1, f5, f1
/* 804FF290  FC 20 08 18 */	frsp f1, f1
/* 804FF294  D0 21 00 08 */	stfs f1, 8(r1)
/* 804FF298  C0 21 00 08 */	lfs f1, 8(r1)
/* 804FF29C  EC 20 08 28 */	fsubs f1, f0, f1
/* 804FF2A0  4B EB C0 71 */	bl add_calc_short_angle2
lbl_804FF2A4:
/* 804FF2A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804FF2A8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804FF2AC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 804FF2B0  7C 08 03 A6 */	mtlr r0
/* 804FF2B4  38 21 00 30 */	addi r1, r1, 0x30
/* 804FF2B8  4E 80 00 20 */	blr 
