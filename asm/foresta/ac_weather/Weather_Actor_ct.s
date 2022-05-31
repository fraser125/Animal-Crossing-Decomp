lbl_806022A4:
/* 806022A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806022A8  7C 08 02 A6 */	mflr r0
/* 806022AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 806022B0  39 61 00 20 */	addi r11, r1, 0x20
/* 806022B4  4B A9 8C 21 */	bl func_8009AED4
/* 806022B8  7C 7E 1B 78 */	mr r30, r3
/* 806022BC  7C 9D 23 78 */	mr r29, r4
/* 806022C0  4B D7 CB 0D */	bl Camera2_getCenterPos_p
/* 806022C4  7C 7F 1B 78 */	mr r31, r3
/* 806022C8  7F C3 F3 78 */	mr r3, r30
/* 806022CC  38 80 00 00 */	li r4, 0
/* 806022D0  4B FF FE 31 */	bl aWeather_SetClip
/* 806022D4  4B D9 8B E5 */	bl mEv_CheckTitleDemo
/* 806022D8  2C 03 00 00 */	cmpwi r3, 0
/* 806022DC  40 81 00 40 */	ble lbl_8060231C
/* 806022E0  4B D9 8B D9 */	bl mEv_CheckTitleDemo
/* 806022E4  38 03 FF FF */	addi r0, r3, -1
/* 806022E8  3C 60 80 6D */	lis r3, DemoWeatherTbl@ha /* 0x806D1C88@ha */
/* 806022EC  54 04 10 3A */	slwi r4, r0, 2
/* 806022F0  38 63 1C 88 */	addi r3, r3, DemoWeatherTbl@l /* 0x806D1C88@l */
/* 806022F4  7C 03 22 AE */	lhax r0, r3, r4
/* 806022F8  7C A3 22 14 */	add r5, r3, r4
/* 806022FC  B0 1E 01 78 */	sth r0, 0x178(r30)
/* 80602300  7C 03 22 AE */	lhax r0, r3, r4
/* 80602304  B0 1E 01 7A */	sth r0, 0x17a(r30)
/* 80602308  A8 05 00 02 */	lha r0, 2(r5)
/* 8060230C  B0 1E 01 7E */	sth r0, 0x17e(r30)
/* 80602310  A8 05 00 02 */	lha r0, 2(r5)
/* 80602314  B0 1E 01 80 */	sth r0, 0x180(r30)
/* 80602318  48 00 00 74 */	b lbl_8060238C
lbl_8060231C:
/* 8060231C  4B DA 90 0D */	bl mFI_GetClimate
/* 80602320  2C 03 00 01 */	cmpwi r3, 1
/* 80602324  40 82 00 34 */	bne lbl_80602358
/* 80602328  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8060232C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80602330  3C 63 00 03 */	addis r3, r3, 3
/* 80602334  A8 03 DB A2 */	lha r0, -0x245e(r3)
/* 80602338  B0 1E 01 78 */	sth r0, 0x178(r30)
/* 8060233C  A8 03 DB A2 */	lha r0, -0x245e(r3)
/* 80602340  B0 1E 01 7A */	sth r0, 0x17a(r30)
/* 80602344  A8 03 DB A4 */	lha r0, -0x245c(r3)
/* 80602348  B0 1E 01 7E */	sth r0, 0x17e(r30)
/* 8060234C  A8 03 DB A4 */	lha r0, -0x245c(r3)
/* 80602350  B0 1E 01 80 */	sth r0, 0x180(r30)
/* 80602354  48 00 00 38 */	b lbl_8060238C
lbl_80602358:
/* 80602358  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8060235C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80602360  3C 63 00 02 */	addis r3, r3, 2
/* 80602364  88 03 0F 19 */	lbz r0, 0xf19(r3)
/* 80602368  54 00 E7 3E */	rlwinm r0, r0, 0x1c, 0x1c, 0x1f
/* 8060236C  B0 1E 01 78 */	sth r0, 0x178(r30)
/* 80602370  A8 1E 01 78 */	lha r0, 0x178(r30)
/* 80602374  B0 1E 01 7A */	sth r0, 0x17a(r30)
/* 80602378  88 03 0F 19 */	lbz r0, 0xf19(r3)
/* 8060237C  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80602380  B0 1E 01 7E */	sth r0, 0x17e(r30)
/* 80602384  A8 03 66 6E */	lha r0, 0x666e(r3)
/* 80602388  B0 1E 01 80 */	sth r0, 0x180(r30)
lbl_8060238C:
/* 8060238C  38 C0 00 00 */	li r6, 0
/* 80602390  38 00 00 1E */	li r0, 0x1e
/* 80602394  90 DE 01 84 */	stw r6, 0x184(r30)
/* 80602398  7F C3 F3 78 */	mr r3, r30
/* 8060239C  90 DE 01 94 */	stw r6, 0x194(r30)
/* 806023A0  98 DE 01 9C */	stb r6, 0x19c(r30)
/* 806023A4  80 BF 00 00 */	lwz r5, 0(r31)
/* 806023A8  80 9F 00 04 */	lwz r4, 4(r31)
/* 806023AC  90 BE 01 88 */	stw r5, 0x188(r30)
/* 806023B0  90 9E 01 8C */	stw r4, 0x18c(r30)
/* 806023B4  80 9F 00 08 */	lwz r4, 8(r31)
/* 806023B8  90 9E 01 90 */	stw r4, 0x190(r30)
/* 806023BC  B0 DE 01 C0 */	sth r6, 0x1c0(r30)
/* 806023C0  B0 DE 01 C2 */	sth r6, 0x1c2(r30)
/* 806023C4  B0 DE 01 D0 */	sth r6, 0x1d0(r30)
/* 806023C8  B0 1E 01 D2 */	sth r0, 0x1d2(r30)
/* 806023CC  B0 DE 01 DA */	sth r6, 0x1da(r30)
/* 806023D0  4B FF FD C1 */	bl aWeather_RenewWindInfo
/* 806023D4  4B DA 28 F9 */	bl mFI_GetFieldId
/* 806023D8  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 806023DC  40 82 00 0C */	bne lbl_806023E8
/* 806023E0  7F C3 F3 78 */	mr r3, r30
/* 806023E4  4B FF FC AD */	bl aWeather_SecureWeatherPrivateWork
lbl_806023E8:
/* 806023E8  A8 9E 01 78 */	lha r4, 0x178(r30)
/* 806023EC  7F C3 F3 78 */	mr r3, r30
/* 806023F0  4B FF FC 3D */	bl aWeather_SetNowProfile
/* 806023F4  A8 1E 01 78 */	lha r0, 0x178(r30)
/* 806023F8  2C 00 00 02 */	cmpwi r0, 2
/* 806023FC  41 82 00 0C */	beq lbl_80602408
/* 80602400  2C 00 00 03 */	cmpwi r0, 3
/* 80602404  40 82 00 40 */	bne lbl_80602444
lbl_80602408:
/* 80602408  3C 60 80 65 */	lis r3, lit_700@ha /* 0x8064BA0C@ha */
/* 8060240C  C0 3E 01 8C */	lfs f1, 0x18c(r30)
/* 80602410  38 83 BA 0C */	addi r4, r3, lit_700@l /* 0x8064BA0C@l */
/* 80602414  7F C3 F3 78 */	mr r3, r30
/* 80602418  C0 04 00 00 */	lfs f0, 0(r4)
/* 8060241C  7F A4 EB 78 */	mr r4, r29
/* 80602420  38 A0 00 28 */	li r5, 0x28
/* 80602424  EC 01 00 28 */	fsubs f0, f1, f0
/* 80602428  D0 1E 01 8C */	stfs f0, 0x18c(r30)
/* 8060242C  4B FF FE 21 */	bl aWeather_SnowInAdvance
/* 80602430  3C 60 80 65 */	lis r3, lit_700@ha /* 0x8064BA0C@ha */
/* 80602434  C0 3E 01 8C */	lfs f1, 0x18c(r30)
/* 80602438  C0 03 BA 0C */	lfs f0, lit_700@l(r3)  /* 0x8064BA0C@l */
/* 8060243C  EC 01 00 2A */	fadds f0, f1, f0
/* 80602440  D0 1E 01 8C */	stfs f0, 0x18c(r30)
lbl_80602444:
/* 80602444  38 00 00 00 */	li r0, 0
/* 80602448  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8060244C  B0 1E 01 DE */	sth r0, 0x1de(r30)
/* 80602450  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80602454  B0 1E 01 DC */	sth r0, 0x1dc(r30)
/* 80602458  80 83 00 14 */	lwz r4, 0x14(r3)
/* 8060245C  2C 04 00 2A */	cmpwi r4, 0x2a
/* 80602460  41 82 00 18 */	beq lbl_80602478
/* 80602464  38 04 FF D5 */	addi r0, r4, -43
/* 80602468  28 00 00 01 */	cmplwi r0, 1
/* 8060246C  40 81 00 0C */	ble lbl_80602478
/* 80602470  2C 04 00 2D */	cmpwi r4, 0x2d
/* 80602474  40 82 00 10 */	bne lbl_80602484
lbl_80602478:
/* 80602478  38 00 00 01 */	li r0, 1
/* 8060247C  B0 1E 01 E0 */	sth r0, 0x1e0(r30)
/* 80602480  48 00 00 48 */	b lbl_806024C8
lbl_80602484:
/* 80602484  3C 63 00 02 */	addis r3, r3, 2
/* 80602488  80 63 60 04 */	lwz r3, 0x6004(r3)
/* 8060248C  2C 03 00 2A */	cmpwi r3, 0x2a
/* 80602490  41 82 00 18 */	beq lbl_806024A8
/* 80602494  38 03 FF D5 */	addi r0, r3, -43
/* 80602498  28 00 00 01 */	cmplwi r0, 1
/* 8060249C  40 81 00 0C */	ble lbl_806024A8
/* 806024A0  2C 03 00 2D */	cmpwi r3, 0x2d
/* 806024A4  40 82 00 1C */	bne lbl_806024C0
lbl_806024A8:
/* 806024A8  88 1D 20 D1 */	lbz r0, 0x20d1(r29)
/* 806024AC  28 00 00 06 */	cmplwi r0, 6
/* 806024B0  40 82 00 10 */	bne lbl_806024C0
/* 806024B4  38 00 00 02 */	li r0, 2
/* 806024B8  B0 1E 01 E0 */	sth r0, 0x1e0(r30)
/* 806024BC  48 00 00 0C */	b lbl_806024C8
lbl_806024C0:
/* 806024C0  38 00 00 00 */	li r0, 0
/* 806024C4  B0 1E 01 E0 */	sth r0, 0x1e0(r30)
lbl_806024C8:
/* 806024C8  88 1D 20 D1 */	lbz r0, 0x20d1(r29)
/* 806024CC  28 00 00 06 */	cmplwi r0, 6
/* 806024D0  40 82 00 38 */	bne lbl_80602508
/* 806024D4  4B FF F8 45 */	bl aWeather_IsLand_Event_Check
/* 806024D8  2C 03 00 00 */	cmpwi r3, 0
/* 806024DC  40 82 00 2C */	bne lbl_80602508
/* 806024E0  7F C3 F3 78 */	mr r3, r30
/* 806024E4  4B FF F8 9D */	bl aWeather_Basement_Event_Check
/* 806024E8  2C 03 00 00 */	cmpwi r3, 0
/* 806024EC  40 82 00 1C */	bne lbl_80602508
/* 806024F0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 806024F4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 806024F8  3C 63 00 03 */	addis r3, r3, 3
/* 806024FC  A8 03 88 A2 */	lha r0, -0x775e(r3)
/* 80602500  B0 1E 01 D4 */	sth r0, 0x1d4(r30)
/* 80602504  48 00 00 28 */	b lbl_8060252C
lbl_80602508:
/* 80602508  38 00 FC 18 */	li r0, -1000
/* 8060250C  7F C3 F3 78 */	mr r3, r30
/* 80602510  B0 1E 01 D4 */	sth r0, 0x1d4(r30)
/* 80602514  7F A4 EB 78 */	mr r4, r29
/* 80602518  A8 BE 01 78 */	lha r5, 0x178(r30)
/* 8060251C  A8 DE 01 7E */	lha r6, 0x17e(r30)
/* 80602520  4B FF F8 85 */	bl aWeather_ChangeEnvSE
/* 80602524  7F C3 F3 78 */	mr r3, r30
/* 80602528  4B FF F3 2D */	bl func_80601854
lbl_8060252C:
/* 8060252C  39 61 00 20 */	addi r11, r1, 0x20
/* 80602530  4B A9 89 F1 */	bl func_8009AF20
/* 80602534  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80602538  7C 08 03 A6 */	mtlr r0
/* 8060253C  38 21 00 20 */	addi r1, r1, 0x20
/* 80602540  4E 80 00 20 */	blr 
