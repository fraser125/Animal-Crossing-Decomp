lbl_805BAACC:
/* 805BAACC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805BAAD0  7C 08 02 A6 */	mflr r0
/* 805BAAD4  90 01 00 44 */	stw r0, 0x44(r1)
/* 805BAAD8  39 61 00 40 */	addi r11, r1, 0x40
/* 805BAADC  4B AE 03 F1 */	bl func_8009AECC
/* 805BAAE0  7C 7B 1B 78 */	mr r27, r3
/* 805BAAE4  7C 9C 23 78 */	mr r28, r4
/* 805BAAE8  4B E0 4B C1 */	bl func_803BF6A8
/* 805BAAEC  3B E0 11 28 */	li r31, 0x1128
/* 805BAAF0  7C 7E 1B 78 */	mr r30, r3
/* 805BAAF4  4B E0 61 A5 */	bl mMsg_Check_MainNormalContinue
/* 805BAAF8  2C 03 00 00 */	cmpwi r3, 0
/* 805BAAFC  41 82 01 C4 */	beq lbl_805BACC0
/* 805BAB00  4B DC 8A 41 */	bl func_80383540
/* 805BAB04  4B DC 90 69 */	bl mChoice_Get_ChoseNum
/* 805BAB08  2C 03 00 01 */	cmpwi r3, 1
/* 805BAB0C  41 82 01 5C */	beq lbl_805BAC68
/* 805BAB10  40 80 01 94 */	bge lbl_805BACA4
/* 805BAB14  2C 03 00 00 */	cmpwi r3, 0
/* 805BAB18  40 80 00 08 */	bge lbl_805BAB20
/* 805BAB1C  48 00 01 88 */	b lbl_805BACA4
lbl_805BAB20:
/* 805BAB20  38 61 00 10 */	addi r3, r1, 0x10
/* 805BAB24  38 81 00 0C */	addi r4, r1, 0xc
/* 805BAB28  38 A1 00 08 */	addi r5, r1, 8
/* 805BAB2C  4B DE 74 25 */	bl mFAs_GetFieldRank_Condition
/* 805BAB30  7C 7F 1B 78 */	mr r31, r3
/* 805BAB34  4B DE 69 59 */	bl mFAs_CheckGoodField
/* 805BAB38  80 01 00 10 */	lwz r0, 0x10(r1)
/* 805BAB3C  2C 00 00 06 */	cmpwi r0, 6
/* 805BAB40  40 82 00 68 */	bne lbl_805BABA8
/* 805BAB44  2C 03 00 00 */	cmpwi r3, 0
/* 805BAB48  41 82 00 60 */	beq lbl_805BABA8
/* 805BAB4C  38 60 00 1D */	li r3, 0x1d
/* 805BAB50  4B E3 18 A5 */	bl mSC_trophy_get
/* 805BAB54  2C 03 00 00 */	cmpwi r3, 0
/* 805BAB58  40 82 00 50 */	bne lbl_805BABA8
/* 805BAB5C  4B DF 8F AD */	bl mLd_PlayerManKindCheck
/* 805BAB60  2C 03 00 00 */	cmpwi r3, 0
/* 805BAB64  40 82 00 44 */	bne lbl_805BABA8
/* 805BAB68  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805BAB6C  38 80 00 00 */	li r4, 0
/* 805BAB70  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805BAB74  3C 63 00 02 */	addis r3, r3, 2
/* 805BAB78  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 805BAB7C  4B E2 5B AD */	bl mPr_GetPossessionItemIdx
/* 805BAB80  2C 03 00 00 */	cmpwi r3, 0
/* 805BAB84  41 80 00 24 */	blt lbl_805BABA8
/* 805BAB88  4B DE 00 AD */	bl mEv_CheckFirstJob
/* 805BAB8C  2C 03 00 00 */	cmpwi r3, 0
/* 805BAB90  40 82 00 18 */	bne lbl_805BABA8
/* 805BAB94  2C 1F 00 00 */	cmpwi r31, 0
/* 805BAB98  41 82 00 10 */	beq lbl_805BABA8
/* 805BAB9C  3B E0 2C 50 */	li r31, 0x2c50
/* 805BABA0  3B A0 00 03 */	li r29, 3
/* 805BABA4  48 00 00 B4 */	b lbl_805BAC58
lbl_805BABA8:
/* 805BABA8  2C 1F 00 04 */	cmpwi r31, 4
/* 805BABAC  41 82 00 A0 */	beq lbl_805BAC4C
/* 805BABB0  2C 1F 00 01 */	cmpwi r31, 1
/* 805BABB4  41 82 00 28 */	beq lbl_805BABDC
/* 805BABB8  40 80 00 10 */	bge lbl_805BABC8
/* 805BABBC  2C 1F 00 00 */	cmpwi r31, 0
/* 805BABC0  40 80 00 14 */	bge lbl_805BABD4
/* 805BABC4  48 00 00 28 */	b lbl_805BABEC
lbl_805BABC8:
/* 805BABC8  2C 1F 00 03 */	cmpwi r31, 3
/* 805BABCC  40 80 00 20 */	bge lbl_805BABEC
/* 805BABD0  48 00 00 14 */	b lbl_805BABE4
lbl_805BABD4:
/* 805BABD4  3B E0 2C 4F */	li r31, 0x2c4f
/* 805BABD8  48 00 00 18 */	b lbl_805BABF0
lbl_805BABDC:
/* 805BABDC  3B E0 2C 45 */	li r31, 0x2c45
/* 805BABE0  48 00 00 10 */	b lbl_805BABF0
lbl_805BABE4:
/* 805BABE4  3B E0 2C 46 */	li r31, 0x2c46
/* 805BABE8  48 00 00 08 */	b lbl_805BABF0
lbl_805BABEC:
/* 805BABEC  3B E0 2C 47 */	li r31, 0x2c47
lbl_805BABF0:
/* 805BABF0  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 805BABF4  38 61 00 14 */	addi r3, r1, 0x14
/* 805BABF8  38 80 00 10 */	li r4, 0x10
/* 805BABFC  38 C0 00 10 */	li r6, 0x10
/* 805BAC00  38 E0 00 01 */	li r7, 1
/* 805BAC04  39 00 00 00 */	li r8, 0
/* 805BAC08  39 20 00 01 */	li r9, 1
/* 805BAC0C  4B DF 48 6D */	bl mFont_UnintToString
/* 805BAC10  7F C3 F3 78 */	mr r3, r30
/* 805BAC14  38 A1 00 14 */	addi r5, r1, 0x14
/* 805BAC18  38 80 00 01 */	li r4, 1
/* 805BAC1C  38 C0 00 10 */	li r6, 0x10
/* 805BAC20  4B E0 50 35 */	bl mMsg_Set_free_str
/* 805BAC24  3C 60 80 6C */	lis r3, choume_str@ha /* 0x806C67F0@ha */
/* 805BAC28  80 81 00 08 */	lwz r4, 8(r1)
/* 805BAC2C  38 03 67 F0 */	addi r0, r3, choume_str@l /* 0x806C67F0@l */
/* 805BAC30  7F C3 F3 78 */	mr r3, r30
/* 805BAC34  7C A0 22 14 */	add r5, r0, r4
/* 805BAC38  38 80 00 00 */	li r4, 0
/* 805BAC3C  38 C0 00 01 */	li r6, 1
/* 805BAC40  4B E0 50 15 */	bl mMsg_Set_free_str
/* 805BAC44  3B A0 00 04 */	li r29, 4
/* 805BAC48  48 00 00 10 */	b lbl_805BAC58
lbl_805BAC4C:
/* 805BAC4C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 805BAC50  3B A0 00 04 */	li r29, 4
/* 805BAC54  23 E0 2C 4E */	subfic r31, r0, 0x2c4e
lbl_805BAC58:
/* 805BAC58  7F C3 F3 78 */	mr r3, r30
/* 805BAC5C  7F E4 FB 78 */	mr r4, r31
/* 805BAC60  4B E0 53 65 */	bl mMsg_Set_continue_msg_num
/* 805BAC64  48 00 00 44 */	b lbl_805BACA8
lbl_805BAC68:
/* 805BAC68  38 60 00 0B */	li r3, 0xb
/* 805BAC6C  38 80 00 00 */	li r4, 0
/* 805BAC70  4B E3 56 B1 */	bl mSM_check_open_inventory_itemlist
/* 805BAC74  2C 03 00 00 */	cmpwi r3, 0
/* 805BAC78  41 82 00 14 */	beq lbl_805BAC8C
/* 805BAC7C  38 00 00 00 */	li r0, 0
/* 805BAC80  3B A0 00 02 */	li r29, 2
/* 805BAC84  90 1B 02 B8 */	stw r0, 0x2b8(r27)
/* 805BAC88  48 00 00 0C */	b lbl_805BAC94
lbl_805BAC8C:
/* 805BAC8C  3B E0 11 27 */	li r31, 0x1127
/* 805BAC90  3B A0 00 04 */	li r29, 4
lbl_805BAC94:
/* 805BAC94  7F C3 F3 78 */	mr r3, r30
/* 805BAC98  7F E4 FB 78 */	mr r4, r31
/* 805BAC9C  4B E0 53 29 */	bl mMsg_Set_continue_msg_num
/* 805BACA0  48 00 00 08 */	b lbl_805BACA8
lbl_805BACA4:
/* 805BACA4  3B A0 00 04 */	li r29, 4
lbl_805BACA8:
/* 805BACA8  2C 1D FF FF */	cmpwi r29, -1
/* 805BACAC  41 82 00 14 */	beq lbl_805BACC0
/* 805BACB0  7F 63 DB 78 */	mr r3, r27
/* 805BACB4  7F 84 E3 78 */	mr r4, r28
/* 805BACB8  7F A5 EB 78 */	mr r5, r29
/* 805BACBC  48 00 04 15 */	bl aSHR_setup_action
lbl_805BACC0:
/* 805BACC0  39 61 00 40 */	addi r11, r1, 0x40
/* 805BACC4  4B AE 02 55 */	bl func_8009AF18
/* 805BACC8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805BACCC  7C 08 03 A6 */	mtlr r0
/* 805BACD0  38 21 00 40 */	addi r1, r1, 0x40
/* 805BACD4  4E 80 00 20 */	blr 
