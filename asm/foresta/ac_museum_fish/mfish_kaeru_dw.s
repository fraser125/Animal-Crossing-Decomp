lbl_80459F28:
/* 80459F28  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80459F2C  7C 08 02 A6 */	mflr r0
/* 80459F30  90 01 00 44 */	stw r0, 0x44(r1)
/* 80459F34  39 61 00 40 */	addi r11, r1, 0x40
/* 80459F38  4B C4 0F 89 */	bl func_8009AEC0
/* 80459F3C  80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 80459F40  7C 79 1B 78 */	mr r25, r3
/* 80459F44  83 C3 05 90 */	lwz r30, 0x590(r3)
/* 80459F48  7C 9A 23 78 */	mr r26, r4
/* 80459F4C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80459F50  3B F9 00 38 */	addi r31, r25, 0x38
/* 80459F54  41 82 00 10 */	beq lbl_80459F64
/* 80459F58  3B BF 00 70 */	addi r29, r31, 0x70
/* 80459F5C  3B 9E 00 70 */	addi r28, r30, 0x70
/* 80459F60  48 00 00 0C */	b lbl_80459F6C
lbl_80459F64:
/* 80459F64  3B BF 02 B0 */	addi r29, r31, 0x2b0
/* 80459F68  3B 9E 02 B0 */	addi r28, r30, 0x2b0
lbl_80459F6C:
/* 80459F6C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80459F70  3C 80 43 30 */	lis r4, 0x4330
/* 80459F74  38 A3 61 38 */	addi r5, r3, debug_mode@l /* 0x81166138@l */
/* 80459F78  3C C0 80 64 */	lis r6, lit_527@ha /* 0x80644268@ha */
/* 80459F7C  81 05 00 00 */	lwz r8, 0(r5)
/* 80459F80  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 80459F84  38 A3 42 8C */	addi r5, r3, lit_570@l /* 0x8064428C@l */
/* 80459F88  3C E0 80 68 */	lis r7, hasu_pos@ha /* 0x80684F98@ha */
/* 80459F8C  A8 68 1B 98 */	lha r3, 0x1b98(r8)
/* 80459F90  A8 08 1B 9A */	lha r0, 0x1b9a(r8)
/* 80459F94  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80459F98  C4 A7 4F 98 */	lfsu f5, hasu_pos@l(r7)  /* 0x80684F98@l */
/* 80459F9C  90 61 00 0C */	stw r3, 0xc(r1)
/* 80459FA0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80459FA4  C8 45 00 00 */	lfd f2, 0(r5)
/* 80459FA8  38 60 00 00 */	li r3, 0
/* 80459FAC  90 81 00 08 */	stw r4, 8(r1)
/* 80459FB0  C0 86 42 68 */	lfs f4, lit_527@l(r6)  /* 0x80644268@l */
/* 80459FB4  C8 01 00 08 */	lfd f0, 8(r1)
/* 80459FB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80459FBC  EC 20 10 28 */	fsubs f1, f0, f2
/* 80459FC0  C0 67 00 08 */	lfs f3, 8(r7)
/* 80459FC4  90 81 00 10 */	stw r4, 0x10(r1)
/* 80459FC8  83 7A 00 00 */	lwz r27, 0(r26)
/* 80459FCC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80459FD0  EC 24 00 72 */	fmuls f1, f4, f1
/* 80459FD4  EC 00 10 28 */	fsubs f0, f0, f2
/* 80459FD8  C0 47 00 04 */	lfs f2, 4(r7)
/* 80459FDC  EC 25 08 2A */	fadds f1, f5, f1
/* 80459FE0  EC 04 00 32 */	fmuls f0, f4, f0
/* 80459FE4  EC 63 00 2A */	fadds f3, f3, f0
/* 80459FE8  4B FB 23 19 */	bl Matrix_translate
/* 80459FEC  38 60 80 00 */	li r3, -32768
/* 80459FF0  38 80 00 01 */	li r4, 1
/* 80459FF4  4B FB 26 69 */	bl Matrix_RotateY
/* 80459FF8  3C 80 80 64 */	lis r4, lit_793@ha /* 0x806442C4@ha */
/* 80459FFC  38 60 00 01 */	li r3, 1
/* 8045A000  C0 24 42 C4 */	lfs f1, lit_793@l(r4)  /* 0x806442C4@l */
/* 8045A004  FC 40 08 90 */	fmr f2, f1
/* 8045A008  FC 60 08 90 */	fmr f3, f1
/* 8045A00C  4B FB 23 E1 */	bl Matrix_scale
/* 8045A010  83 1B 02 D0 */	lwz r24, 0x2d0(r27)
/* 8045A014  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8045A018  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8045A01C  38 78 00 08 */	addi r3, r24, 8
/* 8045A020  90 7B 02 D0 */	stw r3, 0x2d0(r27)
/* 8045A024  90 18 00 00 */	stw r0, 0(r24)
/* 8045A028  80 7A 00 00 */	lwz r3, 0(r26)
/* 8045A02C  4B FB 33 A9 */	bl _Matrix_to_Mtx_new
/* 8045A030  3C A0 80 46 */	lis r5, hasu_before_disp@ha /* 0x80459E0C@ha */
/* 8045A034  3C 80 80 46 */	lis r4, hasu_after_disp@ha /* 0x80459EB8@ha */
/* 8045A038  90 78 00 04 */	stw r3, 4(r24)
/* 8045A03C  38 C5 9E 0C */	addi r6, r5, hasu_before_disp@l /* 0x80459E0C@l */
/* 8045A040  38 E4 9E B8 */	addi r7, r4, hasu_after_disp@l /* 0x80459EB8@l */
/* 8045A044  7F 43 D3 78 */	mr r3, r26
/* 8045A048  7F C4 F3 78 */	mr r4, r30
/* 8045A04C  7F 85 E3 78 */	mr r5, r28
/* 8045A050  7F 28 CB 78 */	mr r8, r25
/* 8045A054  4B F1 76 E5 */	bl cKF_Si3_draw_R_SV
/* 8045A058  C0 59 05 A0 */	lfs f2, 0x5a0(r25)
/* 8045A05C  38 60 00 00 */	li r3, 0
/* 8045A060  C0 39 05 AC */	lfs f1, 0x5ac(r25)
/* 8045A064  C0 79 05 A8 */	lfs f3, 0x5a8(r25)
/* 8045A068  C0 19 05 B4 */	lfs f0, 0x5b4(r25)
/* 8045A06C  EC 22 08 2A */	fadds f1, f2, f1
/* 8045A070  C0 59 05 A4 */	lfs f2, 0x5a4(r25)
/* 8045A074  EC 63 00 2A */	fadds f3, f3, f0
/* 8045A078  4B FB 22 89 */	bl Matrix_translate
/* 8045A07C  A8 79 06 0C */	lha r3, 0x60c(r25)
/* 8045A080  38 C0 00 01 */	li r6, 1
/* 8045A084  A8 99 06 0E */	lha r4, 0x60e(r25)
/* 8045A088  A8 B9 06 10 */	lha r5, 0x610(r25)
/* 8045A08C  4B FB 29 09 */	bl Matrix_rotateXYZ
/* 8045A090  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8045A094  C0 79 00 24 */	lfs f3, 0x24(r25)
/* 8045A098  38 83 42 48 */	addi r4, r3, lit_468@l /* 0x80644248@l */
/* 8045A09C  38 60 00 01 */	li r3, 1
/* 8045A0A0  C0 24 00 00 */	lfs f1, 0(r4)
/* 8045A0A4  FC 40 08 90 */	fmr f2, f1
/* 8045A0A8  4B FB 22 59 */	bl Matrix_translate
/* 8045A0AC  C0 39 00 00 */	lfs f1, 0(r25)
/* 8045A0B0  38 60 00 01 */	li r3, 1
/* 8045A0B4  FC 40 08 90 */	fmr f2, f1
/* 8045A0B8  FC 60 08 90 */	fmr f3, f1
/* 8045A0BC  4B FB 23 31 */	bl Matrix_scale
/* 8045A0C0  83 9B 02 D0 */	lwz r28, 0x2d0(r27)
/* 8045A0C4  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8045A0C8  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8045A0CC  38 7C 00 08 */	addi r3, r28, 8
/* 8045A0D0  90 7B 02 D0 */	stw r3, 0x2d0(r27)
/* 8045A0D4  90 1C 00 00 */	stw r0, 0(r28)
/* 8045A0D8  80 7A 00 00 */	lwz r3, 0(r26)
/* 8045A0DC  4B FB 32 F9 */	bl _Matrix_to_Mtx_new
/* 8045A0E0  90 7C 00 04 */	stw r3, 4(r28)
/* 8045A0E4  7F 43 D3 78 */	mr r3, r26
/* 8045A0E8  7F E4 FB 78 */	mr r4, r31
/* 8045A0EC  7F A5 EB 78 */	mr r5, r29
/* 8045A0F0  7F 28 CB 78 */	mr r8, r25
/* 8045A0F4  38 C0 00 00 */	li r6, 0
/* 8045A0F8  38 E0 00 00 */	li r7, 0
/* 8045A0FC  4B F1 76 3D */	bl cKF_Si3_draw_R_SV
/* 8045A100  39 61 00 40 */	addi r11, r1, 0x40
/* 8045A104  4B C4 0E 09 */	bl func_8009AF0C
/* 8045A108  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8045A10C  7C 08 03 A6 */	mtlr r0
/* 8045A110  38 21 00 40 */	addi r1, r1, 0x40
/* 8045A114  4E 80 00 20 */	blr 
