lbl_803868F0:
/* 803868F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803868F4  7C 08 02 A6 */	mflr r0
/* 803868F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803868FC  39 61 00 20 */	addi r11, r1, 0x20
/* 80386900  4B D1 45 D5 */	bl func_8009AED4
/* 80386904  7C 9E 23 78 */	mr r30, r4
/* 80386908  7C 7D 1B 78 */	mr r29, r3
/* 8038690C  3B FE 00 08 */	addi r31, r30, 8
/* 80386910  7C A6 2B 78 */	mr r6, r5
/* 80386914  7F E5 FB 78 */	mr r5, r31
/* 80386918  38 61 00 08 */	addi r3, r1, 8
/* 8038691C  48 00 41 FD */	bl mCoBG_GetCrossLineAndPerpendicular
/* 80386920  2C 03 00 00 */	cmpwi r3, 0
/* 80386924  41 82 00 80 */	beq lbl_803869A4
/* 80386928  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8038692C  3C 60 80 64 */	lis r3, lit_448@ha /* 0x806419A8@ha */
/* 80386930  C0 7E 00 00 */	lfs f3, 0(r30)
/* 80386934  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80386938  EC 80 18 28 */	fsubs f4, f0, f3
/* 8038693C  C0 5E 00 04 */	lfs f2, 4(r30)
/* 80386940  C0 03 19 A8 */	lfs f0, lit_448@l(r3)  /* 0x806419A8@l */
/* 80386944  EC A1 10 28 */	fsubs f5, f1, f2
/* 80386948  FC 20 22 10 */	fabs f1, f4
/* 8038694C  FC 20 08 18 */	frsp f1, f1
/* 80386950  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80386954  40 80 00 14 */	bge lbl_80386968
/* 80386958  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8038695C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80386960  EC 40 28 24 */	fdivs f2, f0, f5
/* 80386964  48 00 00 10 */	b lbl_80386974
lbl_80386968:
/* 80386968  C0 01 00 08 */	lfs f0, 8(r1)
/* 8038696C  EC 00 18 28 */	fsubs f0, f0, f3
/* 80386970  EC 40 20 24 */	fdivs f2, f0, f4
lbl_80386974:
/* 80386974  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80386978  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 8038697C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80386980  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80386984  EC 01 00 2A */	fadds f0, f1, f0
/* 80386988  D0 1D 00 00 */	stfs f0, 0(r29)
/* 8038698C  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 80386990  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80386994  EC 00 08 28 */	fsubs f0, f0, f1
/* 80386998  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8038699C  EC 01 00 2A */	fadds f0, f1, f0
/* 803869A0  D0 1D 00 04 */	stfs f0, 4(r29)
lbl_803869A4:
/* 803869A4  39 61 00 20 */	addi r11, r1, 0x20
/* 803869A8  4B D1 45 79 */	bl func_8009AF20
/* 803869AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803869B0  7C 08 03 A6 */	mtlr r0
/* 803869B4  38 21 00 20 */	addi r1, r1, 0x20
/* 803869B8  4E 80 00 20 */	blr 