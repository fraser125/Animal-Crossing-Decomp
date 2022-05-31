lbl_80412754:
/* 80412754  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80412758  7C 08 02 A6 */	mflr r0
/* 8041275C  90 01 00 94 */	stw r0, 0x94(r1)
/* 80412760  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80412764  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80412768  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 8041276C  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 80412770  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 80412774  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 80412778  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 8041277C  F3 81 00 58 */	psq_st f28, 88(r1), 0, 0 /* qr0 */
/* 80412780  39 61 00 50 */	addi r11, r1, 0x50
/* 80412784  4B C8 87 51 */	bl func_8009AED4
/* 80412788  7C 7F 1B 78 */	mr r31, r3
/* 8041278C  4B F9 63 D1 */	bl mFI_GetPlayerWade
/* 80412790  88 9F 01 7C */	lbz r4, 0x17c(r31)
/* 80412794  7C 7E 1B 78 */	mr r30, r3
/* 80412798  54 80 07 BD */	rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 8041279C  41 82 04 D4 */	beq lbl_80412C70
/* 804127A0  83 BF 01 78 */	lwz r29, 0x178(r31)
/* 804127A4  54 80 07 FA */	rlwinm r0, r4, 0, 0x1f, 0x1d
/* 804127A8  98 1F 01 7C */	stb r0, 0x17c(r31)
/* 804127AC  7F A3 EB 78 */	mr r3, r29
/* 804127B0  4B FD 1D 51 */	bl mQst_CheckSoccerTarget
/* 804127B4  2C 03 00 00 */	cmpwi r3, 0
/* 804127B8  41 82 00 3C */	beq lbl_804127F4
/* 804127BC  7F A3 EB 78 */	mr r3, r29
/* 804127C0  4B FD 1D CD */	bl mQst_NextSoccer
/* 804127C4  3C 80 80 64 */	lis r4, lit_472@ha /* 0x806439AC@ha */
/* 804127C8  3C 60 80 66 */	lis r3, data_8065F050@ha /* 0x8065F050@ha */
/* 804127CC  C0 04 39 AC */	lfs f0, lit_472@l(r4)  /* 0x806439AC@l */
/* 804127D0  38 83 F0 50 */	addi r4, r3, data_8065F050@l /* 0x8065F050@l */
/* 804127D4  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 804127D8  80 64 00 00 */	lwz r3, 0(r4)
/* 804127DC  80 04 00 04 */	lwz r0, 4(r4)
/* 804127E0  90 7F 00 68 */	stw r3, 0x68(r31)
/* 804127E4  90 1F 00 6C */	stw r0, 0x6c(r31)
/* 804127E8  80 04 00 08 */	lwz r0, 8(r4)
/* 804127EC  90 1F 00 70 */	stw r0, 0x70(r31)
/* 804127F0  48 00 04 A0 */	b lbl_80412C90
lbl_804127F4:
/* 804127F4  28 1D 00 00 */	cmplwi r29, 0
/* 804127F8  41 82 04 54 */	beq lbl_80412C4C
/* 804127FC  A8 1F 02 08 */	lha r0, 0x208(r31)
/* 80412800  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80412804  40 82 04 48 */	bne lbl_80412C4C
/* 80412808  2C 1E 00 01 */	cmpwi r30, 1
/* 8041280C  41 82 04 40 */	beq lbl_80412C4C
/* 80412810  2C 1E 00 02 */	cmpwi r30, 2
/* 80412814  41 82 04 38 */	beq lbl_80412C4C
/* 80412818  80 1F 01 DC */	lwz r0, 0x1dc(r31)
/* 8041281C  7C 00 E8 40 */	cmplw r0, r29
/* 80412820  41 82 03 34 */	beq lbl_80412B54
/* 80412824  80 9D 00 68 */	lwz r4, 0x68(r29)
/* 80412828  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8041282C  80 1D 00 6C */	lwz r0, 0x6c(r29)
/* 80412830  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 80412834  90 81 00 2C */	stw r4, 0x2c(r1)
/* 80412838  90 01 00 30 */	stw r0, 0x30(r1)
/* 8041283C  80 1D 00 70 */	lwz r0, 0x70(r29)
/* 80412840  90 01 00 34 */	stw r0, 0x34(r1)
/* 80412844  93 BF 01 DC */	stw r29, 0x1dc(r31)
/* 80412848  80 63 00 00 */	lwz r3, 0(r3)
/* 8041284C  A8 63 1B 32 */	lha r3, 0x1b32(r3)
/* 80412850  38 03 00 1E */	addi r0, r3, 0x1e
/* 80412854  B0 1F 02 0C */	sth r0, 0x20c(r31)
/* 80412858  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 8041285C  C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 80412860  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80412864  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 80412868  EC 23 08 28 */	fsubs f1, f3, f1
/* 8041286C  EC 42 00 28 */	fsubs f2, f2, f0
/* 80412870  4B FF 97 91 */	bl atans_table
/* 80412874  7C 7D 1B 78 */	mr r29, r3
/* 80412878  4B FA 82 79 */	bl sin_s
/* 8041287C  FF C0 08 90 */	fmr f30, f1
/* 80412880  7F A3 EB 78 */	mr r3, r29
/* 80412884  4B FA 82 19 */	bl cos_s
/* 80412888  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 8041288C  FF E0 08 90 */	fmr f31, f1
/* 80412890  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80412894  3C 60 80 64 */	lis r3, lit_472@ha /* 0x806439AC@ha */
/* 80412898  EC 42 00 B2 */	fmuls f2, f2, f2
/* 8041289C  C0 9F 00 68 */	lfs f4, 0x68(r31)
/* 804128A0  EC 20 00 32 */	fmuls f1, f0, f0
/* 804128A4  C0 7F 00 70 */	lfs f3, 0x70(r31)
/* 804128A8  EC 9E 01 32 */	fmuls f4, f30, f4
/* 804128AC  C0 03 39 AC */	lfs f0, lit_472@l(r3)  /* 0x806439AC@l */
/* 804128B0  EC 7F 00 F2 */	fmuls f3, f31, f3
/* 804128B4  EC A2 08 2A */	fadds f5, f2, f1
/* 804128B8  EF A4 18 2A */	fadds f29, f4, f3
/* 804128BC  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 804128C0  40 81 00 68 */	ble lbl_80412928
/* 804128C4  FC 20 28 34 */	frsqrte f1, f5
/* 804128C8  3C 60 80 64 */	lis r3, lit_632@ha /* 0x806439F4@ha */
/* 804128CC  38 83 39 F4 */	addi r4, r3, lit_632@l /* 0x806439F4@l */
/* 804128D0  3C 60 80 64 */	lis r3, lit_633@ha /* 0x806439FC@ha */
/* 804128D4  C8 64 00 00 */	lfd f3, 0(r4)
/* 804128D8  FC 01 00 72 */	fmul f0, f1, f1
/* 804128DC  C8 43 39 FC */	lfd f2, lit_633@l(r3)  /* 0x806439FC@l */
/* 804128E0  FC 23 00 72 */	fmul f1, f3, f1
/* 804128E4  FC 05 00 32 */	fmul f0, f5, f0
/* 804128E8  FC 02 00 28 */	fsub f0, f2, f0
/* 804128EC  FC 21 00 32 */	fmul f1, f1, f0
/* 804128F0  FC 01 00 72 */	fmul f0, f1, f1
/* 804128F4  FC 23 00 72 */	fmul f1, f3, f1
/* 804128F8  FC 05 00 32 */	fmul f0, f5, f0
/* 804128FC  FC 02 00 28 */	fsub f0, f2, f0
/* 80412900  FC 21 00 32 */	fmul f1, f1, f0
/* 80412904  FC 01 00 72 */	fmul f0, f1, f1
/* 80412908  FC 23 00 72 */	fmul f1, f3, f1
/* 8041290C  FC 05 00 32 */	fmul f0, f5, f0
/* 80412910  FC 02 00 28 */	fsub f0, f2, f0
/* 80412914  FC 01 00 32 */	fmul f0, f1, f0
/* 80412918  FC 05 00 32 */	fmul f0, f5, f0
/* 8041291C  FC 00 00 18 */	frsp f0, f0
/* 80412920  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80412924  C0 A1 00 10 */	lfs f5, 0x10(r1)
lbl_80412928:
/* 80412928  3C 60 80 64 */	lis r3, lit_635@ha /* 0x80643A08@ha */
/* 8041292C  3C 80 80 64 */	lis r4, lit_634@ha /* 0x80643A04@ha */
/* 80412930  C0 03 3A 08 */	lfs f0, lit_635@l(r3)  /* 0x80643A08@l */
/* 80412934  3C A0 80 64 */	lis r5, lit_544@ha /* 0x806439D8@ha */
/* 80412938  C0 24 3A 04 */	lfs f1, lit_634@l(r4)  /* 0x80643A04@l */
/* 8041293C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80412940  EC 00 01 72 */	fmuls f0, f0, f5
/* 80412944  C0 45 39 D8 */	lfs f2, lit_544@l(r5)  /* 0x806439D8@l */
/* 80412948  EC 01 00 32 */	fmuls f0, f1, f0
/* 8041294C  EC 22 00 2A */	fadds f1, f2, f0
/* 80412950  4B FA 86 5D */	bl xyz_t_mult_v
/* 80412954  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80412958  3C 60 80 64 */	lis r3, lit_472@ha /* 0x806439AC@ha */
/* 8041295C  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80412960  EC 5E 00 32 */	fmuls f2, f30, f0
/* 80412964  C0 03 39 AC */	lfs f0, lit_472@l(r3)  /* 0x806439AC@l */
/* 80412968  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8041296C  EC 22 08 2A */	fadds f1, f2, f1
/* 80412970  EF BD 08 2A */	fadds f29, f29, f1
/* 80412974  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 80412978  4C 41 13 82 */	cror 2, 1, 2
/* 8041297C  40 82 00 08 */	bne lbl_80412984
/* 80412980  48 00 00 08 */	b lbl_80412988
lbl_80412984:
/* 80412984  FF A0 E8 50 */	fneg f29, f29
lbl_80412988:
/* 80412988  7F A3 EB 78 */	mr r3, r29
/* 8041298C  4B FA 81 65 */	bl sin_s
/* 80412990  EF DD 00 72 */	fmuls f30, f29, f1
/* 80412994  7F A3 EB 78 */	mr r3, r29
/* 80412998  4B FA 81 05 */	bl cos_s
/* 8041299C  EC 5D 00 72 */	fmuls f2, f29, f1
/* 804129A0  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 804129A4  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 804129A8  3C 60 80 64 */	lis r3, lit_472@ha /* 0x806439AC@ha */
/* 804129AC  EF A1 F0 2A */	fadds f29, f1, f30
/* 804129B0  EF C0 10 2A */	fadds f30, f0, f2
/* 804129B4  C0 03 39 AC */	lfs f0, lit_472@l(r3)  /* 0x806439AC@l */
/* 804129B8  EC 5D 07 72 */	fmuls f2, f29, f29
/* 804129BC  EC 3E 07 B2 */	fmuls f1, f30, f30
/* 804129C0  EC 82 08 2A */	fadds f4, f2, f1
/* 804129C4  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 804129C8  40 81 00 68 */	ble lbl_80412A30
/* 804129CC  FC 20 20 34 */	frsqrte f1, f4
/* 804129D0  3C 60 80 64 */	lis r3, lit_632@ha /* 0x806439F4@ha */
/* 804129D4  38 83 39 F4 */	addi r4, r3, lit_632@l /* 0x806439F4@l */
/* 804129D8  3C 60 80 64 */	lis r3, lit_633@ha /* 0x806439FC@ha */
/* 804129DC  C8 64 00 00 */	lfd f3, 0(r4)
/* 804129E0  FC 01 00 72 */	fmul f0, f1, f1
/* 804129E4  C8 43 39 FC */	lfd f2, lit_633@l(r3)  /* 0x806439FC@l */
/* 804129E8  FC 23 00 72 */	fmul f1, f3, f1
/* 804129EC  FC 04 00 32 */	fmul f0, f4, f0
/* 804129F0  FC 02 00 28 */	fsub f0, f2, f0
/* 804129F4  FC 21 00 32 */	fmul f1, f1, f0
/* 804129F8  FC 01 00 72 */	fmul f0, f1, f1
/* 804129FC  FC 23 00 72 */	fmul f1, f3, f1
/* 80412A00  FC 04 00 32 */	fmul f0, f4, f0
/* 80412A04  FC 02 00 28 */	fsub f0, f2, f0
/* 80412A08  FC 21 00 32 */	fmul f1, f1, f0
/* 80412A0C  FC 01 00 72 */	fmul f0, f1, f1
/* 80412A10  FC 23 00 72 */	fmul f1, f3, f1
/* 80412A14  FC 04 00 32 */	fmul f0, f4, f0
/* 80412A18  FC 02 00 28 */	fsub f0, f2, f0
/* 80412A1C  FC 01 00 32 */	fmul f0, f1, f0
/* 80412A20  FC 04 00 32 */	fmul f0, f4, f0
/* 80412A24  FC 00 00 18 */	frsp f0, f0
/* 80412A28  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80412A2C  C0 81 00 0C */	lfs f4, 0xc(r1)
lbl_80412A30:
/* 80412A30  3C 60 80 64 */	lis r3, lit_636@ha /* 0x80643A0C@ha */
/* 80412A34  C3 E3 3A 0C */	lfs f31, lit_636@l(r3)  /* 0x80643A0C@l */
/* 80412A38  FC 1F 20 40 */	fcmpo cr0, f31, f4
/* 80412A3C  40 80 00 08 */	bge lbl_80412A44
/* 80412A40  48 00 00 08 */	b lbl_80412A48
lbl_80412A44:
/* 80412A44  FF E0 20 90 */	fmr f31, f4
lbl_80412A48:
/* 80412A48  3C 60 80 64 */	lis r3, lit_636@ha /* 0x80643A0C@ha */
/* 80412A4C  88 1F 00 98 */	lbz r0, 0x98(r31)
/* 80412A50  C0 03 3A 0C */	lfs f0, lit_636@l(r3)  /* 0x80643A0C@l */
/* 80412A54  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80412A58  EF 9F 00 24 */	fdivs f28, f31, f0
/* 80412A5C  41 82 00 94 */	beq lbl_80412AF0
/* 80412A60  3C 60 80 64 */	lis r3, lit_472@ha /* 0x806439AC@ha */
/* 80412A64  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80412A68  C0 03 39 AC */	lfs f0, lit_472@l(r3)  /* 0x806439AC@l */
/* 80412A6C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80412A70  40 82 00 6C */	bne lbl_80412ADC
/* 80412A74  4B C4 A2 B9 */	bl fqrand2
/* 80412A78  3C 60 80 64 */	lis r3, lit_638@ha /* 0x80643A14@ha */
/* 80412A7C  3C 80 80 64 */	lis r4, lit_637@ha /* 0x80643A10@ha */
/* 80412A80  38 A3 3A 14 */	addi r5, r3, lit_638@l /* 0x80643A14@l */
/* 80412A84  C0 44 3A 10 */	lfs f2, lit_637@l(r4)  /* 0x80643A10@l */
/* 80412A88  C0 05 00 00 */	lfs f0, 0(r5)
/* 80412A8C  3C 60 80 64 */	lis r3, lit_639@ha /* 0x80643A18@ha */
/* 80412A90  EC 42 07 32 */	fmuls f2, f2, f28
/* 80412A94  EC 60 07 32 */	fmuls f3, f0, f28
/* 80412A98  C0 03 3A 18 */	lfs f0, lit_639@l(r3)  /* 0x80643A18@l */
/* 80412A9C  EC 23 00 72 */	fmuls f1, f3, f1
/* 80412AA0  EC 22 08 2A */	fadds f1, f2, f1
/* 80412AA4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80412AA8  FC 00 00 1E */	fctiwz f0, f0
/* 80412AAC  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80412AB0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80412AB4  7C 1D 07 34 */	extsh r29, r0
/* 80412AB8  7F A3 EB 78 */	mr r3, r29
/* 80412ABC  4B FA 7F E1 */	bl cos_s
/* 80412AC0  EC 1F 00 72 */	fmuls f0, f31, f1
/* 80412AC4  7F A3 EB 78 */	mr r3, r29
/* 80412AC8  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 80412ACC  4B FA 80 25 */	bl sin_s
/* 80412AD0  EC 1F 00 72 */	fmuls f0, f31, f1
/* 80412AD4  D0 1F 00 6C */	stfs f0, 0x6c(r31)
/* 80412AD8  48 00 00 28 */	b lbl_80412B00
lbl_80412ADC:
/* 80412ADC  3C 60 80 64 */	lis r3, lit_640@ha /* 0x80643A1C@ha */
/* 80412AE0  C0 03 3A 1C */	lfs f0, lit_640@l(r3)  /* 0x80643A1C@l */
/* 80412AE4  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80412AE8  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 80412AEC  48 00 00 14 */	b lbl_80412B00
lbl_80412AF0:
/* 80412AF0  3C 60 80 64 */	lis r3, lit_640@ha /* 0x80643A1C@ha */
/* 80412AF4  C0 03 3A 1C */	lfs f0, lit_640@l(r3)  /* 0x80643A1C@l */
/* 80412AF8  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80412AFC  D0 1F 00 74 */	stfs f0, 0x74(r31)
lbl_80412B00:
/* 80412B00  FC 20 F0 90 */	fmr f1, f30
/* 80412B04  FC 40 E8 90 */	fmr f2, f29
/* 80412B08  4B FF 94 F9 */	bl atans_table
/* 80412B0C  B0 7F 00 36 */	sth r3, 0x36(r31)
/* 80412B10  3C 60 80 64 */	lis r3, lit_634@ha /* 0x80643A04@ha */
/* 80412B14  38 A3 3A 04 */	addi r5, r3, lit_634@l /* 0x80643A04@l */
/* 80412B18  38 9F 00 28 */	addi r4, r31, 0x28
/* 80412B1C  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80412B20  38 60 00 25 */	li r3, 0x25
/* 80412B24  C0 05 00 00 */	lfs f0, 0(r5)
/* 80412B28  EC 01 00 32 */	fmuls f0, f1, f0
/* 80412B2C  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 80412B30  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80412B34  48 21 B9 5D */	bl sAdo_OngenTrgStartSpeed
/* 80412B38  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80412B3C  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 80412B40  80 63 00 00 */	lwz r3, 0(r3)
/* 80412B44  A8 63 1B 32 */	lha r3, 0x1b32(r3)
/* 80412B48  38 03 00 1E */	addi r0, r3, 0x1e
/* 80412B4C  B0 1F 02 0C */	sth r0, 0x20c(r31)
/* 80412B50  48 00 01 40 */	b lbl_80412C90
lbl_80412B54:
/* 80412B54  80 DF 00 C4 */	lwz r6, 0xc4(r31)
/* 80412B58  38 7F 00 68 */	addi r3, r31, 0x68
/* 80412B5C  80 1F 00 C8 */	lwz r0, 0xc8(r31)
/* 80412B60  38 81 00 14 */	addi r4, r1, 0x14
/* 80412B64  38 A1 00 20 */	addi r5, r1, 0x20
/* 80412B68  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80412B6C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80412B70  80 1F 00 CC */	lwz r0, 0xcc(r31)
/* 80412B74  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80412B78  4B FA 83 CD */	bl xyz_t_add
/* 80412B7C  2C 1E 00 01 */	cmpwi r30, 1
/* 80412B80  41 82 01 10 */	beq lbl_80412C90
/* 80412B84  2C 1E 00 02 */	cmpwi r30, 2
/* 80412B88  41 82 01 08 */	beq lbl_80412C90
/* 80412B8C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80412B90  3C 60 80 64 */	lis r3, lit_472@ha /* 0x806439AC@ha */
/* 80412B94  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80412B98  EC 40 00 32 */	fmuls f2, f0, f0
/* 80412B9C  C0 03 39 AC */	lfs f0, lit_472@l(r3)  /* 0x806439AC@l */
/* 80412BA0  EC 21 00 72 */	fmuls f1, f1, f1
/* 80412BA4  EC 82 08 2A */	fadds f4, f2, f1
/* 80412BA8  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80412BAC  40 81 00 68 */	ble lbl_80412C14
/* 80412BB0  FC 20 20 34 */	frsqrte f1, f4
/* 80412BB4  3C 60 80 64 */	lis r3, lit_632@ha /* 0x806439F4@ha */
/* 80412BB8  38 83 39 F4 */	addi r4, r3, lit_632@l /* 0x806439F4@l */
/* 80412BBC  3C 60 80 64 */	lis r3, lit_633@ha /* 0x806439FC@ha */
/* 80412BC0  C8 64 00 00 */	lfd f3, 0(r4)
/* 80412BC4  FC 01 00 72 */	fmul f0, f1, f1
/* 80412BC8  C8 43 39 FC */	lfd f2, lit_633@l(r3)  /* 0x806439FC@l */
/* 80412BCC  FC 23 00 72 */	fmul f1, f3, f1
/* 80412BD0  FC 04 00 32 */	fmul f0, f4, f0
/* 80412BD4  FC 02 00 28 */	fsub f0, f2, f0
/* 80412BD8  FC 21 00 32 */	fmul f1, f1, f0
/* 80412BDC  FC 01 00 72 */	fmul f0, f1, f1
/* 80412BE0  FC 23 00 72 */	fmul f1, f3, f1
/* 80412BE4  FC 04 00 32 */	fmul f0, f4, f0
/* 80412BE8  FC 02 00 28 */	fsub f0, f2, f0
/* 80412BEC  FC 21 00 32 */	fmul f1, f1, f0
/* 80412BF0  FC 01 00 72 */	fmul f0, f1, f1
/* 80412BF4  FC 23 00 72 */	fmul f1, f3, f1
/* 80412BF8  FC 04 00 32 */	fmul f0, f4, f0
/* 80412BFC  FC 02 00 28 */	fsub f0, f2, f0
/* 80412C00  FC 01 00 32 */	fmul f0, f1, f0
/* 80412C04  FC 04 00 32 */	fmul f0, f4, f0
/* 80412C08  FC 00 00 18 */	frsp f0, f0
/* 80412C0C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80412C10  C0 81 00 08 */	lfs f4, 8(r1)
lbl_80412C14:
/* 80412C14  D0 9F 00 74 */	stfs f4, 0x74(r31)
/* 80412C18  3C 60 80 64 */	lis r3, lit_636@ha /* 0x80643A0C@ha */
/* 80412C1C  C0 03 3A 0C */	lfs f0, lit_636@l(r3)  /* 0x80643A0C@l */
/* 80412C20  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80412C24  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80412C28  40 80 00 08 */	bge lbl_80412C30
/* 80412C2C  48 00 00 08 */	b lbl_80412C34
lbl_80412C30:
/* 80412C30  FC 00 08 90 */	fmr f0, f1
lbl_80412C34:
/* 80412C34  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 80412C38  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80412C3C  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80412C40  4B FF 93 C1 */	bl atans_table
/* 80412C44  B0 7F 00 36 */	sth r3, 0x36(r31)
/* 80412C48  48 00 00 48 */	b lbl_80412C90
lbl_80412C4C:
/* 80412C4C  A8 7F 02 0C */	lha r3, 0x20c(r31)
/* 80412C50  2C 03 00 00 */	cmpwi r3, 0
/* 80412C54  41 81 00 10 */	bgt lbl_80412C64
/* 80412C58  38 00 00 00 */	li r0, 0
/* 80412C5C  90 1F 01 DC */	stw r0, 0x1dc(r31)
/* 80412C60  48 00 00 30 */	b lbl_80412C90
lbl_80412C64:
/* 80412C64  38 03 FF FF */	addi r0, r3, -1
/* 80412C68  B0 1F 02 0C */	sth r0, 0x20c(r31)
/* 80412C6C  48 00 00 24 */	b lbl_80412C90
lbl_80412C70:
/* 80412C70  A8 7F 02 0C */	lha r3, 0x20c(r31)
/* 80412C74  2C 03 00 00 */	cmpwi r3, 0
/* 80412C78  41 81 00 10 */	bgt lbl_80412C88
/* 80412C7C  38 00 00 00 */	li r0, 0
/* 80412C80  90 1F 01 DC */	stw r0, 0x1dc(r31)
/* 80412C84  48 00 00 0C */	b lbl_80412C90
lbl_80412C88:
/* 80412C88  38 03 FF FF */	addi r0, r3, -1
/* 80412C8C  B0 1F 02 0C */	sth r0, 0x20c(r31)
lbl_80412C90:
/* 80412C90  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80412C94  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80412C98  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 80412C9C  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 80412CA0  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 80412CA4  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 80412CA8  E3 81 00 58 */	psq_l f28, 88(r1), 0, 0 /* qr0 */
/* 80412CAC  39 61 00 50 */	addi r11, r1, 0x50
/* 80412CB0  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 80412CB4  4B C8 82 6D */	bl func_8009AF20
/* 80412CB8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80412CBC  7C 08 03 A6 */	mtlr r0
/* 80412CC0  38 21 00 90 */	addi r1, r1, 0x90
/* 80412CC4  4E 80 00 20 */	blr 
