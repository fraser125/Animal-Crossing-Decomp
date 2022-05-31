lbl_8060DF78:
/* 8060DF78  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8060DF7C  7C 08 02 A6 */	mflr r0
/* 8060DF80  90 01 00 74 */	stw r0, 0x74(r1)
/* 8060DF84  39 61 00 70 */	addi r11, r1, 0x70
/* 8060DF88  4B A8 CF 49 */	bl func_8009AED0
/* 8060DF8C  7C 7C 1B 78 */	mr r28, r3
/* 8060DF90  7C 9D 23 78 */	mr r29, r4
/* 8060DF94  A8 63 00 4C */	lha r3, 0x4c(r3)
/* 8060DF98  A8 9C 00 00 */	lha r4, 0(r28)
/* 8060DF9C  38 03 03 00 */	addi r0, r3, 0x300
/* 8060DFA0  B0 1C 00 4C */	sth r0, 0x4c(r28)
/* 8060DFA4  20 04 00 6E */	subfic r0, r4, 0x6e
/* 8060DFA8  7C 1E 07 34 */	extsh r30, r0
/* 8060DFAC  A8 7C 00 4E */	lha r3, 0x4e(r28)
/* 8060DFB0  38 03 01 00 */	addi r0, r3, 0x100
/* 8060DFB4  B0 1C 00 4E */	sth r0, 0x4e(r28)
/* 8060DFB8  A8 7C 00 50 */	lha r3, 0x50(r28)
/* 8060DFBC  38 03 00 80 */	addi r0, r3, 0x80
/* 8060DFC0  B0 1C 00 50 */	sth r0, 0x50(r28)
/* 8060DFC4  A8 7C 00 4E */	lha r3, 0x4e(r28)
/* 8060DFC8  4B DA CB 29 */	bl sin_s
/* 8060DFCC  3C 60 80 65 */	lis r3, lit_419@ha /* 0x8064C160@ha */
/* 8060DFD0  C0 03 C1 60 */	lfs f0, lit_419@l(r3)  /* 0x8064C160@l */
/* 8060DFD4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8060DFD8  D0 1C 00 40 */	stfs f0, 0x40(r28)
/* 8060DFDC  A8 1C 00 4E */	lha r0, 0x4e(r28)
/* 8060DFE0  7C 00 00 D0 */	neg r0, r0
/* 8060DFE4  7C 03 07 34 */	extsh r3, r0
/* 8060DFE8  4B DA CB 09 */	bl sin_s
/* 8060DFEC  3C 60 80 65 */	lis r3, lit_420@ha /* 0x8064C164@ha */
/* 8060DFF0  3C 80 80 65 */	lis r4, lit_421@ha /* 0x8064C16C@ha */
/* 8060DFF4  38 A3 C1 64 */	addi r5, r3, lit_420@l /* 0x8064C164@l */
/* 8060DFF8  C8 C4 C1 6C */	lfd f6, lit_421@l(r4)  /* 0x8064C16C@l */
/* 8060DFFC  C8 E5 00 00 */	lfd f7, 0(r5)
/* 8060E000  3C 60 80 65 */	lis r3, lit_422@ha /* 0x8064C174@ha */
/* 8060E004  38 C3 C1 74 */	addi r6, r3, lit_422@l /* 0x8064C174@l */
/* 8060E008  FC 60 38 34 */	frsqrte f3, f7
/* 8060E00C  3C 60 80 65 */	lis r3, lit_419@ha /* 0x8064C160@ha */
/* 8060E010  38 83 C1 60 */	addi r4, r3, lit_419@l /* 0x8064C160@l */
/* 8060E014  C8 A6 00 00 */	lfd f5, 0(r6)
/* 8060E018  C0 44 00 00 */	lfs f2, 0(r4)
/* 8060E01C  3C 60 80 65 */	lis r3, lit_424@ha /* 0x8064C180@ha */
/* 8060E020  FC 03 00 F2 */	fmul f0, f3, f3
/* 8060E024  38 A3 C1 80 */	addi r5, r3, lit_424@l /* 0x8064C180@l */
/* 8060E028  3C 80 80 65 */	lis r4, lit_423@ha /* 0x8064C17C@ha */
/* 8060E02C  3C 60 80 65 */	lis r3, lit_425@ha /* 0x8064C184@ha */
/* 8060E030  EC 42 00 72 */	fmuls f2, f2, f1
/* 8060E034  38 C4 C1 7C */	addi r6, r4, lit_423@l /* 0x8064C17C@l */
/* 8060E038  FC 27 00 32 */	fmul f1, f7, f0
/* 8060E03C  D0 5C 00 48 */	stfs f2, 0x48(r28)
/* 8060E040  38 83 C1 84 */	addi r4, r3, lit_425@l /* 0x8064C184@l */
/* 8060E044  C0 05 00 00 */	lfs f0, 0(r5)
/* 8060E048  FC 86 00 F2 */	fmul f4, f6, f3
/* 8060E04C  C0 64 00 00 */	lfs f3, 0(r4)
/* 8060E050  FC 45 08 28 */	fsub f2, f5, f1
/* 8060E054  C0 26 00 00 */	lfs f1, 0(r6)
/* 8060E058  38 7C 00 34 */	addi r3, r28, 0x34
/* 8060E05C  FC 84 00 B2 */	fmul f4, f4, f2
/* 8060E060  FC 44 01 32 */	fmul f2, f4, f4
/* 8060E064  FC 86 01 32 */	fmul f4, f6, f4
/* 8060E068  FC 47 00 B2 */	fmul f2, f7, f2
/* 8060E06C  FC 45 10 28 */	fsub f2, f5, f2
/* 8060E070  FC 84 00 B2 */	fmul f4, f4, f2
/* 8060E074  FC 44 01 32 */	fmul f2, f4, f4
/* 8060E078  FC 86 01 32 */	fmul f4, f6, f4
/* 8060E07C  FC 47 00 B2 */	fmul f2, f7, f2
/* 8060E080  FC 45 10 28 */	fsub f2, f5, f2
/* 8060E084  FC 44 00 B2 */	fmul f2, f4, f2
/* 8060E088  FC 47 00 B2 */	fmul f2, f7, f2
/* 8060E08C  FC 40 10 18 */	frsp f2, f2
/* 8060E090  D0 41 00 08 */	stfs f2, 8(r1)
/* 8060E094  C0 41 00 08 */	lfs f2, 8(r1)
/* 8060E098  EC 40 10 28 */	fsubs f2, f0, f2
/* 8060E09C  4B DA D1 F9 */	bl add_calc2
/* 8060E0A0  C0 1C 00 34 */	lfs f0, 0x34(r28)
/* 8060E0A4  2C 1E 00 0A */	cmpwi r30, 0xa
/* 8060E0A8  D0 1C 00 38 */	stfs f0, 0x38(r28)
/* 8060E0AC  C0 1C 00 34 */	lfs f0, 0x34(r28)
/* 8060E0B0  D0 1C 00 3C */	stfs f0, 0x3c(r28)
/* 8060E0B4  40 82 01 3C */	bne lbl_8060E1F0
/* 8060E0B8  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 8060E0BC  3C 60 80 6D */	lis r3, botan2_light@ha /* 0x806D2678@ha */
/* 8060E0C0  80 DC 00 14 */	lwz r6, 0x14(r28)
/* 8060E0C4  38 83 26 78 */	addi r4, r3, botan2_light@l /* 0x806D2678@l */
/* 8060E0C8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8060E0CC  3C A0 80 65 */	lis r5, lit_419@ha /* 0x8064C160@ha */
/* 8060E0D0  90 01 00 18 */	stw r0, 0x18(r1)
/* 8060E0D4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8060E0D8  80 04 00 00 */	lwz r0, 0(r4)
/* 8060E0DC  3F E3 00 02 */	addis r31, r3, 2
/* 8060E0E0  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 8060E0E4  3C 80 80 65 */	lis r4, lit_385@ha /* 0x8064C158@ha */
/* 8060E0E8  80 FF 60 9C */	lwz r7, 0x609c(r31)
/* 8060E0EC  3C 60 80 65 */	lis r3, lit_426@ha /* 0x8064C188@ha */
/* 8060E0F0  80 DC 00 18 */	lwz r6, 0x18(r28)
/* 8060E0F4  39 45 C1 60 */	addi r10, r5, lit_419@l /* 0x8064C160@l */
/* 8060E0F8  39 24 C1 58 */	addi r9, r4, lit_385@l /* 0x8064C158@l */
/* 8060E0FC  39 03 C1 88 */	addi r8, r3, lit_426@l /* 0x8064C188@l */
/* 8060E100  90 C1 00 20 */	stw r6, 0x20(r1)
/* 8060E104  7F A6 EB 78 */	mr r6, r29
/* 8060E108  38 61 00 14 */	addi r3, r1, 0x14
/* 8060E10C  38 81 00 10 */	addi r4, r1, 0x10
/* 8060E110  90 01 00 10 */	stw r0, 0x10(r1)
/* 8060E114  38 A1 00 18 */	addi r5, r1, 0x18
/* 8060E118  C0 2A 00 00 */	lfs f1, 0(r10)
/* 8060E11C  81 87 00 34 */	lwz r12, 0x34(r7)
/* 8060E120  C0 49 00 00 */	lfs f2, 0(r9)
/* 8060E124  C0 68 00 00 */	lfs f3, 0(r8)
/* 8060E128  7D 89 03 A6 */	mtctr r12
/* 8060E12C  4E 80 04 21 */	bctrl 
/* 8060E130  A8 1C 00 06 */	lha r0, 6(r28)
/* 8060E134  2C 00 00 00 */	cmpwi r0, 0
/* 8060E138  41 82 00 90 */	beq lbl_8060E1C8
/* 8060E13C  88 C1 00 14 */	lbz r6, 0x14(r1)
/* 8060E140  3C 80 43 30 */	lis r4, 0x4330
/* 8060E144  88 61 00 15 */	lbz r3, 0x15(r1)
/* 8060E148  3C A0 80 65 */	lis r5, lit_430@ha /* 0x8064C194@ha */
/* 8060E14C  90 C1 00 34 */	stw r6, 0x34(r1)
/* 8060E150  3C C0 80 65 */	lis r6, lit_427@ha /* 0x8064C18C@ha */
/* 8060E154  88 01 00 16 */	lbz r0, 0x16(r1)
/* 8060E158  90 81 00 30 */	stw r4, 0x30(r1)
/* 8060E15C  C8 65 C1 94 */	lfd f3, lit_430@l(r5)  /* 0x8064C194@l */
/* 8060E160  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8060E164  90 61 00 44 */	stw r3, 0x44(r1)
/* 8060E168  EC 20 18 28 */	fsubs f1, f0, f3
/* 8060E16C  C0 86 C1 8C */	lfs f4, lit_427@l(r6)  /* 0x8064C18C@l */
/* 8060E170  90 81 00 40 */	stw r4, 0x40(r1)
/* 8060E174  EC 44 00 72 */	fmuls f2, f4, f1
/* 8060E178  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 8060E17C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8060E180  EC 20 18 28 */	fsubs f1, f0, f3
/* 8060E184  90 81 00 50 */	stw r4, 0x50(r1)
/* 8060E188  FC 40 10 1E */	fctiwz f2, f2
/* 8060E18C  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 8060E190  EC 24 00 72 */	fmuls f1, f4, f1
/* 8060E194  D8 41 00 38 */	stfd f2, 0x38(r1)
/* 8060E198  EC 00 18 28 */	fsubs f0, f0, f3
/* 8060E19C  FC 20 08 1E */	fctiwz f1, f1
/* 8060E1A0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8060E1A4  EC 04 00 32 */	fmuls f0, f4, f0
/* 8060E1A8  98 01 00 14 */	stb r0, 0x14(r1)
/* 8060E1AC  D8 21 00 48 */	stfd f1, 0x48(r1)
/* 8060E1B0  FC 00 00 1E */	fctiwz f0, f0
/* 8060E1B4  80 61 00 4C */	lwz r3, 0x4c(r1)
/* 8060E1B8  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 8060E1BC  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8060E1C0  98 61 00 15 */	stb r3, 0x15(r1)
/* 8060E1C4  98 01 00 16 */	stb r0, 0x16(r1)
lbl_8060E1C8:
/* 8060E1C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8060E1CC  38 61 00 0C */	addi r3, r1, 0xc
/* 8060E1D0  80 FF 60 9C */	lwz r7, 0x609c(r31)
/* 8060E1D4  38 80 00 14 */	li r4, 0x14
/* 8060E1D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8060E1DC  38 A0 00 32 */	li r5, 0x32
/* 8060E1E0  38 C0 00 01 */	li r6, 1
/* 8060E1E4  81 87 00 30 */	lwz r12, 0x30(r7)
/* 8060E1E8  7D 89 03 A6 */	mtctr r12
/* 8060E1EC  4E 80 04 21 */	bctrl 
lbl_8060E1F0:
/* 8060E1F0  2C 1E 00 48 */	cmpwi r30, 0x48
/* 8060E1F4  40 82 00 3C */	bne lbl_8060E230
/* 8060E1F8  80 BC 00 10 */	lwz r5, 0x10(r28)
/* 8060E1FC  3C 60 80 65 */	lis r3, lit_428@ha /* 0x8064C190@ha */
/* 8060E200  80 1C 00 14 */	lwz r0, 0x14(r28)
/* 8060E204  38 81 00 24 */	addi r4, r1, 0x24
/* 8060E208  C0 03 C1 90 */	lfs f0, lit_428@l(r3)  /* 0x8064C190@l */
/* 8060E20C  38 60 21 10 */	li r3, 0x2110
/* 8060E210  90 01 00 28 */	stw r0, 0x28(r1)
/* 8060E214  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 8060E218  90 A1 00 24 */	stw r5, 0x24(r1)
/* 8060E21C  EC 01 00 2A */	fadds f0, f1, f0
/* 8060E220  80 1C 00 18 */	lwz r0, 0x18(r28)
/* 8060E224  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8060E228  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8060E22C  48 01 FD 7D */	bl sAdo_OngenTrgStart
lbl_8060E230:
/* 8060E230  39 61 00 70 */	addi r11, r1, 0x70
/* 8060E234  4B A8 CC E9 */	bl func_8009AF1C
/* 8060E238  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8060E23C  7C 08 03 A6 */	mtlr r0
/* 8060E240  38 21 00 70 */	addi r1, r1, 0x70
/* 8060E244  4E 80 00 20 */	blr 
