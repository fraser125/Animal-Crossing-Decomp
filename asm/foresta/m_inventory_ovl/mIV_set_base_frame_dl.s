lbl_805E37C0:
/* 805E37C0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805E37C4  7C 08 02 A6 */	mflr r0
/* 805E37C8  90 01 00 64 */	stw r0, 0x64(r1)
/* 805E37CC  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 805E37D0  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 805E37D4  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 805E37D8  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 805E37DC  39 61 00 40 */	addi r11, r1, 0x40
/* 805E37E0  4B AB 76 E1 */	bl func_8009AEC0
/* 805E37E4  3D 20 80 65 */	lis r9, lit_1480@ha /* 0x8064B4AC@ha */
/* 805E37E8  FF C0 08 90 */	fmr f30, f1
/* 805E37EC  C0 29 B4 AC */	lfs f1, lit_1480@l(r9)  /* 0x8064B4AC@l */
/* 805E37F0  3D 00 80 65 */	lis r8, lit_741@ha /* 0x8064B3F4@ha */
/* 805E37F4  FF E0 10 90 */	fmr f31, f2
/* 805E37F8  3D 20 80 6D */	lis r9, data_806CD2C8@ha /* 0x806CD2C8@ha */
/* 805E37FC  FC 40 08 90 */	fmr f2, f1
/* 805E3800  C0 68 B3 F4 */	lfs f3, lit_741@l(r8)  /* 0x8064B3F4@l */
/* 805E3804  7C 7A 1B 78 */	mr r26, r3
/* 805E3808  7C 9B 23 78 */	mr r27, r4
/* 805E380C  7C BC 2B 78 */	mr r28, r5
/* 805E3810  7C DD 33 78 */	mr r29, r6
/* 805E3814  7C F8 3B 78 */	mr r24, r7
/* 805E3818  3B E9 D2 C8 */	addi r31, r9, data_806CD2C8@l /* 0x806CD2C8@l */
/* 805E381C  38 60 00 00 */	li r3, 0
/* 805E3820  4B E2 8B CD */	bl Matrix_scale
/* 805E3824  3C 60 80 65 */	lis r3, lit_1481@ha /* 0x8064B4B0@ha */
/* 805E3828  FC 20 F0 90 */	fmr f1, f30
/* 805E382C  C0 63 B4 B0 */	lfs f3, lit_1481@l(r3)  /* 0x8064B4B0@l */
/* 805E3830  FC 40 F8 90 */	fmr f2, f31
/* 805E3834  38 60 00 01 */	li r3, 1
/* 805E3838  4B E2 8A C9 */	bl Matrix_translate
/* 805E383C  83 DC 02 D0 */	lwz r30, 0x2d0(r28)
/* 805E3840  3C 00 DE 00 */	lis r0, 0xde00
/* 805E3844  3C 80 80 A9 */	lis r4, inv_mwin_mode@ha /* 0x80A8C040@ha */
/* 805E3848  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805E384C  90 1E 00 00 */	stw r0, 0(r30)
/* 805E3850  38 84 C0 40 */	addi r4, r4, inv_mwin_mode@l /* 0x80A8C040@l */
/* 805E3854  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805E3858  7F 83 E3 78 */	mr r3, r28
/* 805E385C  90 9E 00 04 */	stw r4, 4(r30)
/* 805E3860  3B DE 00 08 */	addi r30, r30, 8
/* 805E3864  7F D9 F3 78 */	mr r25, r30
/* 805E3868  90 1E 00 00 */	stw r0, 0(r30)
/* 805E386C  3B DE 00 08 */	addi r30, r30, 8
/* 805E3870  4B E2 9B 65 */	bl _Matrix_to_Mtx_new
/* 805E3874  2C 18 00 00 */	cmpwi r24, 0
/* 805E3878  90 79 00 04 */	stw r3, 4(r25)
/* 805E387C  41 82 00 FC */	beq lbl_805E3978
/* 805E3880  2C 1D 00 01 */	cmpwi r29, 1
/* 805E3884  40 82 00 50 */	bne lbl_805E38D4
/* 805E3888  3C 60 F0 8E */	lis r3, 0xF08E /* 0xF08E4010@ha */
/* 805E388C  7F D9 F3 78 */	mr r25, r30
/* 805E3890  38 03 40 10 */	addi r0, r3, 0x4010 /* 0xF08E4010@l */
/* 805E3894  7F 63 DB 78 */	mr r3, r27
/* 805E3898  90 1E 00 00 */	stw r0, 0(r30)
/* 805E389C  3B DE 00 08 */	addi r30, r30, 8
/* 805E38A0  4B E0 CC 65 */	bl mSM_Get_ground_pallet_p
/* 805E38A4  90 79 00 04 */	stw r3, 4(r25)
/* 805E38A8  3C 60 FD 44 */	lis r3, 0xFD44 /* 0xFD441C1F@ha */
/* 805E38AC  38 03 1C 1F */	addi r0, r3, 0x1C1F /* 0xFD441C1F@l */
/* 805E38B0  7F 63 DB 78 */	mr r3, r27
/* 805E38B4  90 1E 00 00 */	stw r0, 0(r30)
/* 805E38B8  4B E0 CC 29 */	bl mSM_Get_ground_tex_p
/* 805E38BC  3C 80 D2 F1 */	lis r4, 0xD2F1 /* 0xD2F0E500@ha */
/* 805E38C0  90 7E 00 04 */	stw r3, 4(r30)
/* 805E38C4  38 04 E5 00 */	addi r0, r4, 0xE500 /* 0xD2F0E500@l */
/* 805E38C8  90 1E 00 08 */	stw r0, 8(r30)
/* 805E38CC  3B DE 00 10 */	addi r30, r30, 0x10
/* 805E38D0  48 00 00 20 */	b lbl_805E38F0
lbl_805E38D4:
/* 805E38D4  3C 60 DE 00 */	lis r3, 0xde00
/* 805E38D8  57 A0 10 3A */	slwi r0, r29, 2
/* 805E38DC  90 7E 00 00 */	stw r3, 0(r30)
/* 805E38E0  38 7F 03 08 */	addi r3, r31, 0x308
/* 805E38E4  7C 03 00 2E */	lwzx r0, r3, r0
/* 805E38E8  90 1E 00 04 */	stw r0, 4(r30)
/* 805E38EC  3B DE 00 08 */	addi r30, r30, 8
lbl_805E38F0:
/* 805E38F0  3C 00 E8 00 */	lis r0, 0xe800
/* 805E38F4  38 A0 00 00 */	li r5, 0
/* 805E38F8  90 1E 00 00 */	stw r0, 0(r30)
/* 805E38FC  3C 80 DE 00 */	lis r4, 0xde00
/* 805E3900  57 A0 10 3A */	slwi r0, r29, 2
/* 805E3904  38 7F 02 F0 */	addi r3, r31, 0x2f0
/* 805E3908  90 BE 00 04 */	stw r5, 4(r30)
/* 805E390C  80 BA 00 2C */	lwz r5, 0x2c(r26)
/* 805E3910  C0 25 09 34 */	lfs f1, 0x934(r5)
/* 805E3914  C0 05 09 38 */	lfs f0, 0x938(r5)
/* 805E3918  FC 20 08 50 */	fneg f1, f1
/* 805E391C  FC 00 00 50 */	fneg f0, f0
/* 805E3920  FC 20 08 1E */	fctiwz f1, f1
/* 805E3924  FC 00 00 1E */	fctiwz f0, f0
/* 805E3928  D8 21 00 08 */	stfd f1, 8(r1)
/* 805E392C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805E3930  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 805E3934  80 E1 00 14 */	lwz r7, 0x14(r1)
/* 805E3938  54 C5 63 66 */	rlwinm r5, r6, 0xc, 0xd, 0x13
/* 805E393C  54 C6 06 7E */	clrlwi r6, r6, 0x19
/* 805E3940  64 A5 F2 00 */	oris r5, r5, 0xf200
/* 805E3944  54 E8 06 7E */	clrlwi r8, r7, 0x19
/* 805E3948  7C A7 43 78 */	or r7, r5, r8
/* 805E394C  38 C6 00 7C */	addi r6, r6, 0x7c
/* 805E3950  38 A8 00 7C */	addi r5, r8, 0x7c
/* 805E3954  90 FE 00 08 */	stw r7, 8(r30)
/* 805E3958  54 A5 05 3E */	clrlwi r5, r5, 0x14
/* 805E395C  50 C5 62 26 */	rlwimi r5, r6, 0xc, 8, 0x13
/* 805E3960  90 BE 00 0C */	stw r5, 0xc(r30)
/* 805E3964  90 9E 00 10 */	stw r4, 0x10(r30)
/* 805E3968  7C 03 00 2E */	lwzx r0, r3, r0
/* 805E396C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 805E3970  3B DE 00 18 */	addi r30, r30, 0x18
/* 805E3974  48 00 00 20 */	b lbl_805E3994
lbl_805E3978:
/* 805E3978  3C 60 DE 00 */	lis r3, 0xde00
/* 805E397C  57 A0 10 3A */	slwi r0, r29, 2
/* 805E3980  90 7E 00 00 */	stw r3, 0(r30)
/* 805E3984  38 7F 02 FC */	addi r3, r31, 0x2fc
/* 805E3988  7C 03 00 2E */	lwzx r0, r3, r0
/* 805E398C  90 1E 00 04 */	stw r0, 4(r30)
/* 805E3990  3B DE 00 08 */	addi r30, r30, 8
lbl_805E3994:
/* 805E3994  93 DC 02 D0 */	stw r30, 0x2d0(r28)
/* 805E3998  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 805E399C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 805E39A0  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 805E39A4  39 61 00 40 */	addi r11, r1, 0x40
/* 805E39A8  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 805E39AC  4B AB 75 61 */	bl func_8009AF0C
/* 805E39B0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805E39B4  7C 08 03 A6 */	mtlr r0
/* 805E39B8  38 21 00 60 */	addi r1, r1, 0x60
/* 805E39BC  4E 80 00 20 */	blr 
