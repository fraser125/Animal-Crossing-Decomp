lbl_80554694:
/* 80554694  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80554698  7C 08 02 A6 */	mflr r0
/* 8055469C  38 A0 00 01 */	li r5, 1
/* 805546A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 805546A4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805546A8  7C 7F 1B 78 */	mr r31, r3
/* 805546AC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 805546B0  7C 9E 23 78 */	mr r30, r4
/* 805546B4  7F C3 F3 78 */	mr r3, r30
/* 805546B8  38 80 00 00 */	li r4, 0
/* 805546BC  4B E9 CB FD */	bl goto_next_scene
/* 805546C0  38 00 00 03 */	li r0, 3
/* 805546C4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805546C8  38 C3 85 38 */	addi r6, r3, common_data@l /* 0x81138538@l */
/* 805546CC  98 1E 20 D1 */	stb r0, 0x20d1(r30)
/* 805546D0  3C A6 00 02 */	addis r5, r6, 2
/* 805546D4  3C 60 80 64 */	lis r3, data_806432C4@ha /* 0x806432C4@ha */
/* 805546D8  38 83 32 C4 */	addi r4, r3, data_806432C4@l /* 0x806432C4@l */
/* 805546DC  81 05 61 3C */	lwz r8, 0x613c(r5)
/* 805546E0  80 64 00 00 */	lwz r3, 0(r4)
/* 805546E4  38 E0 00 04 */	li r7, 4
/* 805546E8  80 04 00 04 */	lwz r0, 4(r4)
/* 805546EC  28 08 00 00 */	cmplwi r8, 0
/* 805546F0  98 E5 61 4F */	stb r7, 0x614f(r5)
/* 805546F4  90 65 06 8C */	stw r3, 0x68c(r5)
/* 805546F8  90 05 06 90 */	stw r0, 0x690(r5)
/* 805546FC  41 82 00 14 */	beq lbl_80554710
/* 80554700  3C 86 00 01 */	addis r4, r6, 1
/* 80554704  38 68 00 08 */	addi r3, r8, 8
/* 80554708  38 84 91 20 */	addi r4, r4, -28384
/* 8055470C  4B E5 F1 E5 */	bl mLd_CopyLandName
lbl_80554710:
/* 80554710  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80554714  38 A0 00 0C */	li r5, 0xc
/* 80554718  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8055471C  3C 64 00 01 */	addis r3, r4, 1
/* 80554720  3C 84 00 02 */	addis r4, r4, 2
/* 80554724  38 63 91 20 */	addi r3, r3, -28384
/* 80554728  38 84 25 48 */	addi r4, r4, 0x2548
/* 8055472C  4B B0 88 F1 */	bl func_8005D01C
/* 80554730  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80554734  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80554738  3C 63 00 02 */	addis r3, r3, 2
/* 8055473C  38 63 34 40 */	addi r3, r3, 0x3440
/* 80554740  4B E7 F5 55 */	bl mNpc_DecideIslandNpc
/* 80554744  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80554748  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8055474C  3C 63 00 02 */	addis r3, r3, 2
/* 80554750  3B C3 61 20 */	addi r30, r3, 0x6120
/* 80554754  7F C4 F3 78 */	mr r4, r30
/* 80554758  38 63 12 DC */	addi r3, r3, 0x12dc
/* 8055475C  4B EB 2A D9 */	bl lbRTC_TimeCopy
/* 80554760  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80554764  7F C4 F3 78 */	mr r4, r30
/* 80554768  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8055476C  3C 63 00 02 */	addis r3, r3, 2
/* 80554770  38 63 0F 14 */	addi r3, r3, 0xf14
/* 80554774  4B E9 EC ED */	bl mTM_set_renew_time
/* 80554778  4B E9 EC 55 */	bl mTM_set_season
/* 8055477C  4B E6 19 11 */	bl Kabu_decide_price_schedule
/* 80554780  4B E8 B6 79 */	bl mPO_post_office_init
/* 80554784  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80554788  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8055478C  3F C3 00 02 */	addis r30, r3, 2
/* 80554790  88 1E 61 25 */	lbz r0, 0x6125(r30)
/* 80554794  98 1E 41 74 */	stb r0, 0x4174(r30)
/* 80554798  4B B0 85 5D */	bl fqrand
/* 8055479C  3C 80 80 65 */	lis r4, lit_970@ha /* 0x806495B0@ha */
/* 805547A0  88 7E 61 25 */	lbz r3, 0x6125(r30)
/* 805547A4  38 A4 95 B0 */	addi r5, r4, lit_970@l /* 0x806495B0@l */
/* 805547A8  C0 05 00 00 */	lfs f0, 0(r5)
/* 805547AC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805547B0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805547B4  54 65 0E 3C */	rlwinm r5, r3, 1, 0x18, 0x1e
/* 805547B8  EC 00 00 72 */	fmuls f0, f0, f1
/* 805547BC  3C 84 00 02 */	addis r4, r4, 2
/* 805547C0  88 04 61 23 */	lbz r0, 0x6123(r4)
/* 805547C4  FC 00 00 1E */	fctiwz f0, f0
/* 805547C8  28 00 00 0F */	cmplwi r0, 0xf
/* 805547CC  D8 01 00 08 */	stfd f0, 8(r1)
/* 805547D0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805547D4  98 04 41 75 */	stb r0, 0x4175(r4)
/* 805547D8  40 81 00 0C */	ble lbl_805547E4
/* 805547DC  38 05 00 01 */	addi r0, r5, 1
/* 805547E0  54 05 06 3E */	clrlwi r5, r0, 0x18
lbl_805547E4:
/* 805547E4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805547E8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805547EC  3C 63 00 02 */	addis r3, r3, 2
/* 805547F0  98 A3 41 76 */	stb r5, 0x4176(r3)
/* 805547F4  4B B0 85 01 */	bl fqrand
/* 805547F8  3C 80 80 65 */	lis r4, lit_970@ha /* 0x806495B0@ha */
/* 805547FC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80554800  C0 04 95 B0 */	lfs f0, lit_970@l(r4)  /* 0x806495B0@l */
/* 80554804  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80554808  3C 63 00 02 */	addis r3, r3, 2
/* 8055480C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80554810  FC 00 00 1E */	fctiwz f0, f0
/* 80554814  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80554818  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055481C  98 03 41 77 */	stb r0, 0x4177(r3)
/* 80554820  4B B0 84 D5 */	bl fqrand
/* 80554824  3C 60 80 65 */	lis r3, data_80649534@ha /* 0x80649534@ha */
/* 80554828  C0 03 95 34 */	lfs f0, data_80649534@l(r3)  /* 0x80649534@l */
/* 8055482C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80554830  FC 00 00 1E */	fctiwz f0, f0
/* 80554834  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80554838  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8055483C  38 A3 00 01 */	addi r5, r3, 1
/* 80554840  2C 05 00 04 */	cmpwi r5, 4
/* 80554844  41 80 00 08 */	blt lbl_8055484C
/* 80554848  38 A5 00 01 */	addi r5, r5, 1
lbl_8055484C:
/* 8055484C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80554850  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 80554854  3C 84 00 02 */	addis r4, r4, 2
/* 80554858  38 60 00 00 */	li r3, 0
/* 8055485C  98 A4 41 8A */	stb r5, 0x418a(r4)
/* 80554860  4B E9 59 85 */	bl mSP_ShopGameStartCt
/* 80554864  4B E7 58 95 */	bl mNtc_SetInitData
/* 80554868  4B E8 BC 49 */	bl mPr_SetNowPrivateCloth
/* 8055486C  4B E4 62 81 */	bl mEv_SetFirstJob
/* 80554870  4B E4 64 79 */	bl mEv_SetFirstIntro
/* 80554874  4B E6 5E FD */	bl mEnv_DecideWeather_FirstGameStart
/* 80554878  38 60 FF FF */	li r3, -1
/* 8055487C  4B E2 8B D1 */	bl mCD_calendar_clear
/* 80554880  4B E2 8D 49 */	bl mCD_calendar_wellcome_on
/* 80554884  4B E7 6D 59 */	bl mNpc_SetParentNameAllAnimal
/* 80554888  7F E3 FB 78 */	mr r3, r31
/* 8055488C  4B FF EB 19 */	bl aNGD_set_pl_face_type
/* 80554890  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80554894  38 00 00 01 */	li r0, 1
/* 80554898  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8055489C  38 60 00 01 */	li r3, 1
/* 805548A0  3C 84 00 02 */	addis r4, r4, 2
/* 805548A4  98 04 65 21 */	stb r0, 0x6521(r4)
/* 805548A8  4B E9 2B 35 */	bl mRmTp_SetDefaultLightSwitchData
/* 805548AC  38 60 41 C2 */	li r3, 0x41c2
/* 805548B0  4B E2 72 5D */	bl mBGMPsComp_make_ps_wipe
/* 805548B4  38 60 00 12 */	li r3, 0x12
/* 805548B8  4B E2 7F 69 */	bl mBGMPsComp_scene_mode
/* 805548BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805548C0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805548C4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 805548C8  7C 08 03 A6 */	mtlr r0
/* 805548CC  38 21 00 30 */	addi r1, r1, 0x30
/* 805548D0  4E 80 00 20 */	blr 
