lbl_804BF054:
/* 804BF054  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804BF058  7C 08 02 A6 */	mflr r0
/* 804BF05C  90 01 00 64 */	stw r0, 0x64(r1)
/* 804BF060  39 61 00 60 */	addi r11, r1, 0x60
/* 804BF064  4B BD BE 59 */	bl func_8009AEBC
/* 804BF068  3C C0 80 6A */	lis r6, BI_chk_pos@ha /* 0x8069889C@ha */
/* 804BF06C  7C 7A 1B 78 */	mr r26, r3
/* 804BF070  7C 9B 23 78 */	mr r27, r4
/* 804BF074  7C BC 2B 78 */	mr r28, r5
/* 804BF078  3B E6 88 9C */	addi r31, r6, BI_chk_pos@l /* 0x8069889C@l */
/* 804BF07C  3B C0 00 09 */	li r30, 9
/* 804BF080  3B 20 00 48 */	li r25, 0x48
/* 804BF084  3B A0 00 00 */	li r29, 0
/* 804BF088  48 00 01 00 */	b lbl_804BF188
lbl_804BF08C:
/* 804BF08C  3B 39 FF F8 */	addi r25, r25, -8
/* 804BF090  C0 5A 00 00 */	lfs f2, 0(r26)
/* 804BF094  7C 7F CA 14 */	add r3, r31, r25
/* 804BF098  80 01 00 30 */	lwz r0, 0x30(r1)
/* 804BF09C  C0 23 00 00 */	lfs f1, 0(r3)
/* 804BF0A0  3B DE FF FF */	addi r30, r30, -1
/* 804BF0A4  C0 03 00 04 */	lfs f0, 4(r3)
/* 804BF0A8  38 61 00 20 */	addi r3, r1, 0x20
/* 804BF0AC  EC 22 08 2A */	fadds f1, f2, f1
/* 804BF0B0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 804BF0B4  C0 3A 00 08 */	lfs f1, 8(r26)
/* 804BF0B8  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 804BF0BC  EC 01 00 2A */	fadds f0, f1, f0
/* 804BF0C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804BF0C4  90 81 00 20 */	stw r4, 0x20(r1)
/* 804BF0C8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804BF0CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804BF0D0  90 01 00 28 */	stw r0, 0x28(r1)
/* 804BF0D4  4B EE 83 5D */	bl mFI_GetUnitFG
/* 804BF0D8  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 804BF0DC  7C 77 1B 78 */	mr r23, r3
/* 804BF0E0  80 81 00 30 */	lwz r4, 0x30(r1)
/* 804BF0E4  38 61 00 14 */	addi r3, r1, 0x14
/* 804BF0E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804BF0EC  90 A1 00 14 */	stw r5, 0x14(r1)
/* 804BF0F0  C0 38 00 00 */	lfs f1, 0(r24)
/* 804BF0F4  90 81 00 18 */	stw r4, 0x18(r1)
/* 804BF0F8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804BF0FC  4B ED 08 9D */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804BF100  28 17 00 00 */	cmplwi r23, 0
/* 804BF104  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 804BF108  41 82 00 88 */	beq lbl_804BF190
/* 804BF10C  A0 77 00 00 */	lhz r3, 0(r23)
/* 804BF110  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 804BF114  7C 03 00 40 */	cmplw r3, r0
/* 804BF118  40 82 00 78 */	bne lbl_804BF190
/* 804BF11C  3C 60 80 64 */	lis r3, lit_633@ha /* 0x80646140@ha */
/* 804BF120  FC 60 08 18 */	frsp f3, f1
/* 804BF124  C0 5C 00 04 */	lfs f2, 4(r28)
/* 804BF128  C0 23 61 40 */	lfs f1, lit_633@l(r3)  /* 0x80646140@l */
/* 804BF12C  EC 01 10 2A */	fadds f0, f1, f2
/* 804BF130  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 804BF134  4C 40 13 82 */	cror 2, 0, 2
/* 804BF138  40 82 00 58 */	bne lbl_804BF190
/* 804BF13C  EC 02 08 28 */	fsubs f0, f2, f1
/* 804BF140  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 804BF144  4C 41 13 82 */	cror 2, 1, 2
/* 804BF148  40 82 00 48 */	bne lbl_804BF190
/* 804BF14C  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 804BF150  38 61 00 08 */	addi r3, r1, 8
/* 804BF154  80 81 00 30 */	lwz r4, 0x30(r1)
/* 804BF158  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804BF15C  90 A1 00 08 */	stw r5, 8(r1)
/* 804BF160  90 81 00 0C */	stw r4, 0xc(r1)
/* 804BF164  90 01 00 10 */	stw r0, 0x10(r1)
/* 804BF168  4B ED 0D 71 */	bl mCoBG_CheckPlace
/* 804BF16C  2C 03 00 00 */	cmpwi r3, 0
/* 804BF170  41 82 00 20 */	beq lbl_804BF190
/* 804BF174  7F 43 D3 78 */	mr r3, r26
/* 804BF178  38 81 00 2C */	addi r4, r1, 0x2c
/* 804BF17C  4B EF BD 41 */	bl xyz_t_move
/* 804BF180  3B A0 00 01 */	li r29, 1
/* 804BF184  48 00 00 14 */	b lbl_804BF198
lbl_804BF188:
/* 804BF188  3C 60 80 64 */	lis r3, data_8064613C@ha /* 0x8064613C@ha */
/* 804BF18C  3B 03 61 3C */	addi r24, r3, data_8064613C@l /* 0x8064613C@l */
lbl_804BF190:
/* 804BF190  2C 1E 00 00 */	cmpwi r30, 0
/* 804BF194  40 82 FE F8 */	bne lbl_804BF08C
lbl_804BF198:
/* 804BF198  7F A3 EB 78 */	mr r3, r29
/* 804BF19C  39 61 00 60 */	addi r11, r1, 0x60
/* 804BF1A0  4B BD BD 69 */	bl func_8009AF08
/* 804BF1A4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804BF1A8  7C 08 03 A6 */	mtlr r0
/* 804BF1AC  38 21 00 60 */	addi r1, r1, 0x60
/* 804BF1B0  4E 80 00 20 */	blr 
