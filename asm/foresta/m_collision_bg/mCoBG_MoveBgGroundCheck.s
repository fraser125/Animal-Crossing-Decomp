lbl_8038D0D0:
/* 8038D0D0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8038D0D4  7C 08 02 A6 */	mflr r0
/* 8038D0D8  90 01 00 54 */	stw r0, 0x54(r1)
/* 8038D0DC  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8038D0E0  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8038D0E4  39 61 00 40 */	addi r11, r1, 0x40
/* 8038D0E8  4B D0 DD E5 */	bl func_8009AECC
/* 8038D0EC  3D 20 80 64 */	lis r9, lit_1500@ha /* 0x80641A38@ha */
/* 8038D0F0  3D 00 80 64 */	lis r8, data_806419A4@ha /* 0x806419A4@ha */
/* 8038D0F4  C0 29 1A 38 */	lfs f1, lit_1500@l(r9)  /* 0x80641A38@l */
/* 8038D0F8  7C 7B 1B 78 */	mr r27, r3
/* 8038D0FC  C0 08 19 A4 */	lfs f0, data_806419A4@l(r8)  /* 0x806419A4@l */
/* 8038D100  7C BC 2B 78 */	mr r28, r5
/* 8038D104  D0 21 00 08 */	stfs f1, 8(r1)
/* 8038D108  7C DD 33 78 */	mr r29, r6
/* 8038D10C  7C FE 3B 78 */	mr r30, r7
/* 8038D110  C0 45 00 28 */	lfs f2, 0x28(r5)
/* 8038D114  C0 3B 00 00 */	lfs f1, 0(r27)
/* 8038D118  C3 E4 00 44 */	lfs f31, 0x44(r4)
/* 8038D11C  EC 22 08 2A */	fadds f1, f2, f1
/* 8038D120  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8038D124  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8038D128  C0 25 00 30 */	lfs f1, 0x30(r5)
/* 8038D12C  C0 1B 00 08 */	lfs f0, 8(r27)
/* 8038D130  EC 01 00 2A */	fadds f0, f1, f0
/* 8038D134  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8038D138  A8 05 00 00 */	lha r0, 0(r5)
/* 8038D13C  2C 00 00 6B */	cmpwi r0, 0x6b
/* 8038D140  41 82 00 C0 */	beq lbl_8038D200
/* 8038D144  38 61 00 08 */	addi r3, r1, 8
/* 8038D148  38 81 00 14 */	addi r4, r1, 0x14
/* 8038D14C  4B FF F9 D1 */	bl mCoBG_GetMoveBgHeight
/* 8038D150  7C 7F 1B 78 */	mr r31, r3
/* 8038D154  2C 1F FF FF */	cmpwi r31, -1
/* 8038D158  41 82 00 A8 */	beq lbl_8038D200
/* 8038D15C  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 8038D160  C0 5B 00 04 */	lfs f2, 4(r27)
/* 8038D164  EC 20 F8 2A */	fadds f1, f0, f31
/* 8038D168  C0 01 00 08 */	lfs f0, 8(r1)
/* 8038D16C  EC 22 08 2A */	fadds f1, f2, f1
/* 8038D170  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8038D174  4C 40 13 82 */	cror 2, 0, 2
/* 8038D178  40 82 00 88 */	bne lbl_8038D200
/* 8038D17C  4B FF FD 41 */	bl mCoBG_Idx2RegistPointer
/* 8038D180  28 03 00 00 */	cmplwi r3, 0
/* 8038D184  41 82 00 7C */	beq lbl_8038D200
/* 8038D188  C0 01 00 08 */	lfs f0, 8(r1)
/* 8038D18C  3C 80 80 64 */	lis r4, lit_1607@ha /* 0x80641A40@ha */
/* 8038D190  38 A4 1A 40 */	addi r5, r4, lit_1607@l /* 0x80641A40@l */
/* 8038D194  EC 20 F8 28 */	fsubs f1, f0, f31
/* 8038D198  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 8038D19C  80 05 00 00 */	lwz r0, 0(r5)
/* 8038D1A0  3C 80 80 64 */	lis r4, data_806419A4@ha /* 0x806419A4@ha */
/* 8038D1A4  A0 C5 00 04 */	lhz r6, 4(r5)
/* 8038D1A8  38 A0 00 01 */	li r5, 1
/* 8038D1AC  EC 21 00 28 */	fsubs f1, f1, f0
/* 8038D1B0  C0 04 19 A4 */	lfs f0, data_806419A4@l(r4)  /* 0x806419A4@l */
/* 8038D1B4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8038D1B8  7F 84 E3 78 */	mr r4, r28
/* 8038D1BC  D0 3B 00 04 */	stfs f1, 4(r27)
/* 8038D1C0  90 1E 00 00 */	stw r0, 0(r30)
/* 8038D1C4  B0 DE 00 04 */	sth r6, 4(r30)
/* 8038D1C8  88 1D 00 00 */	lbz r0, 0(r29)
/* 8038D1CC  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 8038D1D0  B0 C1 00 10 */	sth r6, 0x10(r1)
/* 8038D1D4  98 1D 00 00 */	stb r0, 0(r29)
/* 8038D1D8  88 1D 00 02 */	lbz r0, 2(r29)
/* 8038D1DC  50 A0 17 7A */	rlwimi r0, r5, 2, 0x1d, 0x1d
/* 8038D1E0  98 1D 00 02 */	stb r0, 2(r29)
/* 8038D1E4  80 A3 00 1C */	lwz r5, 0x1c(r3)
/* 8038D1E8  80 1D 00 00 */	lwz r0, 0(r29)
/* 8038D1EC  50 A0 5B E8 */	rlwimi r0, r5, 0xb, 0xf, 0x14
/* 8038D1F0  90 1D 00 00 */	stw r0, 0(r29)
/* 8038D1F4  93 FC 01 04 */	stw r31, 0x104(r28)
/* 8038D1F8  D0 1C 00 6C */	stfs f0, 0x6c(r28)
/* 8038D1FC  4B FF FE 9D */	bl mCoBG_SetMoveBgContactOn
lbl_8038D200:
/* 8038D200  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8038D204  39 61 00 40 */	addi r11, r1, 0x40
/* 8038D208  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8038D20C  4B D0 DD 0D */	bl func_8009AF18
/* 8038D210  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8038D214  7C 08 03 A6 */	mtlr r0
/* 8038D218  38 21 00 50 */	addi r1, r1, 0x50
/* 8038D21C  4E 80 00 20 */	blr 
