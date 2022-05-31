lbl_8042AFFC:
/* 8042AFFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042B000  7C 08 02 A6 */	mflr r0
/* 8042B004  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042B008  39 61 00 20 */	addi r11, r1, 0x20
/* 8042B00C  4B C6 FE C9 */	bl func_8009AED4
/* 8042B010  7C 7D 1B 78 */	mr r29, r3
/* 8042B014  7C 9E 23 78 */	mr r30, r4
/* 8042B018  80 03 01 88 */	lwz r0, 0x188(r3)
/* 8042B01C  28 00 00 00 */	cmplwi r0, 0
/* 8042B020  40 82 00 D0 */	bne lbl_8042B0F0
/* 8042B024  7F C3 F3 78 */	mr r3, r30
/* 8042B028  4B FA F1 A9 */	bl mPlib_request_main_wait_type3
/* 8042B02C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8042B030  80 9D 01 94 */	lwz r4, 0x194(r29)
/* 8042B034  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8042B038  3C 63 00 02 */	addis r3, r3, 2
/* 8042B03C  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 8042B040  4B F8 86 71 */	bl mHS_set_use
/* 8042B044  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8042B048  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8042B04C  3F E3 00 02 */	addis r31, r3, 2
/* 8042B050  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 8042B054  A0 63 10 8A */	lhz r3, 0x108a(r3)
/* 8042B058  4B FB 5B 75 */	bl mPr_SetItemCollectBit
/* 8042B05C  38 60 1E 58 */	li r3, 0x1e58
/* 8042B060  4B FB 5B 6D */	bl mPr_SetItemCollectBit
/* 8042B064  80 1D 01 94 */	lwz r0, 0x194(r29)
/* 8042B068  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8042B06C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8042B070  1C 00 26 B0 */	mulli r0, r0, 0x26b0
/* 8042B074  3C 63 00 01 */	addis r3, r3, 1
/* 8042B078  7C 63 02 14 */	add r3, r3, r0
/* 8042B07C  88 63 A5 C0 */	lbz r3, -0x5a40(r3)
/* 8042B080  38 03 26 00 */	addi r0, r3, 0x2600
/* 8042B084  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 8042B088  4B FB 5B 45 */	bl mPr_SetItemCollectBit
/* 8042B08C  80 1D 01 94 */	lwz r0, 0x194(r29)
/* 8042B090  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8042B094  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8042B098  1C 00 26 B0 */	mulli r0, r0, 0x26b0
/* 8042B09C  3C 63 00 01 */	addis r3, r3, 1
/* 8042B0A0  7C 63 02 14 */	add r3, r3, r0
/* 8042B0A4  88 63 A5 C1 */	lbz r3, -0x5a3f(r3)
/* 8042B0A8  38 03 27 00 */	addi r0, r3, 0x2700
/* 8042B0AC  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 8042B0B0  4B FB 5B 1D */	bl mPr_SetItemCollectBit
/* 8042B0B4  4B F8 7E BD */	bl mHm_SetNowHome
/* 8042B0B8  38 60 00 00 */	li r3, 0
/* 8042B0BC  4B FA EE 71 */	bl mPlib_Set_unable_wade
/* 8042B0C0  38 60 00 00 */	li r3, 0
/* 8042B0C4  4B F6 6F DD */	bl mCoBG_ChangeBlockBgCheckMode
/* 8042B0C8  4B F6 FC C5 */	bl mEv_UnSetFirstIntro
/* 8042B0CC  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 8042B0D0  38 00 43 F8 */	li r0, 0x43f8
/* 8042B0D4  90 03 00 90 */	stw r0, 0x90(r3)
/* 8042B0D8  4B FB 8A 91 */	bl mQst_GetFirstJobData
/* 8042B0DC  4B FB 8C 6D */	bl mQst_SetFirstJobStart
/* 8042B0E0  7F A3 EB 78 */	mr r3, r29
/* 8042B0E4  7F C4 F3 78 */	mr r4, r30
/* 8042B0E8  38 A0 00 0C */	li r5, 0xc
/* 8042B0EC  48 00 04 29 */	bl aID_setupAction
lbl_8042B0F0:
/* 8042B0F0  7F A3 EB 78 */	mr r3, r29
/* 8042B0F4  4B FF F9 85 */	bl aID_check_set_first_field_bgm
/* 8042B0F8  39 61 00 20 */	addi r11, r1, 0x20
/* 8042B0FC  4B C6 FE 25 */	bl func_8009AF20
/* 8042B100  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042B104  7C 08 03 A6 */	mtlr r0
/* 8042B108  38 21 00 20 */	addi r1, r1, 0x20
/* 8042B10C  4E 80 00 20 */	blr 
