lbl_8049F748:
/* 8049F748  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8049F74C  7C 08 02 A6 */	mflr r0
/* 8049F750  90 01 00 34 */	stw r0, 0x34(r1)
/* 8049F754  39 61 00 30 */	addi r11, r1, 0x30
/* 8049F758  4B BF B7 7D */	bl func_8009AED4
/* 8049F75C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8049F760  7C 7E 1B 78 */	mr r30, r3
/* 8049F764  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 8049F768  7C 9F 23 78 */	mr r31, r4
/* 8049F76C  3C 63 00 02 */	addis r3, r3, 2
/* 8049F770  80 63 60 04 */	lwz r3, 0x6004(r3)
/* 8049F774  2C 03 00 09 */	cmpwi r3, 9
/* 8049F778  41 82 00 EC */	beq lbl_8049F864
/* 8049F77C  38 03 FF E9 */	addi r0, r3, -23
/* 8049F780  28 00 00 02 */	cmplwi r0, 2
/* 8049F784  40 81 00 E0 */	ble lbl_8049F864
/* 8049F788  2C 03 00 1D */	cmpwi r3, 0x1d
/* 8049F78C  40 82 00 08 */	bne lbl_8049F794
/* 8049F790  48 00 00 D4 */	b lbl_8049F864
lbl_8049F794:
/* 8049F794  4B F0 55 39 */	bl mFI_GetFieldId
/* 8049F798  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 8049F79C  40 82 00 C8 */	bne lbl_8049F864
/* 8049F7A0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8049F7A4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8049F7A8  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8049F7AC  2C 00 00 07 */	cmpwi r0, 7
/* 8049F7B0  40 82 00 B4 */	bne lbl_8049F864
/* 8049F7B4  3C 60 20 00 */	lis r3, 0x2000
/* 8049F7B8  4B EF B2 61 */	bl mEv_CheckEvent
/* 8049F7BC  2C 03 00 01 */	cmpwi r3, 1
/* 8049F7C0  40 82 00 A4 */	bne lbl_8049F864
/* 8049F7C4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8049F7C8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8049F7CC  3C C3 00 02 */	addis r6, r3, 2
/* 8049F7D0  80 A6 04 74 */	lwz r5, 0x474(r6)
/* 8049F7D4  80 86 04 78 */	lwz r4, 0x478(r6)
/* 8049F7D8  80 66 61 20 */	lwz r3, 0x6120(r6)
/* 8049F7DC  80 06 61 24 */	lwz r0, 0x6124(r6)
/* 8049F7E0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8049F7E4  90 81 00 14 */	stw r4, 0x14(r1)
/* 8049F7E8  90 61 00 08 */	stw r3, 8(r1)
/* 8049F7EC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8049F7F0  4B FF FC D1 */	bl aSL_SetRenewalChiraswhi_Notice
/* 8049F7F4  38 61 00 10 */	addi r3, r1, 0x10
/* 8049F7F8  38 81 00 08 */	addi r4, r1, 8
/* 8049F7FC  4B F6 71 19 */	bl lbRTC_IsOverTime
/* 8049F800  2C 03 00 01 */	cmpwi r3, 1
/* 8049F804  41 82 00 1C */	beq lbl_8049F820
/* 8049F808  38 61 00 08 */	addi r3, r1, 8
/* 8049F80C  38 81 00 10 */	addi r4, r1, 0x10
/* 8049F810  38 A0 00 70 */	li r5, 0x70
/* 8049F814  4B F6 70 25 */	bl lbRTC_IsEqualTime
/* 8049F818  2C 03 00 00 */	cmpwi r3, 0
/* 8049F81C  41 82 00 48 */	beq lbl_8049F864
lbl_8049F820:
/* 8049F820  4B F4 A1 C1 */	bl mSP_GetRealShopLevel
/* 8049F824  7C 7D 07 34 */	extsh r29, r3
/* 8049F828  4B F4 A1 3D */	bl mSP_GetShopLevel
/* 8049F82C  7C 65 07 34 */	extsh r5, r3
/* 8049F830  7F C3 F3 78 */	mr r3, r30
/* 8049F834  7F E4 FB 78 */	mr r4, r31
/* 8049F838  7F A6 EB 78 */	mr r6, r29
/* 8049F83C  4B FF FE 61 */	bl aSL_RewriteShopFg
/* 8049F840  2C 03 00 00 */	cmpwi r3, 0
/* 8049F844  41 82 00 20 */	beq lbl_8049F864
/* 8049F848  4B F4 A1 35 */	bl mSP_RenewShopLevel
/* 8049F84C  2C 03 00 00 */	cmpwi r3, 0
/* 8049F850  41 82 00 14 */	beq lbl_8049F864
/* 8049F854  3C 60 20 00 */	lis r3, 0x2000
/* 8049F858  4B EF B1 71 */	bl mEv_EventOFF
/* 8049F85C  4B F4 99 E9 */	bl mSP_NewExchangeDay
/* 8049F860  4B F4 A7 49 */	bl mSP_ExchangeLineUp_ZeldaMalloc
lbl_8049F864:
/* 8049F864  39 61 00 30 */	addi r11, r1, 0x30
/* 8049F868  4B BF B6 B9 */	bl func_8009AF20
/* 8049F86C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8049F870  7C 08 03 A6 */	mtlr r0
/* 8049F874  38 21 00 30 */	addi r1, r1, 0x30
/* 8049F878  4E 80 00 20 */	blr 
