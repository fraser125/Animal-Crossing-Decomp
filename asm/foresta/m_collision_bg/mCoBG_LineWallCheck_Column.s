lbl_8038F0E0:
/* 8038F0E0  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8038F0E4  7C 08 02 A6 */	mflr r0
/* 8038F0E8  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8038F0EC  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 8038F0F0  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 8038F0F4  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 8038F0F8  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 8038F0FC  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 8038F100  F3 A1 00 98 */	psq_st f29, 152(r1), 0, 0 /* qr0 */
/* 8038F104  DB 81 00 80 */	stfd f28, 0x80(r1)
/* 8038F108  F3 81 00 88 */	psq_st f28, 136(r1), 0, 0 /* qr0 */
/* 8038F10C  DB 61 00 70 */	stfd f27, 0x70(r1)
/* 8038F110  F3 61 00 78 */	psq_st f27, 120(r1), 0, 0 /* qr0 */
/* 8038F114  39 61 00 70 */	addi r11, r1, 0x70
/* 8038F118  4B D0 BD AD */	bl func_8009AEC4
/* 8038F11C  3D 00 80 65 */	lis r8, reverse0_2139@ha /* 0x80650CB4@ha */
/* 8038F120  3D 20 80 64 */	lis r9, data_806419A4@ha /* 0x806419A4@ha */
/* 8038F124  3B E8 0C B4 */	addi r31, r8, reverse0_2139@l /* 0x80650CB4@l */
/* 8038F128  C3 C9 19 A4 */	lfs f30, data_806419A4@l(r9)  /* 0x806419A4@l */
/* 8038F12C  81 7F 00 00 */	lwz r11, 0(r31)
/* 8038F130  3D 00 80 64 */	lis r8, lit_448@ha /* 0x806419A8@ha */
/* 8038F134  81 5F 00 04 */	lwz r10, 4(r31)
/* 8038F138  7C 79 1B 78 */	mr r25, r3
/* 8038F13C  80 1F 00 08 */	lwz r0, 8(r31)
/* 8038F140  7C 9A 23 78 */	mr r26, r4
/* 8038F144  91 61 00 38 */	stw r11, 0x38(r1)
/* 8038F148  7C BB 2B 78 */	mr r27, r5
/* 8038F14C  C3 E8 19 A8 */	lfs f31, lit_448@l(r8)  /* 0x806419A8@l */
/* 8038F150  7C DC 33 78 */	mr r28, r6
/* 8038F154  91 41 00 3C */	stw r10, 0x3c(r1)
/* 8038F158  7C FD 3B 78 */	mr r29, r7
/* 8038F15C  3B C0 00 00 */	li r30, 0
/* 8038F160  90 01 00 40 */	stw r0, 0x40(r1)
/* 8038F164  48 00 03 F0 */	b lbl_8038F554
lbl_8038F168:
/* 8038F168  C0 7D 00 00 */	lfs f3, 0(r29)
/* 8038F16C  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8038F170  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8038F174  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8038F178  EF 83 08 2A */	fadds f28, f3, f1
/* 8038F17C  C0 3C 00 00 */	lfs f1, 0(r28)
/* 8038F180  EF 62 00 2A */	fadds f27, f2, f0
/* 8038F184  C0 1C 00 08 */	lfs f0, 8(r28)
/* 8038F188  EC 81 E0 28 */	fsubs f4, f1, f28
/* 8038F18C  80 9F 00 00 */	lwz r4, 0(r31)
/* 8038F190  C0 DD 00 04 */	lfs f6, 4(r29)
/* 8038F194  EC 40 D8 28 */	fsubs f2, f0, f27
/* 8038F198  C0 A1 00 3C */	lfs f5, 0x3c(r1)
/* 8038F19C  EC 24 01 32 */	fmuls f1, f4, f4
/* 8038F1A0  C0 7C 00 04 */	lfs f3, 4(r28)
/* 8038F1A4  EC 02 00 B2 */	fmuls f0, f2, f2
/* 8038F1A8  80 7F 00 04 */	lwz r3, 4(r31)
/* 8038F1AC  EC A6 28 2A */	fadds f5, f6, f5
/* 8038F1B0  80 1F 00 08 */	lwz r0, 8(r31)
/* 8038F1B4  90 81 00 38 */	stw r4, 0x38(r1)
/* 8038F1B8  EF A1 00 2A */	fadds f29, f1, f0
/* 8038F1BC  EC 03 28 28 */	fsubs f0, f3, f5
/* 8038F1C0  90 61 00 3C */	stw r3, 0x3c(r1)
/* 8038F1C4  FC 1D F0 40 */	fcmpo cr0, f29, f30
/* 8038F1C8  90 01 00 40 */	stw r0, 0x40(r1)
/* 8038F1CC  D0 81 00 44 */	stfs f4, 0x44(r1)
/* 8038F1D0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8038F1D4  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 8038F1D8  40 81 00 68 */	ble lbl_8038F240
/* 8038F1DC  FC 20 E8 34 */	frsqrte f1, f29
/* 8038F1E0  3C 60 80 64 */	lis r3, lit_587@ha /* 0x806419B4@ha */
/* 8038F1E4  38 83 19 B4 */	addi r4, r3, lit_587@l /* 0x806419B4@l */
/* 8038F1E8  3C 60 80 64 */	lis r3, lit_588@ha /* 0x806419BC@ha */
/* 8038F1EC  C8 64 00 00 */	lfd f3, 0(r4)
/* 8038F1F0  FC 01 00 72 */	fmul f0, f1, f1
/* 8038F1F4  C8 43 19 BC */	lfd f2, lit_588@l(r3)  /* 0x806419BC@l */
/* 8038F1F8  FC 23 00 72 */	fmul f1, f3, f1
/* 8038F1FC  FC 1D 00 32 */	fmul f0, f29, f0
/* 8038F200  FC 02 00 28 */	fsub f0, f2, f0
/* 8038F204  FC 21 00 32 */	fmul f1, f1, f0
/* 8038F208  FC 01 00 72 */	fmul f0, f1, f1
/* 8038F20C  FC 23 00 72 */	fmul f1, f3, f1
/* 8038F210  FC 1D 00 32 */	fmul f0, f29, f0
/* 8038F214  FC 02 00 28 */	fsub f0, f2, f0
/* 8038F218  FC 21 00 32 */	fmul f1, f1, f0
/* 8038F21C  FC 01 00 72 */	fmul f0, f1, f1
/* 8038F220  FC 23 00 72 */	fmul f1, f3, f1
/* 8038F224  FC 1D 00 32 */	fmul f0, f29, f0
/* 8038F228  FC 02 00 28 */	fsub f0, f2, f0
/* 8038F22C  FC 01 00 32 */	fmul f0, f1, f0
/* 8038F230  FC 1D 00 32 */	fmul f0, f29, f0
/* 8038F234  FC 00 00 18 */	frsp f0, f0
/* 8038F238  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8038F23C  C3 A1 00 10 */	lfs f29, 0x10(r1)
lbl_8038F240:
/* 8038F240  FC 00 EA 10 */	fabs f0, f29
/* 8038F244  FC 00 00 18 */	frsp f0, f0
/* 8038F248  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8038F24C  41 80 03 04 */	blt lbl_8038F550
/* 8038F250  C0 3A 00 10 */	lfs f1, 0x10(r26)
/* 8038F254  7F 83 E3 78 */	mr r3, r28
/* 8038F258  7F 44 D3 78 */	mr r4, r26
/* 8038F25C  4B FF BD 89 */	bl mCoBG_JudgePointInCircle_Xyz
/* 8038F260  2C 03 00 00 */	cmpwi r3, 0
/* 8038F264  40 82 02 E8 */	bne lbl_8038F54C
/* 8038F268  C0 3A 00 10 */	lfs f1, 0x10(r26)
/* 8038F26C  7F 85 E3 78 */	mr r5, r28
/* 8038F270  7F 47 D3 78 */	mr r7, r26
/* 8038F274  38 61 00 2C */	addi r3, r1, 0x2c
/* 8038F278  38 81 00 20 */	addi r4, r1, 0x20
/* 8038F27C  38 C1 00 44 */	addi r6, r1, 0x44
/* 8038F280  4B FF BC 7D */	bl mCoBG_GetCrossCircleAndLine2DvectorPlaneXZ_Xyz
/* 8038F284  2C 03 00 00 */	cmpwi r3, 0
/* 8038F288  41 82 02 C4 */	beq lbl_8038F54C
/* 8038F28C  C0 E1 00 2C */	lfs f7, 0x2c(r1)
/* 8038F290  C0 BC 00 00 */	lfs f5, 0(r28)
/* 8038F294  C1 21 00 20 */	lfs f9, 0x20(r1)
/* 8038F298  EC 07 28 28 */	fsubs f0, f7, f5
/* 8038F29C  C1 01 00 34 */	lfs f8, 0x34(r1)
/* 8038F2A0  C0 DC 00 08 */	lfs f6, 8(r28)
/* 8038F2A4  EC 49 28 28 */	fsubs f2, f9, f5
/* 8038F2A8  C1 41 00 28 */	lfs f10, 0x28(r1)
/* 8038F2AC  EC 28 30 28 */	fsubs f1, f8, f6
/* 8038F2B0  EC 8A 30 28 */	fsubs f4, f10, f6
/* 8038F2B4  EC 60 00 32 */	fmuls f3, f0, f0
/* 8038F2B8  EC 01 00 72 */	fmuls f0, f1, f1
/* 8038F2BC  EC 42 00 B2 */	fmuls f2, f2, f2
/* 8038F2C0  EC 24 01 32 */	fmuls f1, f4, f4
/* 8038F2C4  EC 03 00 2A */	fadds f0, f3, f0
/* 8038F2C8  EC 22 08 2A */	fadds f1, f2, f1
/* 8038F2CC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8038F2D0  40 80 01 3C */	bge lbl_8038F40C
/* 8038F2D4  FC 07 28 40 */	fcmpo cr0, f7, f5
/* 8038F2D8  4C 41 13 82 */	cror 2, 1, 2
/* 8038F2DC  40 82 00 10 */	bne lbl_8038F2EC
/* 8038F2E0  FC 07 E0 40 */	fcmpo cr0, f7, f28
/* 8038F2E4  4C 40 13 82 */	cror 2, 0, 2
/* 8038F2E8  41 82 00 1C */	beq lbl_8038F304
lbl_8038F2EC:
/* 8038F2EC  FC 07 E0 40 */	fcmpo cr0, f7, f28
/* 8038F2F0  4C 41 13 82 */	cror 2, 1, 2
/* 8038F2F4  40 82 02 58 */	bne lbl_8038F54C
/* 8038F2F8  FC 07 28 40 */	fcmpo cr0, f7, f5
/* 8038F2FC  4C 40 13 82 */	cror 2, 0, 2
/* 8038F300  40 82 02 4C */	bne lbl_8038F54C
lbl_8038F304:
/* 8038F304  FC 08 30 40 */	fcmpo cr0, f8, f6
/* 8038F308  4C 41 13 82 */	cror 2, 1, 2
/* 8038F30C  40 82 00 10 */	bne lbl_8038F31C
/* 8038F310  FC 08 D8 40 */	fcmpo cr0, f8, f27
/* 8038F314  4C 40 13 82 */	cror 2, 0, 2
/* 8038F318  41 82 00 1C */	beq lbl_8038F334
lbl_8038F31C:
/* 8038F31C  FC 08 D8 40 */	fcmpo cr0, f8, f27
/* 8038F320  4C 41 13 82 */	cror 2, 1, 2
/* 8038F324  40 82 02 28 */	bne lbl_8038F54C
/* 8038F328  FC 08 30 40 */	fcmpo cr0, f8, f6
/* 8038F32C  4C 40 13 82 */	cror 2, 0, 2
/* 8038F330  40 82 02 1C */	bne lbl_8038F54C
lbl_8038F334:
/* 8038F334  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 8038F338  C0 23 19 A4 */	lfs f1, data_806419A4@l(r3)  /* 0x806419A4@l */
/* 8038F33C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8038F340  40 81 00 68 */	ble lbl_8038F3A8
/* 8038F344  FC 40 00 34 */	frsqrte f2, f0
/* 8038F348  3C 60 80 64 */	lis r3, lit_587@ha /* 0x806419B4@ha */
/* 8038F34C  38 83 19 B4 */	addi r4, r3, lit_587@l /* 0x806419B4@l */
/* 8038F350  3C 60 80 64 */	lis r3, lit_588@ha /* 0x806419BC@ha */
/* 8038F354  C8 84 00 00 */	lfd f4, 0(r4)
/* 8038F358  FC 22 00 B2 */	fmul f1, f2, f2
/* 8038F35C  C8 63 19 BC */	lfd f3, lit_588@l(r3)  /* 0x806419BC@l */
/* 8038F360  FC 44 00 B2 */	fmul f2, f4, f2
/* 8038F364  FC 20 00 72 */	fmul f1, f0, f1
/* 8038F368  FC 23 08 28 */	fsub f1, f3, f1
/* 8038F36C  FC 42 00 72 */	fmul f2, f2, f1
/* 8038F370  FC 22 00 B2 */	fmul f1, f2, f2
/* 8038F374  FC 44 00 B2 */	fmul f2, f4, f2
/* 8038F378  FC 20 00 72 */	fmul f1, f0, f1
/* 8038F37C  FC 23 08 28 */	fsub f1, f3, f1
/* 8038F380  FC 42 00 72 */	fmul f2, f2, f1
/* 8038F384  FC 22 00 B2 */	fmul f1, f2, f2
/* 8038F388  FC 44 00 B2 */	fmul f2, f4, f2
/* 8038F38C  FC 20 00 72 */	fmul f1, f0, f1
/* 8038F390  FC 23 08 28 */	fsub f1, f3, f1
/* 8038F394  FC 22 00 72 */	fmul f1, f2, f1
/* 8038F398  FC 00 00 72 */	fmul f0, f0, f1
/* 8038F39C  FC 00 00 18 */	frsp f0, f0
/* 8038F3A0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8038F3A4  C0 01 00 0C */	lfs f0, 0xc(r1)
lbl_8038F3A8:
/* 8038F3A8  EC 1D 00 28 */	fsubs f0, f29, f0
/* 8038F3AC  C0 61 00 48 */	lfs f3, 0x48(r1)
/* 8038F3B0  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8038F3B4  C0 81 00 44 */	lfs f4, 0x44(r1)
/* 8038F3B8  EC A0 E8 24 */	fdivs f5, f0, f29
/* 8038F3BC  C0 41 00 4C */	lfs f2, 0x4c(r1)
/* 8038F3C0  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 8038F3C4  EC 63 01 72 */	fmuls f3, f3, f5
/* 8038F3C8  EC 84 01 72 */	fmuls f4, f4, f5
/* 8038F3CC  EC 42 01 72 */	fmuls f2, f2, f5
/* 8038F3D0  EC 21 18 2A */	fadds f1, f1, f3
/* 8038F3D4  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 8038F3D8  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 8038F3DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8038F3E0  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8038F3E4  4C 40 13 82 */	cror 2, 0, 2
/* 8038F3E8  40 82 01 64 */	bne lbl_8038F54C
/* 8038F3EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038F3F0  38 60 00 01 */	li r3, 1
/* 8038F3F4  80 81 00 18 */	lwz r4, 0x18(r1)
/* 8038F3F8  90 19 00 00 */	stw r0, 0(r25)
/* 8038F3FC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8038F400  90 99 00 04 */	stw r4, 4(r25)
/* 8038F404  90 19 00 08 */	stw r0, 8(r25)
/* 8038F408  48 00 01 58 */	b lbl_8038F560
lbl_8038F40C:
/* 8038F40C  FC 09 28 40 */	fcmpo cr0, f9, f5
/* 8038F410  4C 41 13 82 */	cror 2, 1, 2
/* 8038F414  40 82 00 10 */	bne lbl_8038F424
/* 8038F418  FC 09 E0 40 */	fcmpo cr0, f9, f28
/* 8038F41C  4C 40 13 82 */	cror 2, 0, 2
/* 8038F420  41 82 00 1C */	beq lbl_8038F43C
lbl_8038F424:
/* 8038F424  FC 09 E0 40 */	fcmpo cr0, f9, f28
/* 8038F428  4C 41 13 82 */	cror 2, 1, 2
/* 8038F42C  40 82 01 20 */	bne lbl_8038F54C
/* 8038F430  FC 09 28 40 */	fcmpo cr0, f9, f5
/* 8038F434  4C 40 13 82 */	cror 2, 0, 2
/* 8038F438  40 82 01 14 */	bne lbl_8038F54C
lbl_8038F43C:
/* 8038F43C  FC 0A 30 40 */	fcmpo cr0, f10, f6
/* 8038F440  4C 41 13 82 */	cror 2, 1, 2
/* 8038F444  40 82 00 10 */	bne lbl_8038F454
/* 8038F448  FC 0A D8 40 */	fcmpo cr0, f10, f27
/* 8038F44C  4C 40 13 82 */	cror 2, 0, 2
/* 8038F450  41 82 00 1C */	beq lbl_8038F46C
lbl_8038F454:
/* 8038F454  FC 0A D8 40 */	fcmpo cr0, f10, f27
/* 8038F458  4C 41 13 82 */	cror 2, 1, 2
/* 8038F45C  40 82 00 F0 */	bne lbl_8038F54C
/* 8038F460  FC 0A 30 40 */	fcmpo cr0, f10, f6
/* 8038F464  4C 40 13 82 */	cror 2, 0, 2
/* 8038F468  40 82 00 E4 */	bne lbl_8038F54C
lbl_8038F46C:
/* 8038F46C  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 8038F470  C0 03 19 A4 */	lfs f0, data_806419A4@l(r3)  /* 0x806419A4@l */
/* 8038F474  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8038F478  40 81 00 6C */	ble lbl_8038F4E4
/* 8038F47C  FC 40 08 34 */	frsqrte f2, f1
/* 8038F480  3C 60 80 64 */	lis r3, lit_587@ha /* 0x806419B4@ha */
/* 8038F484  38 83 19 B4 */	addi r4, r3, lit_587@l /* 0x806419B4@l */
/* 8038F488  3C 60 80 64 */	lis r3, lit_588@ha /* 0x806419BC@ha */
/* 8038F48C  C8 84 00 00 */	lfd f4, 0(r4)
/* 8038F490  FC 02 00 B2 */	fmul f0, f2, f2
/* 8038F494  C8 63 19 BC */	lfd f3, lit_588@l(r3)  /* 0x806419BC@l */
/* 8038F498  FC 44 00 B2 */	fmul f2, f4, f2
/* 8038F49C  FC 01 00 32 */	fmul f0, f1, f0
/* 8038F4A0  FC 03 00 28 */	fsub f0, f3, f0
/* 8038F4A4  FC 42 00 32 */	fmul f2, f2, f0
/* 8038F4A8  FC 02 00 B2 */	fmul f0, f2, f2
/* 8038F4AC  FC 44 00 B2 */	fmul f2, f4, f2
/* 8038F4B0  FC 01 00 32 */	fmul f0, f1, f0
/* 8038F4B4  FC 03 00 28 */	fsub f0, f3, f0
/* 8038F4B8  FC 42 00 32 */	fmul f2, f2, f0
/* 8038F4BC  FC 02 00 B2 */	fmul f0, f2, f2
/* 8038F4C0  FC 44 00 B2 */	fmul f2, f4, f2
/* 8038F4C4  FC 01 00 32 */	fmul f0, f1, f0
/* 8038F4C8  FC 03 00 28 */	fsub f0, f3, f0
/* 8038F4CC  FC 02 00 32 */	fmul f0, f2, f0
/* 8038F4D0  FC 01 00 32 */	fmul f0, f1, f0
/* 8038F4D4  FC 00 00 18 */	frsp f0, f0
/* 8038F4D8  D0 01 00 08 */	stfs f0, 8(r1)
/* 8038F4DC  C0 01 00 08 */	lfs f0, 8(r1)
/* 8038F4E0  48 00 00 08 */	b lbl_8038F4E8
lbl_8038F4E4:
/* 8038F4E4  FC 00 08 90 */	fmr f0, f1
lbl_8038F4E8:
/* 8038F4E8  EC 1D 00 28 */	fsubs f0, f29, f0
/* 8038F4EC  C0 61 00 48 */	lfs f3, 0x48(r1)
/* 8038F4F0  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8038F4F4  C0 81 00 44 */	lfs f4, 0x44(r1)
/* 8038F4F8  EC A0 E8 24 */	fdivs f5, f0, f29
/* 8038F4FC  C0 41 00 4C */	lfs f2, 0x4c(r1)
/* 8038F500  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 8038F504  EC 63 01 72 */	fmuls f3, f3, f5
/* 8038F508  EC 84 01 72 */	fmuls f4, f4, f5
/* 8038F50C  EC 42 01 72 */	fmuls f2, f2, f5
/* 8038F510  EC 21 18 2A */	fadds f1, f1, f3
/* 8038F514  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 8038F518  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 8038F51C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8038F520  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8038F524  4C 40 13 82 */	cror 2, 0, 2
/* 8038F528  40 82 00 24 */	bne lbl_8038F54C
/* 8038F52C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038F530  38 60 00 01 */	li r3, 1
/* 8038F534  80 81 00 18 */	lwz r4, 0x18(r1)
/* 8038F538  90 19 00 00 */	stw r0, 0(r25)
/* 8038F53C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8038F540  90 99 00 04 */	stw r4, 4(r25)
/* 8038F544  90 19 00 08 */	stw r0, 8(r25)
/* 8038F548  48 00 00 18 */	b lbl_8038F560
lbl_8038F54C:
/* 8038F54C  3B 5A 00 20 */	addi r26, r26, 0x20
lbl_8038F550:
/* 8038F550  3B DE 00 01 */	addi r30, r30, 1
lbl_8038F554:
/* 8038F554  7C 1E D8 00 */	cmpw r30, r27
/* 8038F558  41 80 FC 10 */	blt lbl_8038F168
/* 8038F55C  38 60 00 00 */	li r3, 0
lbl_8038F560:
/* 8038F560  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 8038F564  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 8038F568  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 8038F56C  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 8038F570  E3 A1 00 98 */	psq_l f29, 152(r1), 0, 0 /* qr0 */
/* 8038F574  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 8038F578  E3 81 00 88 */	psq_l f28, 136(r1), 0, 0 /* qr0 */
/* 8038F57C  CB 81 00 80 */	lfd f28, 0x80(r1)
/* 8038F580  E3 61 00 78 */	psq_l f27, 120(r1), 0, 0 /* qr0 */
/* 8038F584  39 61 00 70 */	addi r11, r1, 0x70
/* 8038F588  CB 61 00 70 */	lfd f27, 0x70(r1)
/* 8038F58C  4B D0 B9 85 */	bl func_8009AF10
/* 8038F590  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8038F594  7C 08 03 A6 */	mtlr r0
/* 8038F598  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8038F59C  4E 80 00 20 */	blr 
