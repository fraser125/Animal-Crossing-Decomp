lbl_80411774:
/* 80411774  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80411778  7C 08 02 A6 */	mflr r0
/* 8041177C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80411780  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80411784  93 C1 00 08 */	stw r30, 8(r1)
/* 80411788  4B F9 AE 6D */	bl mFRm_CheckSaveData
/* 8041178C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80411790  7C 60 00 34 */	cntlzw r0, r3
/* 80411794  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 80411798  3C 63 00 03 */	addis r3, r3, 3
/* 8041179C  54 1F D9 7E */	srwi r31, r0, 5
/* 804117A0  88 03 88 7C */	lbz r0, -0x7784(r3)
/* 804117A4  2C 00 00 0A */	cmpwi r0, 0xa
/* 804117A8  40 80 00 18 */	bge lbl_804117C0
/* 804117AC  2C 00 00 01 */	cmpwi r0, 1
/* 804117B0  40 80 00 08 */	bge lbl_804117B8
/* 804117B4  48 00 00 0C */	b lbl_804117C0
lbl_804117B8:
/* 804117B8  3B C0 00 01 */	li r30, 1
/* 804117BC  48 00 00 08 */	b lbl_804117C4
lbl_804117C0:
/* 804117C0  3B C0 00 00 */	li r30, 0
lbl_804117C4:
/* 804117C4  4B FF 4D E5 */	bl lbRTC_IsAbnormal
/* 804117C8  2C 03 00 00 */	cmpwi r3, 0
/* 804117CC  41 82 00 54 */	beq lbl_80411820
/* 804117D0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804117D4  2C 1F 00 01 */	cmpwi r31, 1
/* 804117D8  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 804117DC  38 00 00 01 */	li r0, 1
/* 804117E0  3C 64 00 02 */	addis r3, r4, 2
/* 804117E4  98 03 61 2F */	stb r0, 0x612f(r3)
/* 804117E8  90 03 61 34 */	stw r0, 0x6134(r3)
/* 804117EC  41 82 00 0C */	beq lbl_804117F8
/* 804117F0  2C 1E 00 01 */	cmpwi r30, 1
/* 804117F4  40 82 00 14 */	bne lbl_80411808
lbl_804117F8:
/* 804117F8  3C 60 80 64 */	lis r3, mTM_rtcTime_default_code@ha /* 0x806432D0@ha */
/* 804117FC  38 03 32 D0 */	addi r0, r3, mTM_rtcTime_default_code@l /* 0x806432D0@l */
/* 80411800  7C 04 03 78 */	mr r4, r0
/* 80411804  48 00 00 08 */	b lbl_8041180C
lbl_80411808:
/* 80411808  38 84 00 0A */	addi r4, r4, 0xa
lbl_8041180C:
/* 8041180C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80411810  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80411814  3C 63 00 03 */	addis r3, r3, 3
/* 80411818  38 63 88 84 */	addi r3, r3, -30588
/* 8041181C  4B FF 5A 19 */	bl lbRTC_TimeCopy
lbl_80411820:
/* 80411820  2C 1E 00 01 */	cmpwi r30, 1
/* 80411824  41 82 00 1C */	beq lbl_80411840
/* 80411828  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8041182C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80411830  3C 63 00 02 */	addis r3, r3, 2
/* 80411834  88 03 61 2F */	lbz r0, 0x612f(r3)
/* 80411838  28 00 00 01 */	cmplwi r0, 1
/* 8041183C  40 82 00 34 */	bne lbl_80411870
lbl_80411840:
/* 80411840  2C 1E 00 01 */	cmpwi r30, 1
/* 80411844  40 82 00 08 */	bne lbl_8041184C
/* 80411848  4B FF FE A5 */	bl func_804116EC
lbl_8041184C:
/* 8041184C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80411850  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80411854  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 80411858  38 60 00 1C */	li r3, 0x1c
/* 8041185C  38 05 FF FF */	addi r0, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80411860  3C 84 00 02 */	addis r4, r4, 2
/* 80411864  B0 04 65 1C */	sth r0, 0x651c(r4)
/* 80411868  B0 04 65 1E */	sth r0, 0x651e(r4)
/* 8041186C  48 00 00 38 */	b lbl_804118A4
lbl_80411870:
/* 80411870  2C 1F 00 01 */	cmpwi r31, 1
/* 80411874  40 82 00 2C */	bne lbl_804118A0
/* 80411878  4B FF FE 75 */	bl func_804116EC
/* 8041187C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80411880  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80411884  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 80411888  38 60 00 13 */	li r3, 0x13
/* 8041188C  38 05 FF FF */	addi r0, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80411890  3C 84 00 02 */	addis r4, r4, 2
/* 80411894  B0 04 65 1C */	sth r0, 0x651c(r4)
/* 80411898  B0 04 65 1E */	sth r0, 0x651e(r4)
/* 8041189C  48 00 00 08 */	b lbl_804118A4
lbl_804118A0:
/* 804118A0  38 60 00 1B */	li r3, 0x1b
lbl_804118A4:
/* 804118A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804118A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804118AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 804118B0  7C 08 03 A6 */	mtlr r0
/* 804118B4  38 21 00 10 */	addi r1, r1, 0x10
/* 804118B8  4E 80 00 20 */	blr 