lbl_8060E9D8:
/* 8060E9D8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8060E9DC  7C 08 02 A6 */	mflr r0
/* 8060E9E0  90 01 00 74 */	stw r0, 0x74(r1)
/* 8060E9E4  39 61 00 70 */	addi r11, r1, 0x70
/* 8060E9E8  4B A8 C4 E9 */	bl func_8009AED0
/* 8060E9EC  7C 7C 1B 78 */	mr r28, r3
/* 8060E9F0  7C 9D 23 78 */	mr r29, r4
/* 8060E9F4  A8 63 00 4C */	lha r3, 0x4c(r3)
/* 8060E9F8  A8 9C 00 00 */	lha r4, 0(r28)
/* 8060E9FC  38 03 03 00 */	addi r0, r3, 0x300
/* 8060EA00  B0 1C 00 4C */	sth r0, 0x4c(r28)
/* 8060EA04  20 04 00 50 */	subfic r0, r4, 0x50
/* 8060EA08  7C 1E 07 34 */	extsh r30, r0
/* 8060EA0C  A8 7C 00 4E */	lha r3, 0x4e(r28)
/* 8060EA10  38 03 01 00 */	addi r0, r3, 0x100
/* 8060EA14  B0 1C 00 4E */	sth r0, 0x4e(r28)
/* 8060EA18  A8 7C 00 50 */	lha r3, 0x50(r28)
/* 8060EA1C  38 03 00 80 */	addi r0, r3, 0x80
/* 8060EA20  B0 1C 00 50 */	sth r0, 0x50(r28)
/* 8060EA24  A8 7C 00 4E */	lha r3, 0x4e(r28)
/* 8060EA28  4B DA C0 C9 */	bl sin_s
/* 8060EA2C  3C 60 80 65 */	lis r3, lit_419@ha /* 0x8064C1E0@ha */
/* 8060EA30  C0 03 C1 E0 */	lfs f0, lit_419@l(r3)  /* 0x8064C1E0@l */
/* 8060EA34  EC 00 00 72 */	fmuls f0, f0, f1
/* 8060EA38  D0 1C 00 40 */	stfs f0, 0x40(r28)
/* 8060EA3C  A8 1C 00 4E */	lha r0, 0x4e(r28)
/* 8060EA40  7C 00 00 D0 */	neg r0, r0
/* 8060EA44  7C 03 07 34 */	extsh r3, r0
/* 8060EA48  4B DA C0 A9 */	bl sin_s
/* 8060EA4C  3C 60 80 65 */	lis r3, lit_420@ha /* 0x8064C1E4@ha */
/* 8060EA50  3C 80 80 65 */	lis r4, lit_421@ha /* 0x8064C1EC@ha */
/* 8060EA54  38 A3 C1 E4 */	addi r5, r3, lit_420@l /* 0x8064C1E4@l */
/* 8060EA58  C8 C4 C1 EC */	lfd f6, lit_421@l(r4)  /* 0x8064C1EC@l */
/* 8060EA5C  C8 E5 00 00 */	lfd f7, 0(r5)
/* 8060EA60  3C 60 80 65 */	lis r3, lit_422@ha /* 0x8064C1F4@ha */
/* 8060EA64  38 C3 C1 F4 */	addi r6, r3, lit_422@l /* 0x8064C1F4@l */
/* 8060EA68  FC 60 38 34 */	frsqrte f3, f7
/* 8060EA6C  3C 60 80 65 */	lis r3, lit_419@ha /* 0x8064C1E0@ha */
/* 8060EA70  38 83 C1 E0 */	addi r4, r3, lit_419@l /* 0x8064C1E0@l */
/* 8060EA74  C8 A6 00 00 */	lfd f5, 0(r6)
/* 8060EA78  C0 44 00 00 */	lfs f2, 0(r4)
/* 8060EA7C  3C 60 80 65 */	lis r3, lit_424@ha /* 0x8064C200@ha */
/* 8060EA80  FC 03 00 F2 */	fmul f0, f3, f3
/* 8060EA84  38 A3 C2 00 */	addi r5, r3, lit_424@l /* 0x8064C200@l */
/* 8060EA88  3C 80 80 65 */	lis r4, lit_423@ha /* 0x8064C1FC@ha */
/* 8060EA8C  3C 60 80 65 */	lis r3, lit_425@ha /* 0x8064C204@ha */
/* 8060EA90  EC 42 00 72 */	fmuls f2, f2, f1
/* 8060EA94  38 C4 C1 FC */	addi r6, r4, lit_423@l /* 0x8064C1FC@l */
/* 8060EA98  FC 27 00 32 */	fmul f1, f7, f0
/* 8060EA9C  D0 5C 00 48 */	stfs f2, 0x48(r28)
/* 8060EAA0  38 83 C2 04 */	addi r4, r3, lit_425@l /* 0x8064C204@l */
/* 8060EAA4  C0 05 00 00 */	lfs f0, 0(r5)
/* 8060EAA8  FC 86 00 F2 */	fmul f4, f6, f3
/* 8060EAAC  C0 64 00 00 */	lfs f3, 0(r4)
/* 8060EAB0  FC 45 08 28 */	fsub f2, f5, f1
/* 8060EAB4  C0 26 00 00 */	lfs f1, 0(r6)
/* 8060EAB8  38 7C 00 34 */	addi r3, r28, 0x34
/* 8060EABC  FC 84 00 B2 */	fmul f4, f4, f2
/* 8060EAC0  FC 44 01 32 */	fmul f2, f4, f4
/* 8060EAC4  FC 86 01 32 */	fmul f4, f6, f4
/* 8060EAC8  FC 47 00 B2 */	fmul f2, f7, f2
/* 8060EACC  FC 45 10 28 */	fsub f2, f5, f2
/* 8060EAD0  FC 84 00 B2 */	fmul f4, f4, f2
/* 8060EAD4  FC 44 01 32 */	fmul f2, f4, f4
/* 8060EAD8  FC 86 01 32 */	fmul f4, f6, f4
/* 8060EADC  FC 47 00 B2 */	fmul f2, f7, f2
/* 8060EAE0  FC 45 10 28 */	fsub f2, f5, f2
/* 8060EAE4  FC 44 00 B2 */	fmul f2, f4, f2
/* 8060EAE8  FC 47 00 B2 */	fmul f2, f7, f2
/* 8060EAEC  FC 40 10 18 */	frsp f2, f2
/* 8060EAF0  D0 41 00 08 */	stfs f2, 8(r1)
/* 8060EAF4  C0 41 00 08 */	lfs f2, 8(r1)
/* 8060EAF8  EC 40 10 28 */	fsubs f2, f0, f2
/* 8060EAFC  4B DA C7 99 */	bl add_calc2
/* 8060EB00  C0 1C 00 34 */	lfs f0, 0x34(r28)
/* 8060EB04  2C 1E 00 0A */	cmpwi r30, 0xa
/* 8060EB08  D0 1C 00 38 */	stfs f0, 0x38(r28)
/* 8060EB0C  C0 1C 00 34 */	lfs f0, 0x34(r28)
/* 8060EB10  D0 1C 00 3C */	stfs f0, 0x3c(r28)
/* 8060EB14  40 82 01 44 */	bne lbl_8060EC58
/* 8060EB18  80 9C 00 10 */	lwz r4, 0x10(r28)
/* 8060EB1C  3C C0 80 6D */	lis r6, hoshi_light@ha /* 0x806D27A0@ha */
/* 8060EB20  80 1C 00 14 */	lwz r0, 0x14(r28)
/* 8060EB24  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8060EB28  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8060EB2C  3C A0 80 65 */	lis r5, lit_419@ha /* 0x8064C1E0@ha */
/* 8060EB30  90 81 00 18 */	stw r4, 0x18(r1)
/* 8060EB34  3F E3 00 02 */	addis r31, r3, 2
/* 8060EB38  3C 80 80 65 */	lis r4, lit_385@ha /* 0x8064C1D8@ha */
/* 8060EB3C  3C 60 80 65 */	lis r3, lit_426@ha /* 0x8064C208@ha */
/* 8060EB40  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8060EB44  39 45 C1 E0 */	addi r10, r5, lit_419@l /* 0x8064C1E0@l */
/* 8060EB48  39 24 C1 D8 */	addi r9, r4, lit_385@l /* 0x8064C1D8@l */
/* 8060EB4C  39 03 C2 08 */	addi r8, r3, lit_426@l /* 0x8064C208@l */
/* 8060EB50  80 1C 00 18 */	lwz r0, 0x18(r28)
/* 8060EB54  39 66 27 A0 */	addi r11, r6, hoshi_light@l /* 0x806D27A0@l */
/* 8060EB58  80 FF 60 9C */	lwz r7, 0x609c(r31)
/* 8060EB5C  7F A6 EB 78 */	mr r6, r29
/* 8060EB60  90 01 00 20 */	stw r0, 0x20(r1)
/* 8060EB64  38 61 00 14 */	addi r3, r1, 0x14
/* 8060EB68  38 81 00 10 */	addi r4, r1, 0x10
/* 8060EB6C  38 A1 00 18 */	addi r5, r1, 0x18
/* 8060EB70  A8 1C 00 52 */	lha r0, 0x52(r28)
/* 8060EB74  C0 2A 00 00 */	lfs f1, 0(r10)
/* 8060EB78  54 00 10 3A */	slwi r0, r0, 2
/* 8060EB7C  C0 49 00 00 */	lfs f2, 0(r9)
/* 8060EB80  7C 0B 00 2E */	lwzx r0, r11, r0
/* 8060EB84  C0 68 00 00 */	lfs f3, 0(r8)
/* 8060EB88  90 01 00 10 */	stw r0, 0x10(r1)
/* 8060EB8C  81 87 00 34 */	lwz r12, 0x34(r7)
/* 8060EB90  7D 89 03 A6 */	mtctr r12
/* 8060EB94  4E 80 04 21 */	bctrl 
/* 8060EB98  A8 1C 00 06 */	lha r0, 6(r28)
/* 8060EB9C  2C 00 00 00 */	cmpwi r0, 0
/* 8060EBA0  41 82 00 90 */	beq lbl_8060EC30
/* 8060EBA4  88 C1 00 14 */	lbz r6, 0x14(r1)
/* 8060EBA8  3C 80 43 30 */	lis r4, 0x4330
/* 8060EBAC  88 61 00 15 */	lbz r3, 0x15(r1)
/* 8060EBB0  3C A0 80 65 */	lis r5, lit_430@ha /* 0x8064C214@ha */
/* 8060EBB4  90 C1 00 34 */	stw r6, 0x34(r1)
/* 8060EBB8  3C C0 80 65 */	lis r6, lit_427@ha /* 0x8064C20C@ha */
/* 8060EBBC  88 01 00 16 */	lbz r0, 0x16(r1)
/* 8060EBC0  90 81 00 30 */	stw r4, 0x30(r1)
/* 8060EBC4  C8 65 C2 14 */	lfd f3, lit_430@l(r5)  /* 0x8064C214@l */
/* 8060EBC8  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8060EBCC  90 61 00 44 */	stw r3, 0x44(r1)
/* 8060EBD0  EC 20 18 28 */	fsubs f1, f0, f3
/* 8060EBD4  C0 86 C2 0C */	lfs f4, lit_427@l(r6)  /* 0x8064C20C@l */
/* 8060EBD8  90 81 00 40 */	stw r4, 0x40(r1)
/* 8060EBDC  EC 44 00 72 */	fmuls f2, f4, f1
/* 8060EBE0  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 8060EBE4  90 01 00 54 */	stw r0, 0x54(r1)
/* 8060EBE8  EC 20 18 28 */	fsubs f1, f0, f3
/* 8060EBEC  90 81 00 50 */	stw r4, 0x50(r1)
/* 8060EBF0  FC 40 10 1E */	fctiwz f2, f2
/* 8060EBF4  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 8060EBF8  EC 24 00 72 */	fmuls f1, f4, f1
/* 8060EBFC  D8 41 00 38 */	stfd f2, 0x38(r1)
/* 8060EC00  EC 00 18 28 */	fsubs f0, f0, f3
/* 8060EC04  FC 20 08 1E */	fctiwz f1, f1
/* 8060EC08  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8060EC0C  EC 04 00 32 */	fmuls f0, f4, f0
/* 8060EC10  98 01 00 14 */	stb r0, 0x14(r1)
/* 8060EC14  D8 21 00 48 */	stfd f1, 0x48(r1)
/* 8060EC18  FC 00 00 1E */	fctiwz f0, f0
/* 8060EC1C  80 61 00 4C */	lwz r3, 0x4c(r1)
/* 8060EC20  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 8060EC24  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8060EC28  98 61 00 15 */	stb r3, 0x15(r1)
/* 8060EC2C  98 01 00 16 */	stb r0, 0x16(r1)
lbl_8060EC30:
/* 8060EC30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8060EC34  38 61 00 0C */	addi r3, r1, 0xc
/* 8060EC38  80 FF 60 9C */	lwz r7, 0x609c(r31)
/* 8060EC3C  38 80 00 14 */	li r4, 0x14
/* 8060EC40  90 01 00 0C */	stw r0, 0xc(r1)
/* 8060EC44  38 A0 00 32 */	li r5, 0x32
/* 8060EC48  38 C0 00 01 */	li r6, 1
/* 8060EC4C  81 87 00 30 */	lwz r12, 0x30(r7)
/* 8060EC50  7D 89 03 A6 */	mtctr r12
/* 8060EC54  4E 80 04 21 */	bctrl 
lbl_8060EC58:
/* 8060EC58  2C 1E 00 48 */	cmpwi r30, 0x48
/* 8060EC5C  40 82 00 3C */	bne lbl_8060EC98
/* 8060EC60  80 BC 00 10 */	lwz r5, 0x10(r28)
/* 8060EC64  3C 60 80 65 */	lis r3, lit_428@ha /* 0x8064C210@ha */
/* 8060EC68  80 1C 00 14 */	lwz r0, 0x14(r28)
/* 8060EC6C  38 81 00 24 */	addi r4, r1, 0x24
/* 8060EC70  C0 03 C2 10 */	lfs f0, lit_428@l(r3)  /* 0x8064C210@l */
/* 8060EC74  38 60 21 11 */	li r3, 0x2111
/* 8060EC78  90 01 00 28 */	stw r0, 0x28(r1)
/* 8060EC7C  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 8060EC80  90 A1 00 24 */	stw r5, 0x24(r1)
/* 8060EC84  EC 01 00 2A */	fadds f0, f1, f0
/* 8060EC88  80 1C 00 18 */	lwz r0, 0x18(r28)
/* 8060EC8C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8060EC90  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8060EC94  48 01 F3 15 */	bl sAdo_OngenTrgStart
lbl_8060EC98:
/* 8060EC98  39 61 00 70 */	addi r11, r1, 0x70
/* 8060EC9C  4B A8 C2 81 */	bl func_8009AF1C
/* 8060ECA0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8060ECA4  7C 08 03 A6 */	mtlr r0
/* 8060ECA8  38 21 00 70 */	addi r1, r1, 0x70
/* 8060ECAC  4E 80 00 20 */	blr 
