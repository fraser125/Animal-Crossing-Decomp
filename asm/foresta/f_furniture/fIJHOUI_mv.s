lbl_8062FEAC:
/* 8062FEAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8062FEB0  7C 08 02 A6 */	mflr r0
/* 8062FEB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8062FEB8  39 61 00 20 */	addi r11, r1, 0x20
/* 8062FEBC  4B A6 B0 19 */	bl func_8009AED4
/* 8062FEC0  7C 7F 1B 78 */	mr r31, r3
/* 8062FEC4  3B DF 01 34 */	addi r30, r31, 0x134
/* 8062FEC8  4B E4 3E F1 */	bl aMR_GetParentFactor
/* 8062FECC  7C 60 1B 78 */	mr r0, r3
/* 8062FED0  7F E3 FB 78 */	mr r3, r31
/* 8062FED4  7C 1D 03 78 */	mr r29, r0
/* 8062FED8  7F E4 FB 78 */	mr r4, r31
/* 8062FEDC  4B FF FE C9 */	bl fIJHOUI_Status2SetMode
/* 8062FEE0  28 1D 00 00 */	cmplwi r29, 0
/* 8062FEE4  41 82 00 10 */	beq lbl_8062FEF4
/* 8062FEE8  7F A3 EB 78 */	mr r3, r29
/* 8062FEEC  7F E4 FB 78 */	mr r4, r31
/* 8062FEF0  4B FF FE B5 */	bl fIJHOUI_Status2SetMode
lbl_8062FEF4:
/* 8062FEF4  7F C3 F3 78 */	mr r3, r30
/* 8062FEF8  4B D4 11 1D */	bl cKF_SkeletonInfo_R_play
/* 8062FEFC  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 8062FF00  C0 BF 08 34 */	lfs f5, 0x834(r31)
/* 8062FF04  C0 83 D2 78 */	lfs f4, lit_368@l(r3)  /* 0x8064D278@l */
/* 8062FF08  FC 05 20 40 */	fcmpo cr0, f5, f4
/* 8062FF0C  40 81 00 68 */	ble lbl_8062FF74
/* 8062FF10  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8062FF14  3C 00 43 30 */	lis r0, 0x4330
/* 8062FF18  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8062FF1C  3C A0 80 65 */	lis r5, lit_920@ha /* 0x8064D2B4@ha */
/* 8062FF20  80 84 00 00 */	lwz r4, 0(r4)
/* 8062FF24  3C 60 80 65 */	lis r3, lit_371@ha /* 0x8064D284@ha */
/* 8062FF28  3C C0 80 65 */	lis r6, lit_919@ha /* 0x8064D2B0@ha */
/* 8062FF2C  90 01 00 08 */	stw r0, 8(r1)
/* 8062FF30  A8 84 08 F6 */	lha r4, 0x8f6(r4)
/* 8062FF34  C8 23 D2 84 */	lfd f1, lit_371@l(r3)  /* 0x8064D284@l */
/* 8062FF38  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8062FF3C  C0 45 D2 B4 */	lfs f2, lit_920@l(r5)  /* 0x8064D2B4@l */
/* 8062FF40  90 01 00 0C */	stw r0, 0xc(r1)
/* 8062FF44  C0 66 D2 B0 */	lfs f3, lit_919@l(r6)  /* 0x8064D2B0@l */
/* 8062FF48  C8 01 00 08 */	lfd f0, 8(r1)
/* 8062FF4C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8062FF50  EC 02 00 32 */	fmuls f0, f2, f0
/* 8062FF54  EC 03 00 2A */	fadds f0, f3, f0
/* 8062FF58  EC 05 00 28 */	fsubs f0, f5, f0
/* 8062FF5C  D0 1F 08 34 */	stfs f0, 0x834(r31)
/* 8062FF60  C0 1F 08 34 */	lfs f0, 0x834(r31)
/* 8062FF64  FC 00 20 40 */	fcmpo cr0, f0, f4
/* 8062FF68  40 80 00 70 */	bge lbl_8062FFD8
/* 8062FF6C  D0 9F 08 34 */	stfs f4, 0x834(r31)
/* 8062FF70  48 00 00 68 */	b lbl_8062FFD8
lbl_8062FF74:
/* 8062FF74  40 80 00 64 */	bge lbl_8062FFD8
/* 8062FF78  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8062FF7C  3C 00 43 30 */	lis r0, 0x4330
/* 8062FF80  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8062FF84  3C A0 80 65 */	lis r5, lit_920@ha /* 0x8064D2B4@ha */
/* 8062FF88  80 84 00 00 */	lwz r4, 0(r4)
/* 8062FF8C  3C 60 80 65 */	lis r3, lit_371@ha /* 0x8064D284@ha */
/* 8062FF90  3C C0 80 65 */	lis r6, lit_919@ha /* 0x8064D2B0@ha */
/* 8062FF94  90 01 00 08 */	stw r0, 8(r1)
/* 8062FF98  A8 84 08 F6 */	lha r4, 0x8f6(r4)
/* 8062FF9C  C8 23 D2 84 */	lfd f1, lit_371@l(r3)  /* 0x8064D284@l */
/* 8062FFA0  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8062FFA4  C0 45 D2 B4 */	lfs f2, lit_920@l(r5)  /* 0x8064D2B4@l */
/* 8062FFA8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8062FFAC  C0 66 D2 B0 */	lfs f3, lit_919@l(r6)  /* 0x8064D2B0@l */
/* 8062FFB0  C8 01 00 08 */	lfd f0, 8(r1)
/* 8062FFB4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8062FFB8  EC 02 00 32 */	fmuls f0, f2, f0
/* 8062FFBC  EC 03 00 2A */	fadds f0, f3, f0
/* 8062FFC0  EC 05 00 2A */	fadds f0, f5, f0
/* 8062FFC4  D0 1F 08 34 */	stfs f0, 0x834(r31)
/* 8062FFC8  C0 1F 08 34 */	lfs f0, 0x834(r31)
/* 8062FFCC  FC 00 20 40 */	fcmpo cr0, f0, f4
/* 8062FFD0  40 81 00 08 */	ble lbl_8062FFD8
/* 8062FFD4  D0 9F 08 34 */	stfs f4, 0x834(r31)
lbl_8062FFD8:
/* 8062FFD8  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 8062FFDC  C0 1F 08 34 */	lfs f0, 0x834(r31)
/* 8062FFE0  C0 23 D2 78 */	lfs f1, lit_368@l(r3)  /* 0x8064D278@l */
/* 8062FFE4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8062FFE8  41 82 00 28 */	beq lbl_80630010
/* 8062FFEC  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8062FFF0  A8 9F 08 2E */	lha r4, 0x82e(r31)
/* 8062FFF4  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 8062FFF8  80 63 00 00 */	lwz r3, 0(r3)
/* 8062FFFC  A8 03 08 F4 */	lha r0, 0x8f4(r3)
/* 80630000  7C 60 22 14 */	add r3, r0, r4
/* 80630004  38 03 03 20 */	addi r0, r3, 0x320
/* 80630008  B0 1F 08 2E */	sth r0, 0x82e(r31)
/* 8063000C  48 00 00 0C */	b lbl_80630018
lbl_80630010:
/* 80630010  38 00 00 00 */	li r0, 0
/* 80630014  B0 1F 08 2E */	sth r0, 0x82e(r31)
lbl_80630018:
/* 80630018  A8 7F 08 2E */	lha r3, 0x82e(r31)
/* 8063001C  4B D8 AA D5 */	bl sin_s
/* 80630020  C0 1F 08 34 */	lfs f0, 0x834(r31)
/* 80630024  3C A0 80 65 */	lis r5, lit_921@ha /* 0x8064D2B8@ha */
/* 80630028  3C 80 80 65 */	lis r4, lit_922@ha /* 0x8064D2BC@ha */
/* 8063002C  3C 60 80 65 */	lis r3, lit_923@ha /* 0x8064D2C0@ha */
/* 80630030  38 C5 D2 B8 */	addi r6, r5, lit_921@l /* 0x8064D2B8@l */
/* 80630034  EC 20 00 72 */	fmuls f1, f0, f1
/* 80630038  38 A4 D2 BC */	addi r5, r4, lit_922@l /* 0x8064D2BC@l */
/* 8063003C  38 83 D2 C0 */	addi r4, r3, lit_923@l /* 0x8064D2C0@l */
/* 80630040  C0 46 00 00 */	lfs f2, 0(r6)
/* 80630044  38 7F 08 38 */	addi r3, r31, 0x838
/* 80630048  C0 65 00 00 */	lfs f3, 0(r5)
/* 8063004C  C0 84 00 00 */	lfs f4, 0(r4)
/* 80630050  4B D8 B1 61 */	bl add_calc
/* 80630054  A8 1F 00 3C */	lha r0, 0x3c(r31)
/* 80630058  39 61 00 20 */	addi r11, r1, 0x20
/* 8063005C  B0 1F 08 2A */	sth r0, 0x82a(r31)
/* 80630060  4B A6 AE C1 */	bl func_8009AF20
/* 80630064  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80630068  7C 08 03 A6 */	mtlr r0
/* 8063006C  38 21 00 20 */	addi r1, r1, 0x20
/* 80630070  4E 80 00 20 */	blr 
