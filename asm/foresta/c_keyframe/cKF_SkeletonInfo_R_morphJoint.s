lbl_80370D50:
/* 80370D50  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80370D54  7C 08 02 A6 */	mflr r0
/* 80370D58  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80370D5C  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80370D60  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 80370D64  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80370D68  4B D2 A1 45 */	bl func_8009AEAC
/* 80370D6C  7C 76 1B 78 */	mr r22, r3
/* 80370D70  3C 60 80 64 */	lis r3, lit_536@ha /* 0x80641184@ha */
/* 80370D74  C0 36 00 20 */	lfs f1, 0x20(r22)
/* 80370D78  C0 03 11 84 */	lfs f0, lit_536@l(r3)  /* 0x80641184@l */
/* 80370D7C  FC 20 0A 10 */	fabs f1, f1
/* 80370D80  83 D6 00 24 */	lwz r30, 0x24(r22)
/* 80370D84  83 B6 00 28 */	lwz r29, 0x28(r22)
/* 80370D88  FC 20 08 18 */	frsp f1, f1
/* 80370D8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80370D90  41 80 00 14 */	blt lbl_80370DA4
/* 80370D94  3C 60 80 64 */	lis r3, lit_597@ha /* 0x806411A4@ha */
/* 80370D98  C0 03 11 A4 */	lfs f0, lit_597@l(r3)  /* 0x806411A4@l */
/* 80370D9C  EF E0 08 24 */	fdivs f31, f0, f1
/* 80370DA0  48 00 00 0C */	b lbl_80370DAC
lbl_80370DA4:
/* 80370DA4  3C 60 80 64 */	lis r3, lit_449@ha /* 0x80641178@ha */
/* 80370DA8  C3 E3 11 78 */	lfs f31, lit_449@l(r3)  /* 0x80641178@l */
lbl_80370DAC:
/* 80370DAC  FC 20 F8 90 */	fmr f1, f31
/* 80370DB0  7F C3 F3 78 */	mr r3, r30
/* 80370DB4  7F A4 EB 78 */	mr r4, r29
/* 80370DB8  4B FF FC 39 */	bl cKF_SkeletonInfo_morphST
/* 80370DBC  3B E0 00 00 */	li r31, 0
/* 80370DC0  3B DE 00 06 */	addi r30, r30, 6
/* 80370DC4  3B BD 00 06 */	addi r29, r29, 6
/* 80370DC8  48 00 02 1C */	b lbl_80370FE4
lbl_80370DCC:
/* 80370DCC  A8 9E 00 00 */	lha r4, 0(r30)
/* 80370DD0  A8 BD 00 00 */	lha r5, 0(r29)
/* 80370DD4  AB 9E 00 02 */	lha r28, 2(r30)
/* 80370DD8  7C 04 28 00 */	cmpw r4, r5
/* 80370DDC  AB 7E 00 04 */	lha r27, 4(r30)
/* 80370DE0  AB 5D 00 02 */	lha r26, 2(r29)
/* 80370DE4  AB 3D 00 04 */	lha r25, 4(r29)
/* 80370DE8  40 82 00 14 */	bne lbl_80370DFC
/* 80370DEC  7C 1C D0 00 */	cmpw r28, r26
/* 80370DF0  40 82 00 0C */	bne lbl_80370DFC
/* 80370DF4  7C 1B C8 00 */	cmpw r27, r25
/* 80370DF8  41 82 01 E0 */	beq lbl_80370FD8
lbl_80370DFC:
/* 80370DFC  38 04 7F FF */	addi r0, r4, 0x7fff
/* 80370E00  20 7C 7F FF */	subfic r3, r28, 0x7fff
/* 80370E04  7C 00 07 34 */	extsh r0, r0
/* 80370E08  3E A0 43 30 */	lis r21, 0x4330
/* 80370E0C  6F 54 80 00 */	xoris r20, r26, 0x8000
/* 80370E10  6C AB 80 00 */	xoris r11, r5, 0x8000
/* 80370E14  7C 78 07 34 */	extsh r24, r3
/* 80370E18  6F 8C 80 00 */	xoris r12, r28, 0x8000
/* 80370E1C  6C 8A 80 00 */	xoris r10, r4, 0x8000
/* 80370E20  6C 06 80 00 */	xoris r6, r0, 0x8000
/* 80370E24  6F 29 80 00 */	xoris r9, r25, 0x8000
/* 80370E28  6F 07 80 00 */	xoris r7, r24, 0x8000
/* 80370E2C  38 7B 7F FF */	addi r3, r27, 0x7fff
/* 80370E30  3D 00 80 64 */	lis r8, lit_540@ha /* 0x80641194@ha */
/* 80370E34  3A 68 11 94 */	addi r19, r8, lit_540@l /* 0x80641194@l */
/* 80370E38  6F 68 80 00 */	xoris r8, r27, 0x8000
/* 80370E3C  7C 77 07 34 */	extsh r23, r3
/* 80370E40  92 81 00 0C */	stw r20, 0xc(r1)
/* 80370E44  6E E3 80 00 */	xoris r3, r23, 0x8000
/* 80370E48  C8 13 00 00 */	lfd f0, 0(r19)
/* 80370E4C  92 A1 00 08 */	stw r21, 8(r1)
/* 80370E50  C8 21 00 08 */	lfd f1, 8(r1)
/* 80370E54  91 81 00 14 */	stw r12, 0x14(r1)
/* 80370E58  EC 61 00 28 */	fsubs f3, f1, f0
/* 80370E5C  92 A1 00 10 */	stw r21, 0x10(r1)
/* 80370E60  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 80370E64  91 61 00 1C */	stw r11, 0x1c(r1)
/* 80370E68  EC 41 00 28 */	fsubs f2, f1, f0
/* 80370E6C  92 A1 00 18 */	stw r21, 0x18(r1)
/* 80370E70  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 80370E74  EC 43 10 28 */	fsubs f2, f3, f2
/* 80370E78  91 41 00 24 */	stw r10, 0x24(r1)
/* 80370E7C  EC 81 00 28 */	fsubs f4, f1, f0
/* 80370E80  92 A1 00 20 */	stw r21, 0x20(r1)
/* 80370E84  FC 20 12 10 */	fabs f1, f2
/* 80370E88  C8 41 00 20 */	lfd f2, 0x20(r1)
/* 80370E8C  92 81 00 3C */	stw r20, 0x3c(r1)
/* 80370E90  FC 20 08 18 */	frsp f1, f1
/* 80370E94  EC 62 00 28 */	fsubs f3, f2, f0
/* 80370E98  92 A1 00 38 */	stw r21, 0x38(r1)
/* 80370E9C  C8 41 00 38 */	lfd f2, 0x38(r1)
/* 80370EA0  EC 64 18 28 */	fsubs f3, f4, f3
/* 80370EA4  90 E1 00 44 */	stw r7, 0x44(r1)
/* 80370EA8  EC A2 00 28 */	fsubs f5, f2, f0
/* 80370EAC  92 A1 00 40 */	stw r21, 0x40(r1)
/* 80370EB0  FC 40 1A 10 */	fabs f2, f3
/* 80370EB4  C8 61 00 40 */	lfd f3, 0x40(r1)
/* 80370EB8  FC 40 10 18 */	frsp f2, f2
/* 80370EBC  91 61 00 4C */	stw r11, 0x4c(r1)
/* 80370EC0  EC 83 00 28 */	fsubs f4, f3, f0
/* 80370EC4  92 A1 00 48 */	stw r21, 0x48(r1)
/* 80370EC8  EC 62 08 2A */	fadds f3, f2, f1
/* 80370ECC  C8 21 00 48 */	lfd f1, 0x48(r1)
/* 80370ED0  EC 45 20 28 */	fsubs f2, f5, f4
/* 80370ED4  90 C1 00 54 */	stw r6, 0x54(r1)
/* 80370ED8  EC 81 00 28 */	fsubs f4, f1, f0
/* 80370EDC  92 A1 00 50 */	stw r21, 0x50(r1)
/* 80370EE0  FC 20 12 10 */	fabs f1, f2
/* 80370EE4  C8 41 00 50 */	lfd f2, 0x50(r1)
/* 80370EE8  91 21 00 2C */	stw r9, 0x2c(r1)
/* 80370EEC  FC 20 08 18 */	frsp f1, f1
/* 80370EF0  EC 42 00 28 */	fsubs f2, f2, f0
/* 80370EF4  92 A1 00 28 */	stw r21, 0x28(r1)
/* 80370EF8  C8 A1 00 28 */	lfd f5, 0x28(r1)
/* 80370EFC  EC 44 10 28 */	fsubs f2, f4, f2
/* 80370F00  91 01 00 34 */	stw r8, 0x34(r1)
/* 80370F04  EC A5 00 28 */	fsubs f5, f5, f0
/* 80370F08  92 A1 00 30 */	stw r21, 0x30(r1)
/* 80370F0C  FC 40 12 10 */	fabs f2, f2
/* 80370F10  C8 81 00 30 */	lfd f4, 0x30(r1)
/* 80370F14  FC 40 10 18 */	frsp f2, f2
/* 80370F18  91 21 00 5C */	stw r9, 0x5c(r1)
/* 80370F1C  EC 84 00 28 */	fsubs f4, f4, f0
/* 80370F20  92 A1 00 58 */	stw r21, 0x58(r1)
/* 80370F24  EC 22 08 2A */	fadds f1, f2, f1
/* 80370F28  C8 41 00 58 */	lfd f2, 0x58(r1)
/* 80370F2C  EC 85 20 28 */	fsubs f4, f5, f4
/* 80370F30  90 61 00 64 */	stw r3, 0x64(r1)
/* 80370F34  EC A2 00 28 */	fsubs f5, f2, f0
/* 80370F38  92 A1 00 60 */	stw r21, 0x60(r1)
/* 80370F3C  FC 40 22 10 */	fabs f2, f4
/* 80370F40  C8 81 00 60 */	lfd f4, 0x60(r1)
/* 80370F44  FC 40 10 18 */	frsp f2, f2
/* 80370F48  EC 04 00 28 */	fsubs f0, f4, f0
/* 80370F4C  EC 42 18 2A */	fadds f2, f2, f3
/* 80370F50  EC 05 00 28 */	fsubs f0, f5, f0
/* 80370F54  FC 00 02 10 */	fabs f0, f0
/* 80370F58  FC 00 00 18 */	frsp f0, f0
/* 80370F5C  EC 00 08 2A */	fadds f0, f0, f1
/* 80370F60  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80370F64  40 80 00 3C */	bge lbl_80370FA0
/* 80370F68  FC 20 F8 90 */	fmr f1, f31
/* 80370F6C  7F C3 F3 78 */	mr r3, r30
/* 80370F70  4B FF F9 B5 */	bl cKF_SkeletonInfo_subRotInterpolation
/* 80370F74  FC 20 F8 90 */	fmr f1, f31
/* 80370F78  7F 84 E3 78 */	mr r4, r28
/* 80370F7C  7F 45 D3 78 */	mr r5, r26
/* 80370F80  38 7E 00 02 */	addi r3, r30, 2
/* 80370F84  4B FF F9 A1 */	bl cKF_SkeletonInfo_subRotInterpolation
/* 80370F88  FC 20 F8 90 */	fmr f1, f31
/* 80370F8C  7F 64 DB 78 */	mr r4, r27
/* 80370F90  7F 25 CB 78 */	mr r5, r25
/* 80370F94  38 7E 00 04 */	addi r3, r30, 4
/* 80370F98  4B FF F9 8D */	bl cKF_SkeletonInfo_subRotInterpolation
/* 80370F9C  48 00 00 3C */	b lbl_80370FD8
lbl_80370FA0:
/* 80370FA0  FC 20 F8 90 */	fmr f1, f31
/* 80370FA4  7F C3 F3 78 */	mr r3, r30
/* 80370FA8  7C 04 03 78 */	mr r4, r0
/* 80370FAC  4B FF F9 79 */	bl cKF_SkeletonInfo_subRotInterpolation
/* 80370FB0  FC 20 F8 90 */	fmr f1, f31
/* 80370FB4  7F 04 C3 78 */	mr r4, r24
/* 80370FB8  7F 45 D3 78 */	mr r5, r26
/* 80370FBC  38 7E 00 02 */	addi r3, r30, 2
/* 80370FC0  4B FF F9 65 */	bl cKF_SkeletonInfo_subRotInterpolation
/* 80370FC4  FC 20 F8 90 */	fmr f1, f31
/* 80370FC8  7E E4 BB 78 */	mr r4, r23
/* 80370FCC  7F 25 CB 78 */	mr r5, r25
/* 80370FD0  38 7E 00 04 */	addi r3, r30, 4
/* 80370FD4  4B FF F9 51 */	bl cKF_SkeletonInfo_subRotInterpolation
lbl_80370FD8:
/* 80370FD8  3B BD 00 06 */	addi r29, r29, 6
/* 80370FDC  3B DE 00 06 */	addi r30, r30, 6
/* 80370FE0  3B FF 00 01 */	addi r31, r31, 1
lbl_80370FE4:
/* 80370FE4  80 76 00 18 */	lwz r3, 0x18(r22)
/* 80370FE8  88 03 00 00 */	lbz r0, 0(r3)
/* 80370FEC  7C 1F 00 00 */	cmpw r31, r0
/* 80370FF0  41 80 FD DC */	blt lbl_80370DCC
/* 80370FF4  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 80370FF8  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80370FFC  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 80371000  4B D2 9E F9 */	bl func_8009AEF8
/* 80371004  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80371008  7C 08 03 A6 */	mtlr r0
/* 8037100C  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80371010  4E 80 00 20 */	blr 
