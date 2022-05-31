lbl_8062B83C:
/* 8062B83C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8062B840  7C 08 02 A6 */	mflr r0
/* 8062B844  90 01 00 24 */	stw r0, 0x24(r1)
/* 8062B848  39 61 00 20 */	addi r11, r1, 0x20
/* 8062B84C  4B A6 F6 89 */	bl func_8009AED4
/* 8062B850  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8062B854  7C 7F 1B 78 */	mr r31, r3
/* 8062B858  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 8062B85C  38 60 00 00 */	li r3, 0
/* 8062B860  7C 1D 03 78 */	mr r29, r0
/* 8062B864  4B DD 7F 09 */	bl mCPk_InitPak
/* 8062B868  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8062B86C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8062B870  3B C3 00 20 */	addi r30, r3, 0x20
/* 8062B874  3C 63 00 02 */	addis r3, r3, 2
/* 8062B878  93 C3 61 3C */	stw r30, 0x613c(r3)
/* 8062B87C  4B D8 0D 79 */	bl mFRm_CheckSaveData
/* 8062B880  2C 03 00 00 */	cmpwi r3, 0
/* 8062B884  40 82 00 68 */	bne lbl_8062B8EC
/* 8062B888  3C 80 00 02 */	lis r4, 0x0002 /* 0x00026000@ha */
/* 8062B88C  7F A3 EB 78 */	mr r3, r29
/* 8062B890  38 84 60 00 */	addi r4, r4, 0x6000 /* 0x00026000@l */
/* 8062B894  4B A3 17 D5 */	bl bzero
/* 8062B898  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8062B89C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8062B8A0  4B D8 0D 85 */	bl mFRm_ClearSaveCheckData
/* 8062B8A4  7F DD F3 78 */	mr r29, r30
/* 8062B8A8  3B C0 00 00 */	li r30, 0
lbl_8062B8AC:
/* 8062B8AC  7F A3 EB 78 */	mr r3, r29
/* 8062B8B0  4B DB 49 69 */	bl mPr_ClearPrivateInfo
/* 8062B8B4  3B DE 00 01 */	addi r30, r30, 1
/* 8062B8B8  3B BD 24 40 */	addi r29, r29, 0x2440
/* 8062B8BC  2C 1E 00 04 */	cmpwi r30, 4
/* 8062B8C0  41 80 FF EC */	blt lbl_8062B8AC
/* 8062B8C4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8062B8C8  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 8062B8CC  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8062B8D0  38 C0 00 01 */	li r6, 1
/* 8062B8D4  3C 85 00 01 */	addis r4, r5, 1
/* 8062B8D8  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 8062B8DC  3C 65 00 02 */	addis r3, r5, 2
/* 8062B8E0  98 C4 91 28 */	stb r6, -0x6ed8(r4)
/* 8062B8E4  B0 03 65 1C */	sth r0, 0x651c(r3)
/* 8062B8E8  B0 03 65 1E */	sth r0, 0x651e(r3)
lbl_8062B8EC:
/* 8062B8EC  4B D6 F0 3D */	bl mEv_ClearEventInfo
/* 8062B8F0  4B D6 F5 C9 */	bl mEv_CheckTitleDemo
/* 8062B8F4  2C 03 00 00 */	cmpwi r3, 0
/* 8062B8F8  40 81 00 80 */	ble lbl_8062B978
/* 8062B8FC  3C A0 80 6D */	lis r5, l_demo_door_data_table@ha /* 0x806D48C0@ha */
/* 8062B900  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8062B904  38 A5 48 C0 */	addi r5, r5, l_demo_door_data_table@l /* 0x806D48C0@l */
/* 8062B908  54 60 10 3A */	slwi r0, r3, 2
/* 8062B90C  7C A5 02 14 */	add r5, r5, r0
/* 8062B910  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8062B914  81 05 FF FC */	lwz r8, -4(r5)
/* 8062B918  3C E4 00 03 */	addis r7, r4, 3
/* 8062B91C  38 00 00 02 */	li r0, 2
/* 8062B920  38 C7 85 2C */	addi r6, r7, -31444
/* 8062B924  38 A8 FF FC */	addi r5, r8, -4
/* 8062B928  7C 09 03 A6 */	mtctr r0
lbl_8062B92C:
/* 8062B92C  80 85 00 04 */	lwz r4, 4(r5)
/* 8062B930  84 05 00 08 */	lwzu r0, 8(r5)
/* 8062B934  90 86 00 04 */	stw r4, 4(r6)
/* 8062B938  94 06 00 08 */	stwu r0, 8(r6)
/* 8062B93C  42 00 FF F0 */	bdnz lbl_8062B92C
/* 8062B940  80 05 00 04 */	lwz r0, 4(r5)
/* 8062B944  90 06 00 04 */	stw r0, 4(r6)
/* 8062B948  80 88 00 00 */	lwz r4, 0(r8)
/* 8062B94C  38 04 00 01 */	addi r0, r4, 1
/* 8062B950  90 07 85 30 */	stw r0, -0x7ad0(r7)
/* 8062B954  4B FF FE 8D */	bl mTM_demotime_set
/* 8062B958  4B DB 6D 81 */	bl mPr_RandomSetPlayerData_title_demo
/* 8062B95C  7F E3 FB 78 */	mr r3, r31
/* 8062B960  4B FF FE 01 */	bl func_8062B760
/* 8062B964  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8062B968  38 00 00 03 */	li r0, 3
/* 8062B96C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8062B970  3C 63 00 02 */	addis r3, r3, 2
/* 8062B974  98 03 61 4F */	stb r0, 0x614f(r3)
lbl_8062B978:
/* 8062B978  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8062B97C  38 00 00 21 */	li r0, 0x21
/* 8062B980  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8062B984  90 03 00 14 */	stw r0, 0x14(r3)
/* 8062B988  4B DC 7A 45 */	bl mTM_set_season
/* 8062B98C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8062B990  3C 60 80 63 */	lis r3, play_init@ha /* 0x8062A5C4@ha */
/* 8062B994  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8062B998  38 00 00 01 */	li r0, 1
/* 8062B99C  3C A4 00 02 */	addis r5, r4, 2
/* 8062B9A0  38 80 00 00 */	li r4, 0
/* 8062B9A4  98 05 65 21 */	stb r0, 0x6521(r5)
/* 8062B9A8  38 63 A5 C4 */	addi r3, r3, play_init@l /* 0x8062A5C4@l */
/* 8062B9AC  38 00 26 00 */	li r0, 0x2600
/* 8062B9B0  98 9F 00 9F */	stb r4, 0x9f(r31)
/* 8062B9B4  90 7F 00 0C */	stw r3, 0xc(r31)
/* 8062B9B8  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8062B9BC  39 61 00 20 */	addi r11, r1, 0x20
/* 8062B9C0  4B A6 F5 61 */	bl func_8009AF20
/* 8062B9C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8062B9C8  7C 08 03 A6 */	mtlr r0
/* 8062B9CC  38 21 00 20 */	addi r1, r1, 0x20
/* 8062B9D0  4E 80 00 20 */	blr 
