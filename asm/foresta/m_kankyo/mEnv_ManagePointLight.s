lbl_803B8B6C:
/* 803B8B6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B8B70  7C 08 02 A6 */	mflr r0
/* 803B8B74  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B8B78  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803B8B7C  7C 7F 1B 78 */	mr r31, r3
/* 803B8B80  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803B8B84  48 02 0A BD */	bl get_player_actor_withoutCheck
/* 803B8B88  48 02 E5 25 */	bl mRmTp_GetNowSceneLightSwitchIndex
/* 803B8B8C  48 02 E7 41 */	bl mRmTp_Index2LightSwitchStatus
/* 803B8B90  2C 03 00 00 */	cmpwi r3, 0
/* 803B8B94  41 82 00 A8 */	beq lbl_803B8C3C
/* 803B8B98  3C 60 81 17 */	lis r3, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B8B9C  38 63 9B A0 */	addi r3, r3, data_81169BA0@l /* 0x81169BA0@l */
/* 803B8BA0  A8 03 00 14 */	lha r0, 0x14(r3)
/* 803B8BA4  2C 00 00 01 */	cmpwi r0, 1
/* 803B8BA8  40 82 00 0C */	bne lbl_803B8BB4
/* 803B8BAC  4B FF FF 65 */	bl mEnv_LightAnimeToSwitchON
/* 803B8BB0  48 00 01 58 */	b lbl_803B8D08
lbl_803B8BB4:
/* 803B8BB4  80 03 00 18 */	lwz r0, 0x18(r3)
/* 803B8BB8  2C 00 00 02 */	cmpwi r0, 2
/* 803B8BBC  40 82 00 2C */	bne lbl_803B8BE8
/* 803B8BC0  3C 80 80 64 */	lis r4, lit_1500@ha /* 0x8064251C@ha */
/* 803B8BC4  3C C0 80 64 */	lis r6, lit_545@ha /* 0x8064244C@ha */
/* 803B8BC8  38 A4 25 1C */	addi r5, r4, lit_1500@l /* 0x8064251C@l */
/* 803B8BCC  C0 26 24 4C */	lfs f1, lit_545@l(r6)  /* 0x8064244C@l */
/* 803B8BD0  C0 45 00 00 */	lfs f2, 0(r5)
/* 803B8BD4  3C 80 80 64 */	lis r4, lit_1501@ha /* 0x80642520@ha */
/* 803B8BD8  C0 84 25 20 */	lfs f4, lit_1501@l(r4)  /* 0x80642520@l */
/* 803B8BDC  FC 60 10 90 */	fmr f3, f2
/* 803B8BE0  48 00 25 D1 */	bl add_calc
/* 803B8BE4  48 00 00 20 */	b lbl_803B8C04
lbl_803B8BE8:
/* 803B8BE8  3C 80 80 64 */	lis r4, lit_1502@ha /* 0x80642524@ha */
/* 803B8BEC  3C A0 80 64 */	lis r5, lit_545@ha /* 0x8064244C@ha */
/* 803B8BF0  C0 44 25 24 */	lfs f2, lit_1502@l(r4)  /* 0x80642524@l */
/* 803B8BF4  C0 25 24 4C */	lfs f1, lit_545@l(r5)  /* 0x8064244C@l */
/* 803B8BF8  FC 60 10 90 */	fmr f3, f2
/* 803B8BFC  FC 80 10 90 */	fmr f4, f2
/* 803B8C00  48 00 25 B1 */	bl add_calc
lbl_803B8C04:
/* 803B8C04  38 60 20 00 */	li r3, 0x2000
/* 803B8C08  4B FD D3 09 */	bl chkTrigger
/* 803B8C0C  2C 03 00 00 */	cmpwi r3, 0
/* 803B8C10  41 82 00 F8 */	beq lbl_803B8D08
/* 803B8C14  48 02 E5 4D */	bl mRmTp_PleaseDrawLightSwitch
/* 803B8C18  2C 03 00 00 */	cmpwi r3, 0
/* 803B8C1C  41 82 00 EC */	beq lbl_803B8D08
/* 803B8C20  3C 80 80 64 */	lis r4, lit_544@ha /* 0x80642448@ha */
/* 803B8C24  7F E3 FB 78 */	mr r3, r31
/* 803B8C28  38 A4 24 48 */	addi r5, r4, lit_544@l /* 0x80642448@l */
/* 803B8C2C  38 80 00 00 */	li r4, 0
/* 803B8C30  C0 25 00 00 */	lfs f1, 0(r5)
/* 803B8C34  4B FF FE 2D */	bl mEnv_RequestChangeLightOFF
/* 803B8C38  48 00 00 D0 */	b lbl_803B8D08
lbl_803B8C3C:
/* 803B8C3C  4B FE C0 91 */	bl mFI_GetFieldId
/* 803B8C40  3C 80 81 17 */	lis r4, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B8C44  7C 7E 1B 78 */	mr r30, r3
/* 803B8C48  38 64 9B A0 */	addi r3, r4, data_81169BA0@l /* 0x81169BA0@l */
/* 803B8C4C  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 803B8C50  2C 00 00 00 */	cmpwi r0, 0
/* 803B8C54  40 82 00 24 */	bne lbl_803B8C78
/* 803B8C58  3C A0 80 64 */	lis r5, lit_1503@ha /* 0x80642528@ha */
/* 803B8C5C  3C 80 80 64 */	lis r4, lit_1500@ha /* 0x8064251C@ha */
/* 803B8C60  C0 45 25 28 */	lfs f2, lit_1503@l(r5)  /* 0x80642528@l */
/* 803B8C64  C0 23 00 90 */	lfs f1, 0x90(r3)
/* 803B8C68  FC 60 10 90 */	fmr f3, f2
/* 803B8C6C  C0 84 25 1C */	lfs f4, lit_1500@l(r4)  /* 0x8064251C@l */
/* 803B8C70  48 00 25 41 */	bl add_calc
/* 803B8C74  48 00 00 3C */	b lbl_803B8CB0
lbl_803B8C78:
/* 803B8C78  C0 23 00 00 */	lfs f1, 0(r3)
/* 803B8C7C  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 803B8C80  C0 43 00 90 */	lfs f2, 0x90(r3)
/* 803B8C84  EC 21 00 28 */	fsubs f1, f1, f0
/* 803B8C88  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 803B8C8C  D0 23 00 00 */	stfs f1, 0(r3)
/* 803B8C90  40 80 00 0C */	bge lbl_803B8C9C
/* 803B8C94  D0 43 00 00 */	stfs f2, 0(r3)
/* 803B8C98  48 00 00 18 */	b lbl_803B8CB0
lbl_803B8C9C:
/* 803B8C9C  3C 80 80 64 */	lis r4, lit_545@ha /* 0x8064244C@ha */
/* 803B8CA0  C0 04 24 4C */	lfs f0, lit_545@l(r4)  /* 0x8064244C@l */
/* 803B8CA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803B8CA8  40 81 00 08 */	ble lbl_803B8CB0
/* 803B8CAC  D0 03 00 00 */	stfs f0, 0(r3)
lbl_803B8CB0:
/* 803B8CB0  38 60 20 00 */	li r3, 0x2000
/* 803B8CB4  4B FD D2 5D */	bl chkTrigger
/* 803B8CB8  2C 03 00 00 */	cmpwi r3, 0
/* 803B8CBC  41 82 00 24 */	beq lbl_803B8CE0
/* 803B8CC0  48 02 E4 A1 */	bl mRmTp_PleaseDrawLightSwitch
/* 803B8CC4  2C 03 00 00 */	cmpwi r3, 0
/* 803B8CC8  41 82 00 18 */	beq lbl_803B8CE0
/* 803B8CCC  7F E3 FB 78 */	mr r3, r31
/* 803B8CD0  38 80 00 00 */	li r4, 0
/* 803B8CD4  38 A0 00 01 */	li r5, 1
/* 803B8CD8  4B FF FC F5 */	bl mEnv_RequestChangeLightON
/* 803B8CDC  48 00 00 2C */	b lbl_803B8D08
lbl_803B8CE0:
/* 803B8CE0  57 C0 04 26 */	rlwinm r0, r30, 0, 0x10, 0x13
/* 803B8CE4  2C 00 40 00 */	cmpwi r0, 0x4000
/* 803B8CE8  40 82 00 20 */	bne lbl_803B8D08
/* 803B8CEC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B8CF0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803B8CF4  3C 63 00 02 */	addis r3, r3, 2
/* 803B8CF8  80 03 60 04 */	lwz r0, 0x6004(r3)
/* 803B8CFC  2C 00 00 07 */	cmpwi r0, 7
/* 803B8D00  40 82 00 08 */	bne lbl_803B8D08
/* 803B8D04  48 00 03 BD */	bl mEnv_CheckNpcRoomPointLightNiceStatus
lbl_803B8D08:
/* 803B8D08  48 02 E3 A5 */	bl mRmTp_GetNowSceneLightSwitchIndex
/* 803B8D0C  2C 03 FF FF */	cmpwi r3, -1
/* 803B8D10  41 82 00 68 */	beq lbl_803B8D78
/* 803B8D14  3C 60 80 64 */	lis r3, lit_1033@ha /* 0x806424EC@ha */
/* 803B8D18  3C A0 81 17 */	lis r5, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B8D1C  38 83 24 EC */	addi r4, r3, lit_1033@l /* 0x806424EC@l */
/* 803B8D20  38 00 00 03 */	li r0, 3
/* 803B8D24  38 C5 9B A0 */	addi r6, r5, data_81169BA0@l /* 0x81169BA0@l */
/* 803B8D28  38 7F 1C E8 */	addi r3, r31, 0x1ce8
/* 803B8D2C  C8 44 00 00 */	lfd f2, 0(r4)
/* 803B8D30  38 E0 00 00 */	li r7, 0
/* 803B8D34  3C 80 43 30 */	lis r4, 0x4330
/* 803B8D38  7C 09 03 A6 */	mtctr r0
lbl_803B8D3C:
/* 803B8D3C  7C A6 3A 14 */	add r5, r6, r7
/* 803B8D40  90 81 00 08 */	stw r4, 8(r1)
/* 803B8D44  88 05 00 04 */	lbz r0, 4(r5)
/* 803B8D48  38 E7 00 01 */	addi r7, r7, 1
/* 803B8D4C  C0 06 00 00 */	lfs f0, 0(r6)
/* 803B8D50  90 01 00 0C */	stw r0, 0xc(r1)
/* 803B8D54  C8 21 00 08 */	lfd f1, 8(r1)
/* 803B8D58  EC 21 10 28 */	fsubs f1, f1, f2
/* 803B8D5C  EC 01 00 32 */	fmuls f0, f1, f0
/* 803B8D60  FC 00 00 1E */	fctiwz f0, f0
/* 803B8D64  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803B8D68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B8D6C  98 03 00 00 */	stb r0, 0(r3)
/* 803B8D70  38 63 00 01 */	addi r3, r3, 1
/* 803B8D74  42 00 FF C8 */	bdnz lbl_803B8D3C
lbl_803B8D78:
/* 803B8D78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B8D7C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803B8D80  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803B8D84  7C 08 03 A6 */	mtlr r0
/* 803B8D88  38 21 00 20 */	addi r1, r1, 0x20
/* 803B8D8C  4E 80 00 20 */	blr 
