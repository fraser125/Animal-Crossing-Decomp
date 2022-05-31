lbl_8037E90C:
/* 8037E90C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8037E910  7C 08 02 A6 */	mflr r0
/* 8037E914  90 01 00 74 */	stw r0, 0x74(r1)
/* 8037E918  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8037E91C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8037E920  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 8037E924  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 8037E928  39 61 00 50 */	addi r11, r1, 0x50
/* 8037E92C  4B D1 C5 A9 */	bl func_8009AED4
/* 8037E930  FF E0 10 90 */	fmr f31, f2
/* 8037E934  3D 00 80 64 */	lis r8, lit_474@ha /* 0x80641354@ha */
/* 8037E938  3C E0 80 64 */	lis r7, lit_708@ha /* 0x80641454@ha */
/* 8037E93C  3C C0 80 64 */	lis r6, lit_709@ha /* 0x80641458@ha */
/* 8037E940  FF C0 08 90 */	fmr f30, f1
/* 8037E944  C0 48 13 54 */	lfs f2, lit_474@l(r8)  /* 0x80641354@l */
/* 8037E948  FC 60 F8 90 */	fmr f3, f31
/* 8037E94C  C0 87 14 54 */	lfs f4, lit_708@l(r7)  /* 0x80641454@l */
/* 8037E950  C0 A6 14 58 */	lfs f5, lit_709@l(r6)  /* 0x80641458@l */
/* 8037E954  7C 7D 1B 78 */	mr r29, r3
/* 8037E958  7C 9E 23 78 */	mr r30, r4
/* 8037E95C  7C BF 2B 78 */	mr r31, r5
/* 8037E960  48 03 CC 9D */	bl get_percent_forAccelBrake
/* 8037E964  80 9D 1B 94 */	lwz r4, 0x1b94(r29)
/* 8037E968  3C 60 80 64 */	lis r3, lit_508@ha /* 0x8064136C@ha */
/* 8037E96C  80 1D 1B 98 */	lwz r0, 0x1b98(r29)
/* 8037E970  38 FD 1B 94 */	addi r7, r29, 0x1b94
/* 8037E974  C0 03 13 6C */	lfs f0, lit_508@l(r3)  /* 0x8064136C@l */
/* 8037E978  38 BD 1B CC */	addi r5, r29, 0x1bcc
/* 8037E97C  90 81 00 20 */	stw r4, 0x20(r1)
/* 8037E980  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8037E984  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037E988  80 1D 1B 9C */	lwz r0, 0x1b9c(r29)
/* 8037E98C  90 01 00 28 */	stw r0, 0x28(r1)
/* 8037E990  4C 41 13 82 */	cror 2, 1, 2
/* 8037E994  40 82 00 20 */	bne lbl_8037E9B4
/* 8037E998  80 9F 00 00 */	lwz r4, 0(r31)
/* 8037E99C  80 7F 00 04 */	lwz r3, 4(r31)
/* 8037E9A0  80 1F 00 08 */	lwz r0, 8(r31)
/* 8037E9A4  90 81 00 14 */	stw r4, 0x14(r1)
/* 8037E9A8  90 61 00 18 */	stw r3, 0x18(r1)
/* 8037E9AC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8037E9B0  48 00 00 4C */	b lbl_8037E9FC
lbl_8037E9B4:
/* 8037E9B4  C0 9E 00 00 */	lfs f4, 0(r30)
/* 8037E9B8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8037E9BC  C0 BE 00 04 */	lfs f5, 4(r30)
/* 8037E9C0  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8037E9C4  EC 60 20 28 */	fsubs f3, f0, f4
/* 8037E9C8  C0 DE 00 08 */	lfs f6, 8(r30)
/* 8037E9CC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8037E9D0  EC 42 28 28 */	fsubs f2, f2, f5
/* 8037E9D4  EC 61 00 F2 */	fmuls f3, f1, f3
/* 8037E9D8  EC 00 30 28 */	fsubs f0, f0, f6
/* 8037E9DC  EC 41 00 B2 */	fmuls f2, f1, f2
/* 8037E9E0  EC 64 18 2A */	fadds f3, f4, f3
/* 8037E9E4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8037E9E8  EC 25 10 2A */	fadds f1, f5, f2
/* 8037E9EC  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 8037E9F0  EC 06 00 2A */	fadds f0, f6, f0
/* 8037E9F4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8037E9F8  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_8037E9FC:
/* 8037E9FC  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 8037EA00  38 61 00 14 */	addi r3, r1, 0x14
/* 8037EA04  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8037EA08  38 81 00 20 */	addi r4, r1, 0x20
/* 8037EA0C  90 C7 00 00 */	stw r6, 0(r7)
/* 8037EA10  90 07 00 04 */	stw r0, 4(r7)
/* 8037EA14  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8037EA18  90 07 00 08 */	stw r0, 8(r7)
/* 8037EA1C  48 03 C5 5D */	bl xyz_t_sub
/* 8037EA20  7F A3 EB 78 */	mr r3, r29
/* 8037EA24  38 81 00 08 */	addi r4, r1, 8
/* 8037EA28  38 A1 00 0C */	addi r5, r1, 0xc
/* 8037EA2C  4B FF FD 7D */	bl Camera2_Get_GoalDistanceAndDirection
/* 8037EA30  C0 21 00 08 */	lfs f1, 8(r1)
/* 8037EA34  7F A3 EB 78 */	mr r3, r29
/* 8037EA38  38 80 00 00 */	li r4, 0
/* 8037EA3C  4B FF FA AD */	bl Camera2_MoveDistancePosAndSpeed
/* 8037EA40  EC 1F F0 28 */	fsubs f0, f31, f30
/* 8037EA44  7F A3 EB 78 */	mr r3, r29
/* 8037EA48  38 81 00 0C */	addi r4, r1, 0xc
/* 8037EA4C  FC 00 00 1E */	fctiwz f0, f0
/* 8037EA50  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8037EA54  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 8037EA58  4B FF F2 65 */	bl Camera2_MoveDirectionAngleXYZ_morph
/* 8037EA5C  7F A3 EB 78 */	mr r3, r29
/* 8037EA60  4B FF F2 35 */	bl Camera2_SetEyePos_fromCenterPos
/* 8037EA64  7F A3 EB 78 */	mr r3, r29
/* 8037EA68  4B FF F4 D5 */	bl Camera2_SetView
/* 8037EA6C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8037EA70  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8037EA74  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 8037EA78  39 61 00 50 */	addi r11, r1, 0x50
/* 8037EA7C  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 8037EA80  4B D1 C4 A1 */	bl func_8009AF20
/* 8037EA84  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8037EA88  7C 08 03 A6 */	mtlr r0
/* 8037EA8C  38 21 00 70 */	addi r1, r1, 0x70
/* 8037EA90  4E 80 00 20 */	blr 
