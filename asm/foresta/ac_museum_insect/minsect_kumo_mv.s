lbl_8046A02C:
/* 8046A02C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8046A030  7C 08 02 A6 */	mflr r0
/* 8046A034  90 01 00 64 */	stw r0, 0x64(r1)
/* 8046A038  39 61 00 60 */	addi r11, r1, 0x60
/* 8046A03C  4B C3 0E 99 */	bl func_8009AED4
/* 8046A040  7C 7D 1B 78 */	mr r29, r3
/* 8046A044  7C 9E 23 78 */	mr r30, r4
/* 8046A048  4B FF F7 9D */	bl minsect_kumo_check_player
/* 8046A04C  7F A3 EB 78 */	mr r3, r29
/* 8046A050  7F C4 F3 78 */	mr r4, r30
/* 8046A054  4B FF F8 35 */	bl minsect_kumo_furiko
/* 8046A058  3C 60 80 47 */	lis r3, minsect_kumo_hide@ha /* 0x80468EC4@ha */
/* 8046A05C  80 9D 00 04 */	lwz r4, 4(r29)
/* 8046A060  38 03 8E C4 */	addi r0, r3, minsect_kumo_hide@l /* 0x80468EC4@l */
/* 8046A064  7C 04 00 40 */	cmplw r4, r0
/* 8046A068  41 82 00 10 */	beq lbl_8046A078
/* 8046A06C  7F A3 EB 78 */	mr r3, r29
/* 8046A070  7F C4 F3 78 */	mr r4, r30
/* 8046A074  4B FF FD 85 */	bl minsect_kumo_hineri
lbl_8046A078:
/* 8046A078  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8046A07C  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 8046A080  80 63 00 00 */	lwz r3, 0(r3)
/* 8046A084  A8 03 16 96 */	lha r0, 0x1696(r3)
/* 8046A088  2C 00 00 00 */	cmpwi r0, 0
/* 8046A08C  41 82 01 98 */	beq lbl_8046A224
/* 8046A090  80 1E 20 90 */	lwz r0, 0x2090(r30)
/* 8046A094  54 00 07 7F */	clrlwi. r0, r0, 0x1d
/* 8046A098  40 82 01 8C */	bne lbl_8046A224
/* 8046A09C  A8 63 16 9E */	lha r3, 0x169e(r3)
/* 8046A0A0  3C 00 43 30 */	lis r0, 0x4330
/* 8046A0A4  90 01 00 48 */	stw r0, 0x48(r1)
/* 8046A0A8  3C 80 80 64 */	lis r4, lit_589@ha /* 0x8064463C@ha */
/* 8046A0AC  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8046A0B0  C8 24 46 3C */	lfd f1, lit_589@l(r4)  /* 0x8064463C@l */
/* 8046A0B4  90 61 00 4C */	stw r3, 0x4c(r1)
/* 8046A0B8  3C A0 80 64 */	lis r5, lit_678@ha /* 0x80644654@ha */
/* 8046A0BC  80 DD 00 20 */	lwz r6, 0x20(r29)
/* 8046A0C0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8046A0C4  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 8046A0C8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8046A0CC  3F E3 00 02 */	addis r31, r3, 2
/* 8046A0D0  C0 45 46 54 */	lfs f2, lit_678@l(r5)  /* 0x80644654@l */
/* 8046A0D4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8046A0D8  90 C1 00 3C */	stw r6, 0x3c(r1)
/* 8046A0DC  80 1D 00 1C */	lwz r0, 0x1c(r29)
/* 8046A0E0  7F C7 F3 78 */	mr r7, r30
/* 8046A0E4  81 9D 00 24 */	lwz r12, 0x24(r29)
/* 8046A0E8  38 81 00 2C */	addi r4, r1, 0x2c
/* 8046A0EC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8046A0F0  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 8046A0F4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8046A0F8  38 60 00 65 */	li r3, 0x65
/* 8046A0FC  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 8046A100  38 A0 00 01 */	li r5, 1
/* 8046A104  EC 01 00 2A */	fadds f0, f1, f0
/* 8046A108  90 01 00 38 */	stw r0, 0x38(r1)
/* 8046A10C  38 C0 00 00 */	li r6, 0
/* 8046A110  39 00 58 43 */	li r8, 0x5843
/* 8046A114  91 81 00 34 */	stw r12, 0x34(r1)
/* 8046A118  39 20 00 02 */	li r9, 2
/* 8046A11C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8046A120  39 40 00 00 */	li r10, 0
/* 8046A124  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8046A128  91 81 00 40 */	stw r12, 0x40(r1)
/* 8046A12C  90 01 00 30 */	stw r0, 0x30(r1)
/* 8046A130  81 8B 00 00 */	lwz r12, 0(r11)
/* 8046A134  7D 89 03 A6 */	mtctr r12
/* 8046A138  4E 80 04 21 */	bctrl 
/* 8046A13C  80 BD 00 1C */	lwz r5, 0x1c(r29)
/* 8046A140  7F C7 F3 78 */	mr r7, r30
/* 8046A144  80 1D 00 20 */	lwz r0, 0x20(r29)
/* 8046A148  38 81 00 20 */	addi r4, r1, 0x20
/* 8046A14C  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 8046A150  38 60 00 65 */	li r3, 0x65
/* 8046A154  90 A1 00 20 */	stw r5, 0x20(r1)
/* 8046A158  38 A0 00 01 */	li r5, 1
/* 8046A15C  38 C0 00 00 */	li r6, 0
/* 8046A160  39 00 58 43 */	li r8, 0x5843
/* 8046A164  90 01 00 24 */	stw r0, 0x24(r1)
/* 8046A168  39 20 00 01 */	li r9, 1
/* 8046A16C  39 40 00 00 */	li r10, 0
/* 8046A170  80 1D 00 24 */	lwz r0, 0x24(r29)
/* 8046A174  90 01 00 28 */	stw r0, 0x28(r1)
/* 8046A178  81 8B 00 00 */	lwz r12, 0(r11)
/* 8046A17C  7D 89 03 A6 */	mtctr r12
/* 8046A180  4E 80 04 21 */	bctrl 
/* 8046A184  3C 60 80 64 */	lis r3, kumo_base_pos@ha /* 0x80644868@ha */
/* 8046A188  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 8046A18C  38 A3 48 68 */	addi r5, r3, kumo_base_pos@l /* 0x80644868@l */
/* 8046A190  7F C7 F3 78 */	mr r7, r30
/* 8046A194  80 C5 00 00 */	lwz r6, 0(r5)
/* 8046A198  38 81 00 14 */	addi r4, r1, 0x14
/* 8046A19C  81 45 00 04 */	lwz r10, 4(r5)
/* 8046A1A0  38 60 00 65 */	li r3, 0x65
/* 8046A1A4  80 05 00 08 */	lwz r0, 8(r5)
/* 8046A1A8  38 A0 00 01 */	li r5, 1
/* 8046A1AC  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8046A1B0  38 C0 00 00 */	li r6, 0
/* 8046A1B4  39 00 58 43 */	li r8, 0x5843
/* 8046A1B8  39 20 00 03 */	li r9, 3
/* 8046A1BC  91 41 00 18 */	stw r10, 0x18(r1)
/* 8046A1C0  39 40 00 00 */	li r10, 0
/* 8046A1C4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8046A1C8  81 8B 00 00 */	lwz r12, 0(r11)
/* 8046A1CC  7D 89 03 A6 */	mtctr r12
/* 8046A1D0  4E 80 04 21 */	bctrl 
/* 8046A1D4  3C 60 80 64 */	lis r3, kumo_top_pos@ha /* 0x80644874@ha */
/* 8046A1D8  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 8046A1DC  38 A3 48 74 */	addi r5, r3, kumo_top_pos@l /* 0x80644874@l */
/* 8046A1E0  7F C7 F3 78 */	mr r7, r30
/* 8046A1E4  80 C5 00 00 */	lwz r6, 0(r5)
/* 8046A1E8  38 81 00 08 */	addi r4, r1, 8
/* 8046A1EC  81 45 00 04 */	lwz r10, 4(r5)
/* 8046A1F0  38 60 00 65 */	li r3, 0x65
/* 8046A1F4  80 05 00 08 */	lwz r0, 8(r5)
/* 8046A1F8  38 A0 00 01 */	li r5, 1
/* 8046A1FC  90 C1 00 08 */	stw r6, 8(r1)
/* 8046A200  38 C0 00 00 */	li r6, 0
/* 8046A204  39 00 58 43 */	li r8, 0x5843
/* 8046A208  39 20 00 01 */	li r9, 1
/* 8046A20C  91 41 00 0C */	stw r10, 0xc(r1)
/* 8046A210  39 40 00 00 */	li r10, 0
/* 8046A214  90 01 00 10 */	stw r0, 0x10(r1)
/* 8046A218  81 8B 00 00 */	lwz r12, 0(r11)
/* 8046A21C  7D 89 03 A6 */	mtctr r12
/* 8046A220  4E 80 04 21 */	bctrl 
lbl_8046A224:
/* 8046A224  81 9D 00 04 */	lwz r12, 4(r29)
/* 8046A228  7F A3 EB 78 */	mr r3, r29
/* 8046A22C  7F C4 F3 78 */	mr r4, r30
/* 8046A230  7D 89 03 A6 */	mtctr r12
/* 8046A234  4E 80 04 21 */	bctrl 
/* 8046A238  39 61 00 60 */	addi r11, r1, 0x60
/* 8046A23C  4B C3 0C E5 */	bl func_8009AF20
/* 8046A240  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8046A244  7C 08 03 A6 */	mtlr r0
/* 8046A248  38 21 00 60 */	addi r1, r1, 0x60
/* 8046A24C  4E 80 00 20 */	blr 
