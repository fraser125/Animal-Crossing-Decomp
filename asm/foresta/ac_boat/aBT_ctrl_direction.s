lbl_805A789C:
/* 805A789C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805A78A0  7C 08 02 A6 */	mflr r0
/* 805A78A4  90 01 00 44 */	stw r0, 0x44(r1)
/* 805A78A8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805A78AC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805A78B0  39 61 00 30 */	addi r11, r1, 0x30
/* 805A78B4  4B AF 36 15 */	bl func_8009AEC8
/* 805A78B8  7C 7D 1B 78 */	mr r29, r3
/* 805A78BC  3C 60 80 6C */	lis r3, aBT_chk_point@ha /* 0x806C4364@ha */
/* 805A78C0  83 FD 02 C0 */	lwz r31, 0x2c0(r29)
/* 805A78C4  38 03 43 64 */	addi r0, r3, aBT_chk_point@l /* 0x806C4364@l */
/* 805A78C8  C0 5D 00 30 */	lfs f2, 0x30(r29)
/* 805A78CC  1C 7F 00 0C */	mulli r3, r31, 0xc
/* 805A78D0  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 805A78D4  AB DD 00 DE */	lha r30, 0xde(r29)
/* 805A78D8  7C 60 1A 14 */	add r3, r0, r3
/* 805A78DC  C0 63 00 08 */	lfs f3, 8(r3)
/* 805A78E0  C0 23 00 00 */	lfs f1, 0(r3)
/* 805A78E4  EF E3 10 28 */	fsubs f31, f3, f2
/* 805A78E8  EC 41 00 28 */	fsubs f2, f1, f0
/* 805A78EC  FC 20 F8 90 */	fmr f1, f31
/* 805A78F0  4B E6 47 11 */	bl atans_table
/* 805A78F4  A8 1D 00 36 */	lha r0, 0x36(r29)
/* 805A78F8  7C 7C 1B 78 */	mr r28, r3
/* 805A78FC  7C 00 E0 50 */	subf r0, r0, r28
/* 805A7900  7C 1B 07 35 */	extsh. r27, r0
/* 805A7904  7C 1B 00 D0 */	neg r0, r27
/* 805A7908  41 80 00 08 */	blt lbl_805A7910
/* 805A790C  7F 60 DB 78 */	mr r0, r27
lbl_805A7910:
/* 805A7910  7C 1A 07 34 */	extsh r26, r0
/* 805A7914  7F A3 EB 78 */	mr r3, r29
/* 805A7918  7F 64 DB 78 */	mr r4, r27
/* 805A791C  7F 86 E3 78 */	mr r6, r28
/* 805A7920  7F 45 D3 78 */	mr r5, r26
/* 805A7924  4B FF FE 5D */	bl aBT_ctrl_rudder
/* 805A7928  6F 60 80 00 */	xoris r0, r27, 0x8000
/* 805A792C  3C 80 43 30 */	lis r4, 0x4330
/* 805A7930  3C A0 80 65 */	lis r5, lit_588@ha /* 0x8064A4F0@ha */
/* 805A7934  3C 60 80 65 */	lis r3, lit_595@ha /* 0x8064A504@ha */
/* 805A7938  38 C5 A4 F0 */	addi r6, r5, lit_588@l /* 0x8064A4F0@l */
/* 805A793C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805A7940  38 A3 A5 04 */	addi r5, r3, lit_595@l /* 0x8064A504@l */
/* 805A7944  C0 66 00 00 */	lfs f3, 0(r6)
/* 805A7948  90 81 00 08 */	stw r4, 8(r1)
/* 805A794C  3C 60 80 65 */	lis r3, lit_450@ha /* 0x8064A4CC@ha */
/* 805A7950  C0 1D 02 D4 */	lfs f0, 0x2d4(r29)
/* 805A7954  C8 45 00 00 */	lfd f2, 0(r5)
/* 805A7958  C8 21 00 08 */	lfd f1, 8(r1)
/* 805A795C  EC 63 00 32 */	fmuls f3, f3, f0
/* 805A7960  C0 03 A4 CC */	lfs f0, lit_450@l(r3)  /* 0x8064A4CC@l */
/* 805A7964  EC 21 10 28 */	fsubs f1, f1, f2
/* 805A7968  EC 21 00 F2 */	fmuls f1, f1, f3
/* 805A796C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A7970  4C 40 13 82 */	cror 2, 0, 2
/* 805A7974  40 82 00 40 */	bne lbl_805A79B4
/* 805A7978  6F 40 80 00 */	xoris r0, r26, 0x8000
/* 805A797C  90 81 00 08 */	stw r4, 8(r1)
/* 805A7980  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 805A7984  90 01 00 0C */	stw r0, 0xc(r1)
/* 805A7988  C8 01 00 08 */	lfd f0, 8(r1)
/* 805A798C  EC 20 10 28 */	fsubs f1, f0, f2
/* 805A7990  4C 41 13 82 */	cror 2, 1, 2
/* 805A7994  40 82 00 0C */	bne lbl_805A79A0
/* 805A7998  FC 00 18 90 */	fmr f0, f3
/* 805A799C  48 00 00 08 */	b lbl_805A79A4
lbl_805A79A0:
/* 805A79A0  FC 00 18 50 */	fneg f0, f3
lbl_805A79A4:
/* 805A79A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A79A8  40 80 00 0C */	bge lbl_805A79B4
/* 805A79AC  B3 9D 00 36 */	sth r28, 0x36(r29)
/* 805A79B0  48 00 00 3C */	b lbl_805A79EC
lbl_805A79B4:
/* 805A79B4  A8 9D 00 36 */	lha r4, 0x36(r29)
/* 805A79B8  3C 00 43 30 */	lis r0, 0x4330
/* 805A79BC  90 01 00 08 */	stw r0, 8(r1)
/* 805A79C0  3C 60 80 65 */	lis r3, lit_595@ha /* 0x8064A504@ha */
/* 805A79C4  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 805A79C8  C8 23 A5 04 */	lfd f1, lit_595@l(r3)  /* 0x8064A504@l */
/* 805A79CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 805A79D0  C8 01 00 08 */	lfd f0, 8(r1)
/* 805A79D4  EC 00 08 28 */	fsubs f0, f0, f1
/* 805A79D8  EC 00 18 2A */	fadds f0, f0, f3
/* 805A79DC  FC 00 00 1E */	fctiwz f0, f0
/* 805A79E0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805A79E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A79E8  B0 1D 00 36 */	sth r0, 0x36(r29)
lbl_805A79EC:
/* 805A79EC  A8 1D 00 36 */	lha r0, 0x36(r29)
/* 805A79F0  7F A3 EB 78 */	mr r3, r29
/* 805A79F4  B0 1D 00 DE */	sth r0, 0xde(r29)
/* 805A79F8  A8 1D 00 DE */	lha r0, 0xde(r29)
/* 805A79FC  7C 1E 00 50 */	subf r0, r30, r0
/* 805A7A00  7C 04 07 34 */	extsh r4, r0
/* 805A7A04  4B FF FA D9 */	bl aBT_calc_wave_angl
/* 805A7A08  80 1D 02 C4 */	lwz r0, 0x2c4(r29)
/* 805A7A0C  2C 00 00 00 */	cmpwi r0, 0
/* 805A7A10  40 82 00 20 */	bne lbl_805A7A30
/* 805A7A14  3C 60 80 65 */	lis r3, lit_450@ha /* 0x8064A4CC@ha */
/* 805A7A18  C0 03 A4 CC */	lfs f0, lit_450@l(r3)  /* 0x8064A4CC@l */
/* 805A7A1C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 805A7A20  40 80 00 28 */	bge lbl_805A7A48
/* 805A7A24  38 1F 00 01 */	addi r0, r31, 1
/* 805A7A28  90 1D 02 C0 */	stw r0, 0x2c0(r29)
/* 805A7A2C  48 00 00 1C */	b lbl_805A7A48
lbl_805A7A30:
/* 805A7A30  3C 60 80 65 */	lis r3, lit_450@ha /* 0x8064A4CC@ha */
/* 805A7A34  C0 03 A4 CC */	lfs f0, lit_450@l(r3)  /* 0x8064A4CC@l */
/* 805A7A38  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 805A7A3C  40 81 00 0C */	ble lbl_805A7A48
/* 805A7A40  38 1F FF FF */	addi r0, r31, -1
/* 805A7A44  90 1D 02 C0 */	stw r0, 0x2c0(r29)
lbl_805A7A48:
/* 805A7A48  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805A7A4C  39 61 00 30 */	addi r11, r1, 0x30
/* 805A7A50  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805A7A54  4B AF 34 C1 */	bl func_8009AF14
/* 805A7A58  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805A7A5C  7C 08 03 A6 */	mtlr r0
/* 805A7A60  38 21 00 40 */	addi r1, r1, 0x40
/* 805A7A64  4E 80 00 20 */	blr 
