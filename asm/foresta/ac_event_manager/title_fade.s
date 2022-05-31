lbl_8041DA7C:
/* 8041DA7C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8041DA80  7C 08 02 A6 */	mflr r0
/* 8041DA84  90 01 00 74 */	stw r0, 0x74(r1)
/* 8041DA88  39 61 00 70 */	addi r11, r1, 0x70
/* 8041DA8C  4B C7 D4 35 */	bl func_8009AEC0
/* 8041DA90  3C E0 81 1C */	lis r7, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8041DA94  7C 78 1B 78 */	mr r24, r3
/* 8041DA98  38 67 52 F0 */	addi r3, r7, data_811C52F0@l /* 0x811C52F0@l */
/* 8041DA9C  7C 99 23 78 */	mr r25, r4
/* 8041DAA0  80 63 00 00 */	lwz r3, 0(r3)
/* 8041DAA4  7C BA 2B 78 */	mr r26, r5
/* 8041DAA8  7C DB 33 78 */	mr r27, r6
/* 8041DAAC  7C 7E 1B 78 */	mr r30, r3
/* 8041DAB0  4B FB BB 91 */	bl get_player_actor_withoutCheck
/* 8041DAB4  7C 7F 1B 78 */	mr r31, r3
/* 8041DAB8  AB A3 00 36 */	lha r29, 0x36(r3)
/* 8041DABC  4B F7 C8 99 */	bl mDemo_CheckDemo4Event
/* 8041DAC0  2C 03 00 00 */	cmpwi r3, 0
/* 8041DAC4  40 82 00 4C */	bne lbl_8041DB10
/* 8041DAC8  4B F7 FB 1D */	bl mEv_PlayerOK
/* 8041DACC  2C 03 00 00 */	cmpwi r3, 0
/* 8041DAD0  41 82 00 40 */	beq lbl_8041DB10
/* 8041DAD4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8041DAD8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8041DADC  3C 63 00 03 */	addis r3, r3, 3
/* 8041DAE0  88 03 88 68 */	lbz r0, -0x7798(r3)
/* 8041DAE4  28 00 00 00 */	cmplwi r0, 0
/* 8041DAE8  40 82 00 28 */	bne lbl_8041DB10
/* 8041DAEC  4B F8 0B 79 */	bl mEv_LiveSonchoPresent
/* 8041DAF0  2C 03 00 00 */	cmpwi r3, 0
/* 8041DAF4  40 82 00 1C */	bne lbl_8041DB10
/* 8041DAF8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8041DAFC  38 C3 85 38 */	addi r6, r3, common_data@l /* 0x81138538@l */
/* 8041DB00  3C A6 00 03 */	addis r5, r6, 3
/* 8041DB04  80 05 DB AC */	lwz r0, -0x2454(r5)
/* 8041DB08  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8041DB0C  41 82 00 0C */	beq lbl_8041DB18
lbl_8041DB10:
/* 8041DB10  38 60 00 00 */	li r3, 0
/* 8041DB14  48 00 02 EC */	b lbl_8041DE00
lbl_8041DB18:
/* 8041DB18  38 60 00 00 */	li r3, 0
/* 8041DB1C  38 80 00 07 */	li r4, 7
/* 8041DB20  38 00 00 04 */	li r0, 4
/* 8041DB24  2C 19 00 07 */	cmpwi r25, 7
/* 8041DB28  90 81 00 20 */	stw r4, 0x20(r1)
/* 8041DB2C  98 61 00 24 */	stb r3, 0x24(r1)
/* 8041DB30  98 61 00 25 */	stb r3, 0x25(r1)
/* 8041DB34  B0 01 00 26 */	sth r0, 0x26(r1)
/* 8041DB38  40 82 01 80 */	bne lbl_8041DCB8
/* 8041DB3C  3C 66 00 02 */	addis r3, r6, 2
/* 8041DB40  80 63 61 00 */	lwz r3, 0x6100(r3)
/* 8041DB44  28 03 00 00 */	cmplwi r3, 0
/* 8041DB48  41 82 01 24 */	beq lbl_8041DC6C
/* 8041DB4C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8041DB50  2C 00 00 01 */	cmpwi r0, 1
/* 8041DB54  40 82 01 18 */	bne lbl_8041DC6C
/* 8041DB58  38 61 00 14 */	addi r3, r1, 0x14
/* 8041DB5C  38 81 00 10 */	addi r4, r1, 0x10
/* 8041DB60  38 A0 00 04 */	li r5, 4
/* 8041DB64  4B F8 88 9D */	bl mFI_BlockKind2BkNum
/* 8041DB68  2C 03 00 01 */	cmpwi r3, 1
/* 8041DB6C  40 82 01 00 */	bne lbl_8041DC6C
/* 8041DB70  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 8041DB74  38 61 00 0C */	addi r3, r1, 0xc
/* 8041DB78  80 C1 00 10 */	lwz r6, 0x10(r1)
/* 8041DB7C  38 81 00 08 */	addi r4, r1, 8
/* 8041DB80  4B F8 7F F9 */	bl mFI_BkNum2WposXZ
/* 8041DB84  3C 80 80 64 */	lis r4, lit_1730@ha /* 0x80643DD8@ha */
/* 8041DB88  3C 60 80 64 */	lis r3, lit_1731@ha /* 0x80643DDC@ha */
/* 8041DB8C  38 A4 3D D8 */	addi r5, r4, lit_1730@l /* 0x80643DD8@l */
/* 8041DB90  38 00 00 00 */	li r0, 0
/* 8041DB94  38 83 3D DC */	addi r4, r3, lit_1731@l /* 0x80643DDC@l */
/* 8041DB98  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 8041DB9C  C0 05 00 00 */	lfs f0, 0(r5)
/* 8041DBA0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8041DBA4  C0 21 00 08 */	lfs f1, 8(r1)
/* 8041DBA8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8041DBAC  EC 62 00 2A */	fadds f3, f2, f0
/* 8041DBB0  C0 04 00 00 */	lfs f0, 0(r4)
/* 8041DBB4  B0 01 00 2A */	sth r0, 0x2a(r1)
/* 8041DBB8  3C 63 00 03 */	addis r3, r3, 3
/* 8041DBBC  EC 41 00 2A */	fadds f2, f1, f0
/* 8041DBC0  38 00 00 0E */	li r0, 0xe
/* 8041DBC4  FC 20 18 1E */	fctiwz f1, f3
/* 8041DBC8  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 8041DBCC  FC 00 10 1E */	fctiwz f0, f2
/* 8041DBD0  D0 41 00 08 */	stfs f2, 8(r1)
/* 8041DBD4  D8 21 00 38 */	stfd f1, 0x38(r1)
/* 8041DBD8  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8041DBDC  80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 8041DBE0  80 81 00 44 */	lwz r4, 0x44(r1)
/* 8041DBE4  B0 A1 00 28 */	sth r5, 0x28(r1)
/* 8041DBE8  B0 81 00 2C */	sth r4, 0x2c(r1)
/* 8041DBEC  90 03 85 5C */	stw r0, -0x7aa4(r3)
/* 8041DBF0  88 7E 00 E4 */	lbz r3, 0xe4(r30)
/* 8041DBF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041DBF8  7C 63 07 74 */	extsb r3, r3
/* 8041DBFC  7C 03 00 00 */	cmpw r3, r0
/* 8041DC00  40 82 00 D8 */	bne lbl_8041DCD8
/* 8041DC04  88 7E 00 E5 */	lbz r3, 0xe5(r30)
/* 8041DC08  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8041DC0C  7C 63 07 74 */	extsb r3, r3
/* 8041DC10  7C 03 00 00 */	cmpw r3, r0
/* 8041DC14  40 82 00 C4 */	bne lbl_8041DCD8
/* 8041DC18  A8 01 00 2C */	lha r0, 0x2c(r1)
/* 8041DC1C  3C A0 43 30 */	lis r5, 0x4330
/* 8041DC20  3C C0 80 64 */	lis r6, lit_685@ha /* 0x80643DAC@ha */
/* 8041DC24  3C 80 80 64 */	lis r4, lit_1732@ha /* 0x80643DE0@ha */
/* 8041DC28  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8041DC2C  38 60 00 04 */	li r3, 4
/* 8041DC30  90 01 00 44 */	stw r0, 0x44(r1)
/* 8041DC34  38 00 00 05 */	li r0, 5
/* 8041DC38  C8 46 3D AC */	lfd f2, lit_685@l(r6)  /* 0x80643DAC@l */
/* 8041DC3C  90 A1 00 40 */	stw r5, 0x40(r1)
/* 8041DC40  C0 04 3D E0 */	lfs f0, lit_1732@l(r4)  /* 0x80643DE0@l */
/* 8041DC44  C8 21 00 40 */	lfd f1, 0x40(r1)
/* 8041DC48  B0 01 00 26 */	sth r0, 0x26(r1)
/* 8041DC4C  EC 21 10 28 */	fsubs f1, f1, f2
/* 8041DC50  98 61 00 24 */	stb r3, 0x24(r1)
/* 8041DC54  EC 01 00 2A */	fadds f0, f1, f0
/* 8041DC58  FC 00 00 1E */	fctiwz f0, f0
/* 8041DC5C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8041DC60  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8041DC64  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 8041DC68  48 00 00 70 */	b lbl_8041DCD8
lbl_8041DC6C:
/* 8041DC6C  38 60 00 07 */	li r3, 7
/* 8041DC70  38 80 00 00 */	li r4, 0
/* 8041DC74  4B F8 04 69 */	bl mEv_get_common_area
/* 8041DC78  28 03 00 00 */	cmplwi r3, 0
/* 8041DC7C  41 82 00 0C */	beq lbl_8041DC88
/* 8041DC80  38 00 00 00 */	li r0, 0
/* 8041DC84  90 03 00 00 */	stw r0, 0(r3)
lbl_8041DC88:
/* 8041DC88  38 00 09 10 */	li r0, 0x910
/* 8041DC8C  38 A0 00 C8 */	li r5, 0xc8
/* 8041DC90  38 80 03 52 */	li r4, 0x352
/* 8041DC94  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8041DC98  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8041DC9C  B0 01 00 28 */	sth r0, 0x28(r1)
/* 8041DCA0  3C 63 00 03 */	addis r3, r3, 3
/* 8041DCA4  38 00 00 0D */	li r0, 0xd
/* 8041DCA8  B0 A1 00 2A */	sth r5, 0x2a(r1)
/* 8041DCAC  B0 81 00 2C */	sth r4, 0x2c(r1)
/* 8041DCB0  90 03 85 5C */	stw r0, -0x7aa4(r3)
/* 8041DCB4  48 00 00 24 */	b lbl_8041DCD8
lbl_8041DCB8:
/* 8041DCB8  38 00 09 10 */	li r0, 0x910
/* 8041DCBC  38 80 00 C8 */	li r4, 0xc8
/* 8041DCC0  38 60 03 52 */	li r3, 0x352
/* 8041DCC4  B0 01 00 28 */	sth r0, 0x28(r1)
/* 8041DCC8  38 00 00 0D */	li r0, 0xd
/* 8041DCCC  B0 81 00 2A */	sth r4, 0x2a(r1)
/* 8041DCD0  B0 61 00 2C */	sth r3, 0x2c(r1)
/* 8041DCD4  90 05 85 5C */	stw r0, -0x7aa4(r5)
lbl_8041DCD8:
/* 8041DCD8  38 80 00 00 */	li r4, 0
/* 8041DCDC  38 00 00 06 */	li r0, 6
/* 8041DCE0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8041DCE4  B0 81 00 2E */	sth r4, 0x2e(r1)
/* 8041DCE8  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8041DCEC  7F C3 F3 78 */	mr r3, r30
/* 8041DCF0  98 01 00 30 */	stb r0, 0x30(r1)
/* 8041DCF4  3C C4 00 03 */	addis r6, r4, 3
/* 8041DCF8  38 81 00 20 */	addi r4, r1, 0x20
/* 8041DCFC  38 A0 00 00 */	li r5, 0
/* 8041DD00  8B 86 85 34 */	lbz r28, -0x7acc(r6)
/* 8041DD04  A8 06 85 38 */	lha r0, -0x7ac8(r6)
/* 8041DD08  B0 01 00 18 */	sth r0, 0x18(r1)
/* 8041DD0C  A8 06 85 3A */	lha r0, -0x7ac6(r6)
/* 8041DD10  B0 01 00 1A */	sth r0, 0x1a(r1)
/* 8041DD14  A8 06 85 3C */	lha r0, -0x7ac4(r6)
/* 8041DD18  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 8041DD1C  4B FD 34 8D */	bl goto_other_scene
/* 8041DD20  2C 03 00 01 */	cmpwi r3, 1
/* 8041DD24  40 82 00 D8 */	bne lbl_8041DDFC
/* 8041DD28  38 60 00 06 */	li r3, 6
/* 8041DD2C  4B F8 D6 29 */	bl mFI_SetClimate
/* 8041DD30  38 00 00 01 */	li r0, 1
/* 8041DD34  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8041DD38  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8041DD3C  90 18 02 50 */	stw r0, 0x250(r24)
/* 8041DD40  3C 64 00 03 */	addis r3, r4, 3
/* 8041DD44  38 A0 00 00 */	li r5, 0
/* 8041DD48  98 A3 85 6D */	stb r5, -0x7a93(r3)
/* 8041DD4C  80 04 00 14 */	lwz r0, 0x14(r4)
/* 8041DD50  90 03 85 68 */	stw r0, -0x7a98(r3)
/* 8041DD54  B0 A3 85 6E */	sth r5, -0x7a92(r3)
/* 8041DD58  4B FC 01 45 */	bl mPlib_Check_CorrectPlayerPos_forEvent
/* 8041DD5C  2C 03 00 00 */	cmpwi r3, 0
/* 8041DD60  40 82 00 28 */	bne lbl_8041DD88
/* 8041DD64  38 1D 0F FF */	addi r0, r29, 0xfff
/* 8041DD68  7F 03 C3 78 */	mr r3, r24
/* 8041DD6C  54 00 9F 7E */	rlwinm r0, r0, 0x13, 0x1d, 0x1f
/* 8041DD70  7F 66 DB 78 */	mr r6, r27
/* 8041DD74  7C 1C 03 78 */	mr r28, r0
/* 8041DD78  7F 27 CB 78 */	mr r7, r25
/* 8041DD7C  38 81 00 18 */	addi r4, r1, 0x18
/* 8041DD80  38 BF 00 28 */	addi r5, r31, 0x28
/* 8041DD84  4B FF F7 A9 */	bl player_lap_check
lbl_8041DD88:
/* 8041DD88  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8041DD8C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 8041DD90  38 E4 85 38 */	addi r7, r4, common_data@l /* 0x81138538@l */
/* 8041DD94  38 A0 00 06 */	li r5, 6
/* 8041DD98  3D 07 00 03 */	addis r8, r7, 3
/* 8041DD9C  38 C3 FF FF */	addi r6, r3, 0xFFFF /* 0x0000FFFF@l */
/* 8041DDA0  9B 88 85 6C */	stb r28, -0x7a94(r8)
/* 8041DDA4  3C 67 00 02 */	addis r3, r7, 2
/* 8041DDA8  38 80 00 00 */	li r4, 0
/* 8041DDAC  38 00 00 0B */	li r0, 0xb
/* 8041DDB0  A8 E1 00 18 */	lha r7, 0x18(r1)
/* 8041DDB4  B0 E8 85 70 */	sth r7, -0x7a90(r8)
/* 8041DDB8  A8 E1 00 1A */	lha r7, 0x1a(r1)
/* 8041DDBC  B0 E8 85 72 */	sth r7, -0x7a8e(r8)
/* 8041DDC0  A8 E1 00 1C */	lha r7, 0x1c(r1)
/* 8041DDC4  B0 E8 85 74 */	sth r7, -0x7a8c(r8)
/* 8041DDC8  B0 C8 85 76 */	sth r6, -0x7a8a(r8)
/* 8041DDCC  98 A8 85 78 */	stb r5, -0x7a88(r8)
/* 8041DDD0  B3 28 85 C4 */	sth r25, -0x7a3c(r8)
/* 8041DDD4  9B 48 85 C6 */	stb r26, -0x7a3a(r8)
/* 8041DDD8  98 88 85 C7 */	stb r4, -0x7a39(r8)
/* 8041DDDC  98 BE 20 D1 */	stb r5, 0x20d1(r30)
/* 8041DDE0  98 1E 20 D0 */	stb r0, 0x20d0(r30)
/* 8041DDE4  98 A3 61 4F */	stb r5, 0x614f(r3)
/* 8041DDE8  48 05 4D 9D */	bl aMR_SaveWaltzTempo2
/* 8041DDEC  4B FB E1 45 */	bl mPlib_request_player_warp_forEvent
/* 8041DDF0  4B F5 ED 55 */	bl mBGMForce_inform_start
/* 8041DDF4  38 60 00 01 */	li r3, 1
/* 8041DDF8  48 00 00 08 */	b lbl_8041DE00
lbl_8041DDFC:
/* 8041DDFC  38 60 00 00 */	li r3, 0
lbl_8041DE00:
/* 8041DE00  39 61 00 70 */	addi r11, r1, 0x70
/* 8041DE04  4B C7 D1 09 */	bl func_8009AF0C
/* 8041DE08  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8041DE0C  7C 08 03 A6 */	mtlr r0
/* 8041DE10  38 21 00 70 */	addi r1, r1, 0x70
/* 8041DE14  4E 80 00 20 */	blr 
