lbl_8045CE60:
/* 8045CE60  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8045CE64  7C 08 02 A6 */	mflr r0
/* 8045CE68  90 01 00 54 */	stw r0, 0x54(r1)
/* 8045CE6C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8045CE70  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8045CE74  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8045CE78  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 8045CE7C  39 61 00 30 */	addi r11, r1, 0x30
/* 8045CE80  4B C3 E0 55 */	bl func_8009AED4
/* 8045CE84  7C 7D 1B 78 */	mr r29, r3
/* 8045CE88  7C 9E 23 78 */	mr r30, r4
/* 8045CE8C  80 03 00 00 */	lwz r0, 0(r3)
/* 8045CE90  2C 00 00 03 */	cmpwi r0, 3
/* 8045CE94  41 82 00 1C */	beq lbl_8045CEB0
/* 8045CE98  A8 9D 00 74 */	lha r4, 0x74(r29)
/* 8045CE9C  3C 60 80 68 */	lis r3, flower_pos@ha /* 0x806869AC@ha */
/* 8045CEA0  38 03 69 AC */	addi r0, r3, flower_pos@l /* 0x806869AC@l */
/* 8045CEA4  1C 64 00 0C */	mulli r3, r4, 0xc
/* 8045CEA8  7F E0 1A 14 */	add r31, r0, r3
/* 8045CEAC  48 00 00 10 */	b lbl_8045CEBC
lbl_8045CEB0:
/* 8045CEB0  3C 60 80 68 */	lis r3, ohmurasaki_tree_pos@ha /* 0x80686A0C@ha */
/* 8045CEB4  38 03 6A 0C */	addi r0, r3, ohmurasaki_tree_pos@l /* 0x80686A0C@l */
/* 8045CEB8  7C 1F 03 78 */	mr r31, r0
lbl_8045CEBC:
/* 8045CEBC  7F E4 FB 78 */	mr r4, r31
/* 8045CEC0  38 7D 00 1C */	addi r3, r29, 0x1c
/* 8045CEC4  4B F5 E1 C9 */	bl search_position_distanceXZ
/* 8045CEC8  A8 9D 00 6E */	lha r4, 0x6e(r29)
/* 8045CECC  FF E0 08 90 */	fmr f31, f1
/* 8045CED0  C0 3D 00 20 */	lfs f1, 0x20(r29)
/* 8045CED4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8045CED8  38 64 FF FF */	addi r3, r4, -1
/* 8045CEDC  7C 80 07 35 */	extsh. r0, r4
/* 8045CEE0  EF C1 00 28 */	fsubs f30, f1, f0
/* 8045CEE4  B0 7D 00 6E */	sth r3, 0x6e(r29)
/* 8045CEE8  40 80 00 D4 */	bge lbl_8045CFBC
/* 8045CEEC  7F E4 FB 78 */	mr r4, r31
/* 8045CEF0  38 7D 00 1C */	addi r3, r29, 0x1c
/* 8045CEF4  4B F5 E2 3D */	bl search_position_angleY
/* 8045CEF8  B0 7D 00 72 */	sth r3, 0x72(r29)
/* 8045CEFC  4B BF FE 31 */	bl fqrand2
/* 8045CF00  3C 80 80 64 */	lis r4, lit_580@ha /* 0x80644618@ha */
/* 8045CF04  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806445E4@ha */
/* 8045CF08  C0 44 46 18 */	lfs f2, lit_580@l(r4)  /* 0x80644618@l */
/* 8045CF0C  C0 03 45 E4 */	lfs f0, lit_505@l(r3)  /* 0x806445E4@l */
/* 8045CF10  EC 22 00 72 */	fmuls f1, f2, f1
/* 8045CF14  A8 1D 00 72 */	lha r0, 0x72(r29)
/* 8045CF18  EC 00 00 72 */	fmuls f0, f0, f1
/* 8045CF1C  FC 00 00 1E */	fctiwz f0, f0
/* 8045CF20  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8045CF24  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8045CF28  7C 00 1A 14 */	add r0, r0, r3
/* 8045CF2C  B0 1D 00 72 */	sth r0, 0x72(r29)
/* 8045CF30  4B BF FD C5 */	bl fqrand
/* 8045CF34  3C 80 80 64 */	lis r4, lit_503@ha /* 0x806445DC@ha */
/* 8045CF38  3C 60 80 64 */	lis r3, lit_502@ha /* 0x806445D8@ha */
/* 8045CF3C  C0 44 45 DC */	lfs f2, lit_503@l(r4)  /* 0x806445DC@l */
/* 8045CF40  C0 03 45 D8 */	lfs f0, lit_502@l(r3)  /* 0x806445D8@l */
/* 8045CF44  EC 22 00 72 */	fmuls f1, f2, f1
/* 8045CF48  EC 00 08 2A */	fadds f0, f0, f1
/* 8045CF4C  FC 00 00 1E */	fctiwz f0, f0
/* 8045CF50  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8045CF54  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8045CF58  B0 1D 00 6E */	sth r0, 0x6e(r29)
/* 8045CF5C  80 1D 00 00 */	lwz r0, 0(r29)
/* 8045CF60  2C 00 00 03 */	cmpwi r0, 3
/* 8045CF64  40 82 00 58 */	bne lbl_8045CFBC
/* 8045CF68  A8 1D 00 72 */	lha r0, 0x72(r29)
/* 8045CF6C  2C 00 40 00 */	cmpwi r0, 0x4000
/* 8045CF70  40 80 00 0C */	bge lbl_8045CF7C
/* 8045CF74  2C 00 C0 00 */	cmpwi r0, -16384
/* 8045CF78  41 81 00 14 */	bgt lbl_8045CF8C
lbl_8045CF7C:
/* 8045CF7C  C0 3D 00 24 */	lfs f1, 0x24(r29)
/* 8045CF80  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8045CF84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8045CF88  40 80 00 34 */	bge lbl_8045CFBC
lbl_8045CF8C:
/* 8045CF8C  7C 00 07 35 */	extsh. r0, r0
/* 8045CF90  40 81 00 14 */	ble lbl_8045CFA4
/* 8045CF94  A8 7D 00 72 */	lha r3, 0x72(r29)
/* 8045CF98  38 03 15 55 */	addi r0, r3, 0x1555
/* 8045CF9C  B0 1D 00 72 */	sth r0, 0x72(r29)
/* 8045CFA0  48 00 00 10 */	b lbl_8045CFB0
lbl_8045CFA4:
/* 8045CFA4  A8 7D 00 72 */	lha r3, 0x72(r29)
/* 8045CFA8  38 03 EA AB */	addi r0, r3, -5461
/* 8045CFAC  B0 1D 00 72 */	sth r0, 0x72(r29)
lbl_8045CFB0:
/* 8045CFB0  A8 7D 00 6E */	lha r3, 0x6e(r29)
/* 8045CFB4  38 03 00 0A */	addi r0, r3, 0xa
/* 8045CFB8  B0 1D 00 6E */	sth r0, 0x6e(r29)
lbl_8045CFBC:
/* 8045CFBC  C0 3D 00 20 */	lfs f1, 0x20(r29)
/* 8045CFC0  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 8045CFC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8045CFC8  40 80 00 24 */	bge lbl_8045CFEC
/* 8045CFCC  4B BF FD 29 */	bl fqrand
/* 8045CFD0  3C 80 80 64 */	lis r4, lit_507@ha /* 0x806445EC@ha */
/* 8045CFD4  3C 60 80 64 */	lis r3, lit_506@ha /* 0x806445E8@ha */
/* 8045CFD8  C0 44 45 EC */	lfs f2, lit_507@l(r4)  /* 0x806445EC@l */
/* 8045CFDC  C0 03 45 E8 */	lfs f0, lit_506@l(r3)  /* 0x806445E8@l */
/* 8045CFE0  EC 22 08 2A */	fadds f1, f2, f1
/* 8045CFE4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8045CFE8  D0 1D 00 38 */	stfs f0, 0x38(r29)
lbl_8045CFEC:
/* 8045CFEC  3C 60 80 64 */	lis r3, lit_581@ha /* 0x8064461C@ha */
/* 8045CFF0  C0 03 46 1C */	lfs f0, lit_581@l(r3)  /* 0x8064461C@l */
/* 8045CFF4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8045CFF8  41 80 00 30 */	blt lbl_8045D028
/* 8045CFFC  80 1D 00 00 */	lwz r0, 0(r29)
/* 8045D000  2C 00 00 03 */	cmpwi r0, 3
/* 8045D004  40 82 01 E8 */	bne lbl_8045D1EC
/* 8045D008  3C 60 80 64 */	lis r3, lit_582@ha /* 0x80644620@ha */
/* 8045D00C  C0 03 46 20 */	lfs f0, lit_582@l(r3)  /* 0x80644620@l */
/* 8045D010  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8045D014  40 80 01 D8 */	bge lbl_8045D1EC
/* 8045D018  C0 3D 00 24 */	lfs f1, 0x24(r29)
/* 8045D01C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8045D020  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8045D024  40 81 01 C8 */	ble lbl_8045D1EC
lbl_8045D028:
/* 8045D028  3C 60 80 64 */	lis r3, lit_583@ha /* 0x80644624@ha */
/* 8045D02C  3C 80 80 64 */	lis r4, lit_509@ha /* 0x806445FC@ha */
/* 8045D030  38 A3 46 24 */	addi r5, r3, lit_583@l /* 0x80644624@l */
/* 8045D034  C8 E4 45 FC */	lfd f7, lit_509@l(r4)  /* 0x806445FC@l */
/* 8045D038  C9 05 00 00 */	lfd f8, 0(r5)
/* 8045D03C  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 8045D040  39 03 46 04 */	addi r8, r3, lit_510@l /* 0x80644604@l */
/* 8045D044  3C A0 80 64 */	lis r5, lit_584@ha /* 0x8064462C@ha */
/* 8045D048  FC 20 40 34 */	frsqrte f1, f8
/* 8045D04C  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8045D050  38 C3 46 0C */	addi r6, r3, lit_511@l /* 0x8064460C@l */
/* 8045D054  C8 C8 00 00 */	lfd f6, 0(r8)
/* 8045D058  3C 80 80 64 */	lis r4, lit_512@ha /* 0x80644610@ha */
/* 8045D05C  38 E5 46 2C */	addi r7, r5, lit_584@l /* 0x8064462C@l */
/* 8045D060  FC 01 00 72 */	fmul f0, f1, f1
/* 8045D064  38 A4 46 10 */	addi r5, r4, lit_512@l /* 0x80644610@l */
/* 8045D068  3C 60 80 64 */	lis r3, lit_585@ha /* 0x80644630@ha */
/* 8045D06C  C0 65 00 00 */	lfs f3, 0(r5)
/* 8045D070  38 83 46 30 */	addi r4, r3, lit_585@l /* 0x80644630@l */
/* 8045D074  FC A7 00 72 */	fmul f5, f7, f1
/* 8045D078  FC 48 00 32 */	fmul f2, f8, f0
/* 8045D07C  C0 06 00 00 */	lfs f0, 0(r6)
/* 8045D080  C0 27 00 00 */	lfs f1, 0(r7)
/* 8045D084  38 7D 00 40 */	addi r3, r29, 0x40
/* 8045D088  C0 84 00 00 */	lfs f4, 0(r4)
/* 8045D08C  FC 46 10 28 */	fsub f2, f6, f2
/* 8045D090  FC A5 00 B2 */	fmul f5, f5, f2
/* 8045D094  FC 45 01 72 */	fmul f2, f5, f5
/* 8045D098  FC A7 01 72 */	fmul f5, f7, f5
/* 8045D09C  FC 48 00 B2 */	fmul f2, f8, f2
/* 8045D0A0  FC 46 10 28 */	fsub f2, f6, f2
/* 8045D0A4  FC A5 00 B2 */	fmul f5, f5, f2
/* 8045D0A8  FC 45 01 72 */	fmul f2, f5, f5
/* 8045D0AC  FC A7 01 72 */	fmul f5, f7, f5
/* 8045D0B0  FC 48 00 B2 */	fmul f2, f8, f2
/* 8045D0B4  FC 46 10 28 */	fsub f2, f6, f2
/* 8045D0B8  FC 45 00 B2 */	fmul f2, f5, f2
/* 8045D0BC  FC 48 00 B2 */	fmul f2, f8, f2
/* 8045D0C0  FC 40 10 18 */	frsp f2, f2
/* 8045D0C4  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8045D0C8  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 8045D0CC  EC 40 10 28 */	fsubs f2, f0, f2
/* 8045D0D0  4B F5 E0 E1 */	bl add_calc
/* 8045D0D4  3C 60 80 64 */	lis r3, lit_509@ha /* 0x806445FC@ha */
/* 8045D0D8  3C 80 80 64 */	lis r4, lit_510@ha /* 0x80644604@ha */
/* 8045D0DC  38 A3 45 FC */	addi r5, r3, lit_509@l /* 0x806445FC@l */
/* 8045D0E0  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8045D0E4  C9 05 00 00 */	lfd f8, 0(r5)
/* 8045D0E8  38 E4 46 04 */	addi r7, r4, lit_510@l /* 0x80644604@l */
/* 8045D0EC  38 C3 46 0C */	addi r6, r3, lit_511@l /* 0x8064460C@l */
/* 8045D0F0  3C 80 80 64 */	lis r4, lit_506@ha /* 0x806445E8@ha */
/* 8045D0F4  FC 60 40 34 */	frsqrte f3, f8
/* 8045D0F8  C8 E5 00 00 */	lfd f7, 0(r5)
/* 8045D0FC  3C 60 80 64 */	lis r3, lit_512@ha /* 0x80644610@ha */
/* 8045D100  38 A4 45 E8 */	addi r5, r4, lit_506@l /* 0x806445E8@l */
/* 8045D104  38 83 46 10 */	addi r4, r3, lit_512@l /* 0x80644610@l */
/* 8045D108  C8 C7 00 00 */	lfd f6, 0(r7)
/* 8045D10C  FC 43 00 F2 */	fmul f2, f3, f3
/* 8045D110  C0 06 00 00 */	lfs f0, 0(r6)
/* 8045D114  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8045D118  38 7D 00 58 */	addi r3, r29, 0x58
/* 8045D11C  FC A7 00 F2 */	fmul f5, f7, f3
/* 8045D120  C0 65 00 00 */	lfs f3, 0(r5)
/* 8045D124  FC 48 00 B2 */	fmul f2, f8, f2
/* 8045D128  C0 84 00 00 */	lfs f4, 0(r4)
/* 8045D12C  FC 46 10 28 */	fsub f2, f6, f2
/* 8045D130  FC A5 00 B2 */	fmul f5, f5, f2
/* 8045D134  FC 45 01 72 */	fmul f2, f5, f5
/* 8045D138  FC A7 01 72 */	fmul f5, f7, f5
/* 8045D13C  FC 48 00 B2 */	fmul f2, f8, f2
/* 8045D140  FC 46 10 28 */	fsub f2, f6, f2
/* 8045D144  FC A5 00 B2 */	fmul f5, f5, f2
/* 8045D148  FC 45 01 72 */	fmul f2, f5, f5
/* 8045D14C  FC A7 01 72 */	fmul f5, f7, f5
/* 8045D150  FC 48 00 B2 */	fmul f2, f8, f2
/* 8045D154  FC 46 10 28 */	fsub f2, f6, f2
/* 8045D158  FC 45 00 B2 */	fmul f2, f5, f2
/* 8045D15C  FC 48 00 B2 */	fmul f2, f8, f2
/* 8045D160  FC 40 10 18 */	frsp f2, f2
/* 8045D164  D0 41 00 08 */	stfs f2, 8(r1)
/* 8045D168  C0 41 00 08 */	lfs f2, 8(r1)
/* 8045D16C  EC 40 10 28 */	fsubs f2, f0, f2
/* 8045D170  4B F5 E0 41 */	bl add_calc
/* 8045D174  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8045D178  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8045D17C  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8045D180  4C 41 13 82 */	cror 2, 1, 2
/* 8045D184  40 82 00 0C */	bne lbl_8045D190
/* 8045D188  FC 00 F0 90 */	fmr f0, f30
/* 8045D18C  48 00 00 08 */	b lbl_8045D194
lbl_8045D190:
/* 8045D190  FC 00 F0 50 */	fneg f0, f30
lbl_8045D194:
/* 8045D194  3C 60 80 64 */	lis r3, lit_586@ha /* 0x80644634@ha */
/* 8045D198  C0 43 46 34 */	lfs f2, lit_586@l(r3)  /* 0x80644634@l */
/* 8045D19C  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8045D1A0  40 80 00 4C */	bge lbl_8045D1EC
/* 8045D1A4  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8045D1A8  3C 00 43 30 */	lis r0, 0x4330
/* 8045D1AC  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8045D1B0  90 01 00 18 */	stw r0, 0x18(r1)
/* 8045D1B4  80 84 00 00 */	lwz r4, 0(r4)
/* 8045D1B8  3C 60 80 64 */	lis r3, lit_589@ha /* 0x8064463C@ha */
/* 8045D1BC  C8 23 46 3C */	lfd f1, lit_589@l(r3)  /* 0x8064463C@l */
/* 8045D1C0  A8 04 1B 62 */	lha r0, 0x1b62(r4)
/* 8045D1C4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8045D1C8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8045D1CC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8045D1D0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8045D1D4  EC 02 00 2A */	fadds f0, f2, f0
/* 8045D1D8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8045D1DC  40 80 00 10 */	bge lbl_8045D1EC
/* 8045D1E0  7F A3 EB 78 */	mr r3, r29
/* 8045D1E4  7F C4 F3 78 */	mr r4, r30
/* 8045D1E8  48 00 00 2D */	bl minsect_chou_flower_process_init
lbl_8045D1EC:
/* 8045D1EC  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8045D1F0  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8045D1F4  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 8045D1F8  39 61 00 30 */	addi r11, r1, 0x30
/* 8045D1FC  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8045D200  4B C3 DD 21 */	bl func_8009AF20
/* 8045D204  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8045D208  7C 08 03 A6 */	mtlr r0
/* 8045D20C  38 21 00 50 */	addi r1, r1, 0x50
/* 8045D210  4E 80 00 20 */	blr 
