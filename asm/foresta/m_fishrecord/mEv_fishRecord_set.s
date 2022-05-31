lbl_803AB8B0:
/* 803AB8B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803AB8B4  7C 08 02 A6 */	mflr r0
/* 803AB8B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 803AB8BC  39 61 00 30 */	addi r11, r1, 0x30
/* 803AB8C0  4B CE F6 11 */	bl func_8009AED0
/* 803AB8C4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803AB8C8  7C 7C 1B 78 */	mr r28, r3
/* 803AB8CC  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 803AB8D0  7C 9D 23 78 */	mr r29, r4
/* 803AB8D4  3F E3 00 02 */	addis r31, r3, 2
/* 803AB8D8  38 61 00 10 */	addi r3, r1, 0x10
/* 803AB8DC  3B FF 61 20 */	addi r31, r31, 0x6120
/* 803AB8E0  7F E4 FB 78 */	mr r4, r31
/* 803AB8E4  48 04 7B 7D */	bl mTM_set_renew_time
/* 803AB8E8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 803AB8EC  38 61 00 0C */	addi r3, r1, 0xc
/* 803AB8F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 803AB8F4  4B FF FE 19 */	bl mFR_get_record
/* 803AB8F8  7C 7E 1B 79 */	or. r30, r3, r3
/* 803AB8FC  40 82 00 18 */	bne lbl_803AB914
/* 803AB900  80 01 00 10 */	lwz r0, 0x10(r1)
/* 803AB904  38 61 00 08 */	addi r3, r1, 8
/* 803AB908  90 01 00 08 */	stw r0, 8(r1)
/* 803AB90C  4B FF FF 5D */	bl mFR_new_record
/* 803AB910  7C 7E 1B 78 */	mr r30, r3
lbl_803AB914:
/* 803AB914  7F C3 F3 78 */	mr r3, r30
/* 803AB918  7F 84 E3 78 */	mr r4, r28
/* 803AB91C  48 03 48 05 */	bl mPr_CopyPersonalID
/* 803AB920  93 BE 00 1C */	stw r29, 0x1c(r30)
/* 803AB924  7F E4 FB 78 */	mr r4, r31
/* 803AB928  38 7E 00 14 */	addi r3, r30, 0x14
/* 803AB92C  48 05 B9 09 */	bl lbRTC_TimeCopy
/* 803AB930  39 61 00 30 */	addi r11, r1, 0x30
/* 803AB934  4B CE F5 E9 */	bl func_8009AF1C
/* 803AB938  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803AB93C  7C 08 03 A6 */	mtlr r0
/* 803AB940  38 21 00 30 */	addi r1, r1, 0x30
/* 803AB944  4E 80 00 20 */	blr 
