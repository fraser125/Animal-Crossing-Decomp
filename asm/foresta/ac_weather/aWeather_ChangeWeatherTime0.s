lbl_8060292C:
/* 8060292C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80602930  7C 08 02 A6 */	mflr r0
/* 80602934  90 01 00 24 */	stw r0, 0x24(r1)
/* 80602938  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8060293C  7C 7F 1B 78 */	mr r31, r3
/* 80602940  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80602944  4B D9 85 75 */	bl mEv_CheckTitleDemo
/* 80602948  2C 03 00 00 */	cmpwi r3, 0
/* 8060294C  41 81 01 48 */	bgt lbl_80602A94
/* 80602950  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80602954  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80602958  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8060295C  2C 00 00 0F */	cmpwi r0, 0xf
/* 80602960  41 82 01 34 */	beq lbl_80602A94
/* 80602964  2C 00 00 10 */	cmpwi r0, 0x10
/* 80602968  41 82 01 2C */	beq lbl_80602A94
/* 8060296C  2C 00 00 31 */	cmpwi r0, 0x31
/* 80602970  40 82 00 08 */	bne lbl_80602978
/* 80602974  48 00 01 20 */	b lbl_80602A94
lbl_80602978:
/* 80602978  4B DA 47 CD */	bl mFI_CheckPlayerBlockInfo
/* 8060297C  54 60 02 53 */	rlwinm. r0, r3, 0, 9, 9
/* 80602980  40 82 01 14 */	bne lbl_80602A94
/* 80602984  38 60 00 00 */	li r3, 0
/* 80602988  4B DF 0A 79 */	bl mTM_check_renew_time
/* 8060298C  2C 03 00 00 */	cmpwi r3, 0
/* 80602990  41 82 01 04 */	beq lbl_80602A94
/* 80602994  38 61 00 0E */	addi r3, r1, 0xe
/* 80602998  38 81 00 0C */	addi r4, r1, 0xc
/* 8060299C  4B DB 73 AD */	bl mEnv_RandomWeather
/* 806029A0  38 61 00 0A */	addi r3, r1, 0xa
/* 806029A4  38 81 00 08 */	addi r4, r1, 8
/* 806029A8  4B D9 85 A5 */	bl mEv_GetEventWeather
/* 806029AC  A8 61 00 0A */	lha r3, 0xa(r1)
/* 806029B0  2C 03 FF FF */	cmpwi r3, -1
/* 806029B4  41 82 00 10 */	beq lbl_806029C4
/* 806029B8  A8 01 00 08 */	lha r0, 8(r1)
/* 806029BC  B0 61 00 0E */	sth r3, 0xe(r1)
/* 806029C0  B0 01 00 0C */	sth r0, 0xc(r1)
lbl_806029C4:
/* 806029C4  4B D9 81 6D */	bl mEv_CheckRealArbeit
/* 806029C8  2C 03 00 01 */	cmpwi r3, 1
/* 806029CC  40 82 00 1C */	bne lbl_806029E8
/* 806029D0  A8 01 00 0E */	lha r0, 0xe(r1)
/* 806029D4  2C 00 00 01 */	cmpwi r0, 1
/* 806029D8  40 82 00 10 */	bne lbl_806029E8
/* 806029DC  38 00 00 00 */	li r0, 0
/* 806029E0  B0 01 00 0E */	sth r0, 0xe(r1)
/* 806029E4  B0 01 00 0C */	sth r0, 0xc(r1)
lbl_806029E8:
/* 806029E8  38 60 00 00 */	li r3, 0
/* 806029EC  4B DF 0A 41 */	bl mTM_off_renew_time
/* 806029F0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 806029F4  A8 81 00 0E */	lha r4, 0xe(r1)
/* 806029F8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 806029FC  3F C3 00 02 */	addis r30, r3, 2
/* 80602A00  7C 80 07 35 */	extsh. r0, r4
/* 80602A04  88 1E 0F 19 */	lbz r0, 0xf19(r30)
/* 80602A08  54 00 E7 3E */	rlwinm r0, r0, 0x1c, 0x1c, 0x1f
/* 80602A0C  7C 00 07 34 */	extsh r0, r0
/* 80602A10  41 82 00 0C */	beq lbl_80602A1C
/* 80602A14  2C 04 00 03 */	cmpwi r4, 3
/* 80602A18  40 82 00 18 */	bne lbl_80602A30
lbl_80602A1C:
/* 80602A1C  2C 00 00 02 */	cmpwi r0, 2
/* 80602A20  41 82 00 0C */	beq lbl_80602A2C
/* 80602A24  2C 00 00 01 */	cmpwi r0, 1
/* 80602A28  40 82 00 08 */	bne lbl_80602A30
lbl_80602A2C:
/* 80602A2C  4B DB 7D C9 */	bl mEnv_PreRainNowFine_Init
lbl_80602A30:
/* 80602A30  A8 01 00 0E */	lha r0, 0xe(r1)
/* 80602A34  A8 61 00 0C */	lha r3, 0xc(r1)
/* 80602A38  54 00 20 36 */	slwi r0, r0, 4
/* 80602A3C  7C 60 03 78 */	or r0, r3, r0
/* 80602A40  98 1E 0F 19 */	stb r0, 0xf19(r30)
/* 80602A44  4B D9 84 75 */	bl mEv_CheckTitleDemo
/* 80602A48  2C 03 FF F7 */	cmpwi r3, -9
/* 80602A4C  40 82 00 10 */	bne lbl_80602A5C
/* 80602A50  A8 1F 01 DA */	lha r0, 0x1da(r31)
/* 80602A54  2C 00 00 01 */	cmpwi r0, 1
/* 80602A58  41 82 00 20 */	beq lbl_80602A78
lbl_80602A5C:
/* 80602A5C  4B DA 46 7D */	bl mFI_CheckInIsland
/* 80602A60  2C 03 00 00 */	cmpwi r3, 0
/* 80602A64  40 82 00 14 */	bne lbl_80602A78
/* 80602A68  A8 81 00 0E */	lha r4, 0xe(r1)
/* 80602A6C  7F E3 FB 78 */	mr r3, r31
/* 80602A70  A8 A1 00 0C */	lha r5, 0xc(r1)
/* 80602A74  4B FF EE D9 */	bl aWeather_RequestChangeWeather
lbl_80602A78:
/* 80602A78  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80602A7C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80602A80  3C 83 00 02 */	addis r4, r3, 2
/* 80602A84  80 64 61 20 */	lwz r3, 0x6120(r4)
/* 80602A88  80 04 61 24 */	lwz r0, 0x6124(r4)
/* 80602A8C  90 64 66 70 */	stw r3, 0x6670(r4)
/* 80602A90  90 04 66 74 */	stw r0, 0x6674(r4)
lbl_80602A94:
/* 80602A94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80602A98  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80602A9C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80602AA0  7C 08 03 A6 */	mtlr r0
/* 80602AA4  38 21 00 20 */	addi r1, r1, 0x20
/* 80602AA8  4E 80 00 20 */	blr 
