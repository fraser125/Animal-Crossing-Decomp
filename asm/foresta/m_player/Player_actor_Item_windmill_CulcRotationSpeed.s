lbl_804E3684:
/* 804E3684  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804E3688  7C 08 02 A6 */	mflr r0
/* 804E368C  90 01 00 64 */	stw r0, 0x64(r1)
/* 804E3690  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 804E3694  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 804E3698  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 804E369C  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 804E36A0  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 804E36A4  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 804E36A8  39 61 00 30 */	addi r11, r1, 0x30
/* 804E36AC  4B BB 78 21 */	bl func_8009AECC
/* 804E36B0  7C 7E 1B 78 */	mr r30, r3
/* 804E36B4  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804E36B8  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 804E36BC  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 804E36C0  AB BE 11 6A */	lha r29, 0x116a(r30)
/* 804E36C4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804E36C8  AB FE 11 6C */	lha r31, 0x116c(r30)
/* 804E36CC  C3 E3 65 68 */	lfs f31, lit_604@l(r3)  /* 0x80646568@l */
/* 804E36D0  40 82 00 48 */	bne lbl_804E3718
/* 804E36D4  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 804E36D8  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 804E36DC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804E36E0  40 82 00 38 */	bne lbl_804E3718
/* 804E36E4  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 804E36E8  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 804E36EC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804E36F0  40 82 00 28 */	bne lbl_804E3718
/* 804E36F4  C0 1E 0D FC */	lfs f0, 0xdfc(r30)
/* 804E36F8  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 804E36FC  40 82 00 1C */	bne lbl_804E3718
/* 804E3700  C0 1E 0E 00 */	lfs f0, 0xe00(r30)
/* 804E3704  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 804E3708  40 82 00 10 */	bne lbl_804E3718
/* 804E370C  C0 1E 0E 04 */	lfs f0, 0xe04(r30)
/* 804E3710  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 804E3714  41 82 00 98 */	beq lbl_804E37AC
lbl_804E3718:
/* 804E3718  7C 83 23 78 */	mr r3, r4
/* 804E371C  4B EF AD 95 */	bl mPlib_check_player_actor_main_index_AllWade
/* 804E3720  2C 03 00 00 */	cmpwi r3, 0
/* 804E3724  40 82 00 88 */	bne lbl_804E37AC
/* 804E3728  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804E372C  C3 DE 11 60 */	lfs f30, 0x1160(r30)
/* 804E3730  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804E3734  FC 00 F0 00 */	fcmpu cr0, f0, f30
/* 804E3738  41 82 00 74 */	beq lbl_804E37AC
/* 804E373C  A8 1E 11 64 */	lha r0, 0x1164(r30)
/* 804E3740  A8 7E 11 66 */	lha r3, 0x1166(r30)
/* 804E3744  7C 1D 00 50 */	subf r0, r29, r0
/* 804E3748  7C 9F 18 50 */	subf r4, r31, r3
/* 804E374C  7C 1B 07 34 */	extsh r27, r0
/* 804E3750  7F 63 DB 78 */	mr r3, r27
/* 804E3754  7C 9C 07 34 */	extsh r28, r4
/* 804E3758  4B ED 73 45 */	bl cos_s
/* 804E375C  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804E3760  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804E3764  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E3768  4C 41 13 82 */	cror 2, 1, 2
/* 804E376C  40 82 00 14 */	bne lbl_804E3780
/* 804E3770  7F 63 DB 78 */	mr r3, r27
/* 804E3774  4B ED 73 29 */	bl cos_s
/* 804E3778  FF A0 08 90 */	fmr f29, f1
/* 804E377C  48 00 00 10 */	b lbl_804E378C
lbl_804E3780:
/* 804E3780  7F 63 DB 78 */	mr r3, r27
/* 804E3784  4B ED 73 19 */	bl cos_s
/* 804E3788  FF A0 08 50 */	fneg f29, f1
lbl_804E378C:
/* 804E378C  7F 83 E3 78 */	mr r3, r28
/* 804E3790  4B ED 73 0D */	bl cos_s
/* 804E3794  EC 21 07 72 */	fmuls f1, f1, f29
/* 804E3798  3C 60 80 64 */	lis r3, lit_4467@ha /* 0x80647B18@ha */
/* 804E379C  C0 03 7B 18 */	lfs f0, lit_4467@l(r3)  /* 0x80647B18@l */
/* 804E37A0  EC 3E 00 72 */	fmuls f1, f30, f1
/* 804E37A4  EC 00 00 72 */	fmuls f0, f0, f1
/* 804E37A8  EF FF 00 2A */	fadds f31, f31, f0
lbl_804E37AC:
/* 804E37AC  4B ED 67 29 */	bl mEnv_GetWindPowerF_Windmill
/* 804E37B0  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804E37B4  FF A0 08 90 */	fmr f29, f1
/* 804E37B8  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804E37BC  FC 00 E8 00 */	fcmpu cr0, f0, f29
/* 804E37C0  41 82 00 90 */	beq lbl_804E3850
/* 804E37C4  4B ED 66 B9 */	bl mEnv_GetWindAngleS
/* 804E37C8  7C 63 07 34 */	extsh r3, r3
/* 804E37CC  7C 1D 00 D0 */	neg r0, r29
/* 804E37D0  7C 9F 18 50 */	subf r4, r31, r3
/* 804E37D4  7C 1C 07 34 */	extsh r28, r0
/* 804E37D8  7F 83 E3 78 */	mr r3, r28
/* 804E37DC  7C 9B 07 34 */	extsh r27, r4
/* 804E37E0  4B ED 72 BD */	bl cos_s
/* 804E37E4  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804E37E8  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804E37EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E37F0  4C 41 13 82 */	cror 2, 1, 2
/* 804E37F4  40 82 00 14 */	bne lbl_804E3808
/* 804E37F8  7F 83 E3 78 */	mr r3, r28
/* 804E37FC  4B ED 72 A1 */	bl cos_s
/* 804E3800  FF C0 08 90 */	fmr f30, f1
/* 804E3804  48 00 00 10 */	b lbl_804E3814
lbl_804E3808:
/* 804E3808  7F 83 E3 78 */	mr r3, r28
/* 804E380C  4B ED 72 91 */	bl cos_s
/* 804E3810  FF C0 08 50 */	fneg f30, f1
lbl_804E3814:
/* 804E3814  7F 63 DB 78 */	mr r3, r27
/* 804E3818  4B ED 72 85 */	bl cos_s
/* 804E381C  EC 01 07 B2 */	fmuls f0, f1, f30
/* 804E3820  3C 60 80 64 */	lis r3, lit_1375@ha /* 0x80646A30@ha */
/* 804E3824  38 83 6A 30 */	addi r4, r3, lit_1375@l /* 0x80646A30@l */
/* 804E3828  C0 24 00 00 */	lfs f1, 0(r4)
/* 804E382C  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804E3830  EC 5D 00 32 */	fmuls f2, f29, f0
/* 804E3834  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804E3838  EC 41 00 B2 */	fmuls f2, f1, f2
/* 804E383C  EC 3F 00 B2 */	fmuls f1, f31, f2
/* 804E3840  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E3844  4C 41 13 82 */	cror 2, 1, 2
/* 804E3848  40 82 00 08 */	bne lbl_804E3850
/* 804E384C  EF FF 10 2A */	fadds f31, f31, f2
lbl_804E3850:
/* 804E3850  3C 80 80 65 */	lis r4, lit_6899@ha /* 0x806480F0@ha */
/* 804E3854  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804E3858  38 A4 80 F0 */	addi r5, r4, lit_6899@l /* 0x806480F0@l */
/* 804E385C  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804E3860  C0 25 00 00 */	lfs f1, 0(r5)
/* 804E3864  3C 80 80 65 */	lis r4, lit_6900@ha /* 0x806480F4@ha */
/* 804E3868  EC 41 07 F2 */	fmuls f2, f1, f31
/* 804E386C  C0 24 80 F4 */	lfs f1, lit_6900@l(r4)  /* 0x806480F4@l */
/* 804E3870  EC 21 07 F2 */	fmuls f1, f1, f31
/* 804E3874  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804E3878  4C 41 13 82 */	cror 2, 1, 2
/* 804E387C  40 82 00 0C */	bne lbl_804E3888
/* 804E3880  FC A0 10 90 */	fmr f5, f2
/* 804E3884  48 00 00 08 */	b lbl_804E388C
lbl_804E3888:
/* 804E3888  FC A0 10 50 */	fneg f5, f2
lbl_804E388C:
/* 804E388C  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804E3890  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804E3894  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804E3898  4C 41 13 82 */	cror 2, 1, 2
/* 804E389C  40 82 00 0C */	bne lbl_804E38A8
/* 804E38A0  FC 80 10 90 */	fmr f4, f2
/* 804E38A4  48 00 00 08 */	b lbl_804E38AC
lbl_804E38A8:
/* 804E38A8  FC 80 10 50 */	fneg f4, f2
lbl_804E38AC:
/* 804E38AC  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804E38B0  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804E38B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E38B8  4C 41 13 82 */	cror 2, 1, 2
/* 804E38BC  40 82 00 0C */	bne lbl_804E38C8
/* 804E38C0  FC 00 08 90 */	fmr f0, f1
/* 804E38C4  48 00 00 08 */	b lbl_804E38CC
lbl_804E38C8:
/* 804E38C8  FC 00 08 50 */	fneg f0, f1
lbl_804E38CC:
/* 804E38CC  3C 80 80 65 */	lis r4, lit_6901@ha /* 0x806480F8@ha */
/* 804E38D0  3C C0 80 65 */	lis r6, lit_6902@ha /* 0x806480FC@ha */
/* 804E38D4  C0 24 80 F8 */	lfs f1, lit_6901@l(r4)  /* 0x806480F8@l */
/* 804E38D8  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804E38DC  38 83 65 64 */	addi r4, r3, lit_603@l /* 0x80646564@l */
/* 804E38E0  3C A0 80 65 */	lis r5, lit_6903@ha /* 0x80648100@ha */
/* 804E38E4  EC A5 08 2A */	fadds f5, f5, f1
/* 804E38E8  C0 24 00 00 */	lfs f1, 0(r4)
/* 804E38EC  C0 46 80 FC */	lfs f2, lit_6902@l(r6)  /* 0x806480FC@l */
/* 804E38F0  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804E38F4  C0 65 81 00 */	lfs f3, lit_6903@l(r5)  /* 0x80648100@l */
/* 804E38F8  EC C1 28 28 */	fsubs f6, f1, f5
/* 804E38FC  C0 23 65 68 */	lfs f1, lit_604@l(r3)  /* 0x80646568@l */
/* 804E3900  EC 84 10 2A */	fadds f4, f4, f2
/* 804E3904  C0 5E 0A 24 */	lfs f2, 0xa24(r30)
/* 804E3908  EC 00 18 2A */	fadds f0, f0, f3
/* 804E390C  FC 06 08 40 */	fcmpo cr0, f6, f1
/* 804E3910  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 804E3914  40 81 00 68 */	ble lbl_804E397C
/* 804E3918  FC 40 30 34 */	frsqrte f2, f6
/* 804E391C  3C 60 80 64 */	lis r3, lit_1027@ha /* 0x806469F4@ha */
/* 804E3920  38 83 69 F4 */	addi r4, r3, lit_1027@l /* 0x806469F4@l */
/* 804E3924  3C 60 80 64 */	lis r3, lit_1028@ha /* 0x806469FC@ha */
/* 804E3928  C8 A4 00 00 */	lfd f5, 0(r4)
/* 804E392C  FC 22 00 B2 */	fmul f1, f2, f2
/* 804E3930  C8 63 69 FC */	lfd f3, lit_1028@l(r3)  /* 0x806469FC@l */
/* 804E3934  FC 45 00 B2 */	fmul f2, f5, f2
/* 804E3938  FC 26 00 72 */	fmul f1, f6, f1
/* 804E393C  FC 23 08 28 */	fsub f1, f3, f1
/* 804E3940  FC 42 00 72 */	fmul f2, f2, f1
/* 804E3944  FC 22 00 B2 */	fmul f1, f2, f2
/* 804E3948  FC 45 00 B2 */	fmul f2, f5, f2
/* 804E394C  FC 26 00 72 */	fmul f1, f6, f1
/* 804E3950  FC 23 08 28 */	fsub f1, f3, f1
/* 804E3954  FC 42 00 72 */	fmul f2, f2, f1
/* 804E3958  FC 22 00 B2 */	fmul f1, f2, f2
/* 804E395C  FC 45 00 B2 */	fmul f2, f5, f2
/* 804E3960  FC 26 00 72 */	fmul f1, f6, f1
/* 804E3964  FC 23 08 28 */	fsub f1, f3, f1
/* 804E3968  FC 22 00 72 */	fmul f1, f2, f1
/* 804E396C  FC 26 00 72 */	fmul f1, f6, f1
/* 804E3970  FC 20 08 18 */	frsp f1, f1
/* 804E3974  D0 21 00 08 */	stfs f1, 8(r1)
/* 804E3978  C0 C1 00 08 */	lfs f6, 8(r1)
lbl_804E397C:
/* 804E397C  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804E3980  3C 60 80 64 */	lis r3, lit_2671@ha /* 0x80646C4C@ha */
/* 804E3984  C0 A3 6C 4C */	lfs f5, lit_2671@l(r3)  /* 0x80646C4C@l */
/* 804E3988  FC 20 F8 90 */	fmr f1, f31
/* 804E398C  C0 44 65 64 */	lfs f2, lit_603@l(r4)  /* 0x80646564@l */
/* 804E3990  38 61 00 0C */	addi r3, r1, 0xc
/* 804E3994  EC 65 00 32 */	fmuls f3, f5, f0
/* 804E3998  EC 42 30 28 */	fsubs f2, f2, f6
/* 804E399C  EC 85 01 32 */	fmuls f4, f5, f4
/* 804E39A0  4B ED 78 11 */	bl add_calc
/* 804E39A4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804E39A8  D0 1E 0A 24 */	stfs f0, 0xa24(r30)
/* 804E39AC  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 804E39B0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 804E39B4  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 804E39B8  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 804E39BC  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 804E39C0  39 61 00 30 */	addi r11, r1, 0x30
/* 804E39C4  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 804E39C8  4B BB 75 51 */	bl func_8009AF18
/* 804E39CC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804E39D0  7C 08 03 A6 */	mtlr r0
/* 804E39D4  38 21 00 60 */	addi r1, r1, 0x60
/* 804E39D8  4E 80 00 20 */	blr 
