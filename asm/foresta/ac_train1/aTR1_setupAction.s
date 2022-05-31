lbl_805C0970:
/* 805C0970  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805C0974  7C 08 02 A6 */	mflr r0
/* 805C0978  90 01 00 54 */	stw r0, 0x54(r1)
/* 805C097C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 805C0980  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 805C0984  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 805C0988  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 805C098C  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 805C0990  F3 A1 00 28 */	psq_st f29, 40(r1), 0, 0 /* qr0 */
/* 805C0994  39 61 00 20 */	addi r11, r1, 0x20
/* 805C0998  4B AD A5 3D */	bl func_8009AED4
/* 805C099C  3C A0 80 6C */	lis r5, data_806C7200@ha /* 0x806C7200@ha */
/* 805C09A0  7C 9F 23 78 */	mr r31, r4
/* 805C09A4  38 E5 72 00 */	addi r7, r5, data_806C7200@l /* 0x806C7200@l */
/* 805C09A8  3C 80 80 65 */	lis r4, data_8064AC94@ha /* 0x8064AC94@ha */
/* 805C09AC  57 E0 10 3A */	slwi r0, r31, 2
/* 805C09B0  7C 7E 1B 78 */	mr r30, r3
/* 805C09B4  38 67 00 40 */	addi r3, r7, 0x40
/* 805C09B8  38 A7 00 64 */	addi r5, r7, 0x64
/* 805C09BC  7D 03 00 2E */	lwzx r8, r3, r0
/* 805C09C0  38 64 AC 94 */	addi r3, r4, data_8064AC94@l /* 0x8064AC94@l */
/* 805C09C4  38 C7 00 30 */	addi r6, r7, 0x30
/* 805C09C8  38 87 00 38 */	addi r4, r7, 0x38
/* 805C09CC  55 07 10 3A */	slwi r7, r8, 2
/* 805C09D0  7F E5 04 2E */	lfsx f31, r5, r0
/* 805C09D4  7F A6 38 2E */	lwzx r29, r6, r7
/* 805C09D8  7F C4 3C 2E */	lfsx f30, r4, r7
/* 805C09DC  C3 A3 00 00 */	lfs f29, 0(r3)
/* 805C09E0  93 FE 02 B4 */	stw r31, 0x2b4(r30)
/* 805C09E4  80 1E 02 B4 */	lwz r0, 0x2b4(r30)
/* 805C09E8  2C 00 00 06 */	cmpwi r0, 6
/* 805C09EC  41 82 00 0C */	beq lbl_805C09F8
/* 805C09F0  2C 00 00 04 */	cmpwi r0, 4
/* 805C09F4  40 82 00 38 */	bne lbl_805C0A2C
lbl_805C09F8:
/* 805C09F8  4B DD A4 C1 */	bl mEv_CheckTitleDemo
/* 805C09FC  2C 03 00 00 */	cmpwi r3, 0
/* 805C0A00  40 82 00 28 */	bne lbl_805C0A28
/* 805C0A04  3C 60 80 65 */	lis r3, data_8064AC94@ha /* 0x8064AC94@ha */
/* 805C0A08  C0 1E 02 C8 */	lfs f0, 0x2c8(r30)
/* 805C0A0C  C0 23 AC 94 */	lfs f1, data_8064AC94@l(r3)  /* 0x8064AC94@l */
/* 805C0A10  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805C0A14  41 82 00 14 */	beq lbl_805C0A28
/* 805C0A18  7F C3 F3 78 */	mr r3, r30
/* 805C0A1C  38 80 00 2B */	li r4, 0x2b
/* 805C0A20  4B FF FB D5 */	bl func_805C05F4
/* 805C0A24  48 00 00 08 */	b lbl_805C0A2C
lbl_805C0A28:
/* 805C0A28  FF A0 F0 90 */	fmr f29, f30
lbl_805C0A2C:
/* 805C0A2C  3C 80 80 65 */	lis r4, data_8064AC94@ha /* 0x8064AC94@ha */
/* 805C0A30  3C 60 80 65 */	lis r3, lit_487@ha /* 0x8064ACAC@ha */
/* 805C0A34  38 A4 AC 94 */	addi r5, r4, data_8064AC94@l /* 0x8064AC94@l */
/* 805C0A38  FC 40 F0 90 */	fmr f2, f30
/* 805C0A3C  C0 25 00 00 */	lfs f1, 0(r5)
/* 805C0A40  FC 60 E8 90 */	fmr f3, f29
/* 805C0A44  C0 A3 AC AC */	lfs f5, lit_487@l(r3)  /* 0x8064ACAC@l */
/* 805C0A48  FC 80 F8 90 */	fmr f4, f31
/* 805C0A4C  80 9E 01 90 */	lwz r4, 0x190(r30)
/* 805C0A50  7F A5 EB 78 */	mr r5, r29
/* 805C0A54  38 7E 01 78 */	addi r3, r30, 0x178
/* 805C0A58  38 C0 00 00 */	li r6, 0
/* 805C0A5C  38 E0 00 00 */	li r7, 0
/* 805C0A60  4B DB 02 75 */	bl cKF_SkeletonInfo_R_init
/* 805C0A64  7F E3 FB 78 */	mr r3, r31
/* 805C0A68  4B FF FD 31 */	bl aTR1_chg_station_attr
/* 805C0A6C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 805C0A70  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 805C0A74  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 805C0A78  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 805C0A7C  E3 A1 00 28 */	psq_l f29, 40(r1), 0, 0 /* qr0 */
/* 805C0A80  39 61 00 20 */	addi r11, r1, 0x20
/* 805C0A84  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 805C0A88  4B AD A4 99 */	bl func_8009AF20
/* 805C0A8C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805C0A90  7C 08 03 A6 */	mtlr r0
/* 805C0A94  38 21 00 50 */	addi r1, r1, 0x50
/* 805C0A98  4E 80 00 20 */	blr 
