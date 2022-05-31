lbl_8042CE48:
/* 8042CE48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042CE4C  3C C0 81 16 */	lis r6, debug_mode@ha /* 0x81166138@ha */
/* 8042CE50  38 E6 61 38 */	addi r7, r6, debug_mode@l /* 0x81166138@l */
/* 8042CE54  3C A0 43 30 */	lis r5, 0x4330
/* 8042CE58  81 47 00 00 */	lwz r10, 0(r7)
/* 8042CE5C  3C C0 80 64 */	lis r6, lit_669@ha /* 0x806440DC@ha */
/* 8042CE60  3D 00 80 64 */	lis r8, lit_719@ha /* 0x806440EC@ha */
/* 8042CE64  C8 66 40 DC */	lfd f3, lit_669@l(r6)  /* 0x806440DC@l */
/* 8042CE68  A8 0A 09 00 */	lha r0, 0x900(r10)
/* 8042CE6C  39 28 40 EC */	addi r9, r8, lit_719@l /* 0x806440EC@l */
/* 8042CE70  3C E0 80 64 */	lis r7, lit_477@ha /* 0x806440A8@ha */
/* 8042CE74  90 A1 00 08 */	stw r5, 8(r1)
/* 8042CE78  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8042CE7C  C0 A3 00 00 */	lfs f5, 0(r3)
/* 8042CE80  90 01 00 0C */	stw r0, 0xc(r1)
/* 8042CE84  39 07 40 A8 */	addi r8, r7, lit_477@l /* 0x806440A8@l */
/* 8042CE88  C0 29 00 00 */	lfs f1, 0(r9)
/* 8042CE8C  3C E0 80 64 */	lis r7, lit_720@ha /* 0x806440F4@ha */
/* 8042CE90  C8 01 00 08 */	lfd f0, 8(r1)
/* 8042CE94  54 86 04 3E */	clrlwi r6, r4, 0x10
/* 8042CE98  C0 83 00 08 */	lfs f4, 8(r3)
/* 8042CE9C  EC A5 08 28 */	fsubs f5, f5, f1
/* 8042CEA0  C0 48 00 00 */	lfs f2, 0(r8)
/* 8042CEA4  FC 00 18 28 */	fsub f0, f0, f3
/* 8042CEA8  C8 27 40 F4 */	lfd f1, lit_720@l(r7)  /* 0x806440F4@l */
/* 8042CEAC  EC 84 10 28 */	fsubs f4, f4, f2
/* 8042CEB0  FC 01 00 2A */	fadd f0, f1, f0
/* 8042CEB4  EC 45 01 72 */	fmuls f2, f5, f5
/* 8042CEB8  EC 24 01 32 */	fmuls f1, f4, f4
/* 8042CEBC  FC 00 00 32 */	fmul f0, f0, f0
/* 8042CEC0  EC 22 08 2A */	fadds f1, f2, f1
/* 8042CEC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8042CEC8  40 80 00 6C */	bge lbl_8042CF34
/* 8042CECC  A8 0A 08 FE */	lha r0, 0x8fe(r10)
/* 8042CED0  3C 60 80 64 */	lis r3, lit_722@ha /* 0x80644100@ha */
/* 8042CED4  3C 80 80 64 */	lis r4, lit_721@ha /* 0x806440FC@ha */
/* 8042CED8  90 A1 00 08 */	stw r5, 8(r1)
/* 8042CEDC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8042CEE0  C0 23 41 00 */	lfs f1, lit_722@l(r3)  /* 0x80644100@l */
/* 8042CEE4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8042CEE8  C0 44 40 FC */	lfs f2, lit_721@l(r4)  /* 0x806440FC@l */
/* 8042CEEC  C8 01 00 08 */	lfd f0, 8(r1)
/* 8042CEF0  EC 00 18 28 */	fsubs f0, f0, f3
/* 8042CEF4  EC 01 00 2A */	fadds f0, f1, f0
/* 8042CEF8  EC 02 00 32 */	fmuls f0, f2, f0
/* 8042CEFC  FC 00 00 1E */	fctiwz f0, f0
/* 8042CF00  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8042CF04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042CF08  7C 03 07 34 */	extsh r3, r0
/* 8042CF0C  20 03 60 00 */	subfic r0, r3, 0x6000
/* 8042CF10  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8042CF14  7C 06 00 40 */	cmplw r6, r0
/* 8042CF18  40 81 00 1C */	ble lbl_8042CF34
/* 8042CF1C  38 03 60 00 */	addi r0, r3, 0x6000
/* 8042CF20  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8042CF24  7C 06 00 40 */	cmplw r6, r0
/* 8042CF28  40 80 00 0C */	bge lbl_8042CF34
/* 8042CF2C  38 60 00 01 */	li r3, 1
/* 8042CF30  48 00 00 08 */	b lbl_8042CF38
lbl_8042CF34:
/* 8042CF34  38 60 00 00 */	li r3, 0
lbl_8042CF38:
/* 8042CF38  38 21 00 20 */	addi r1, r1, 0x20
/* 8042CF3C  4E 80 00 20 */	blr 
