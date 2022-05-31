lbl_8039D62C:
/* 8039D62C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8039D630  7C 08 02 A6 */	mflr r0
/* 8039D634  90 01 00 24 */	stw r0, 0x24(r1)
/* 8039D638  39 61 00 20 */	addi r11, r1, 0x20
/* 8039D63C  4B CF D8 95 */	bl func_8009AED0
/* 8039D640  3C 80 81 16 */	lis r4, data_81167688@ha /* 0x81167688@ha */
/* 8039D644  38 00 00 00 */	li r0, 0
/* 8039D648  3B E4 76 88 */	addi r31, r4, data_81167688@l /* 0x81167688@l */
/* 8039D64C  7C 7E 1B 78 */	mr r30, r3
/* 8039D650  90 1F 00 04 */	stw r0, 4(r31)
/* 8039D654  4B FF D8 65 */	bl mEv_CheckTitleDemo
/* 8039D658  2C 03 00 00 */	cmpwi r3, 0
/* 8039D65C  40 82 01 94 */	bne lbl_8039D7F0
/* 8039D660  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039D664  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039D668  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8039D66C  2C 03 00 0F */	cmpwi r3, 0xf
/* 8039D670  41 82 01 80 */	beq lbl_8039D7F0
/* 8039D674  2C 03 00 10 */	cmpwi r3, 0x10
/* 8039D678  41 82 01 78 */	beq lbl_8039D7F0
/* 8039D67C  2C 03 00 31 */	cmpwi r3, 0x31
/* 8039D680  41 82 01 70 */	beq lbl_8039D7F0
/* 8039D684  2C 03 00 13 */	cmpwi r3, 0x13
/* 8039D688  41 82 01 68 */	beq lbl_8039D7F0
/* 8039D68C  38 03 FF E5 */	addi r0, r3, -27
/* 8039D690  28 00 00 01 */	cmplwi r0, 1
/* 8039D694  40 81 01 5C */	ble lbl_8039D7F0
/* 8039D698  2C 03 00 22 */	cmpwi r3, 0x22
/* 8039D69C  40 82 00 08 */	bne lbl_8039D6A4
/* 8039D6A0  48 00 01 50 */	b lbl_8039D7F0
lbl_8039D6A4:
/* 8039D6A4  38 60 00 01 */	li r3, 1
/* 8039D6A8  48 00 B4 95 */	bl mFI_CheckPlayerWade
/* 8039D6AC  2C 03 00 01 */	cmpwi r3, 1
/* 8039D6B0  40 82 00 10 */	bne lbl_8039D6C0
/* 8039D6B4  38 7E 00 0C */	addi r3, r30, 0xc
/* 8039D6B8  38 9E 00 08 */	addi r4, r30, 8
/* 8039D6BC  48 00 B4 B1 */	bl mFI_GetNextBlockNum
lbl_8039D6C0:
/* 8039D6C0  4B FF CC 79 */	bl mDemo_CheckDemo
/* 8039D6C4  2C 03 00 00 */	cmpwi r3, 0
/* 8039D6C8  40 82 01 00 */	bne lbl_8039D7C8
/* 8039D6CC  4B FF FF 19 */	bl mEv_PlayerOK
/* 8039D6D0  2C 03 00 00 */	cmpwi r3, 0
/* 8039D6D4  41 82 00 F4 */	beq lbl_8039D7C8
/* 8039D6D8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039D6DC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039D6E0  3C 63 00 02 */	addis r3, r3, 2
/* 8039D6E4  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 8039D6E8  48 00 0F C9 */	bl mEv_LivePlayer
/* 8039D6EC  2C 03 00 00 */	cmpwi r3, 0
/* 8039D6F0  41 82 00 D8 */	beq lbl_8039D7C8
/* 8039D6F4  48 00 0F 71 */	bl mEv_LiveSonchoPresent
/* 8039D6F8  2C 03 00 00 */	cmpwi r3, 0
/* 8039D6FC  40 82 00 CC */	bne lbl_8039D7C8
/* 8039D700  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039D704  88 1E 00 00 */	lbz r0, 0(r30)
/* 8039D708  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039D70C  3C 63 00 02 */	addis r3, r3, 2
/* 8039D710  8B 83 61 23 */	lbz r28, 0x6123(r3)
/* 8039D714  8B A3 61 22 */	lbz r29, 0x6122(r3)
/* 8039D718  7C 00 E0 40 */	cmplw r0, r28
/* 8039D71C  41 82 00 54 */	beq lbl_8039D770
/* 8039D720  4B FF D7 B5 */	bl mEv_RenewalDataEveryDay
/* 8039D724  38 00 00 02 */	li r0, 2
/* 8039D728  98 1E 00 03 */	stb r0, 3(r30)
/* 8039D72C  4B FF E3 89 */	bl init_time_seat
/* 8039D730  4B FF EA 79 */	bl init_weekly_event
/* 8039D734  7F C3 F3 78 */	mr r3, r30
/* 8039D738  4B FF F8 2D */	bl update_schedule_today
/* 8039D73C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8039D740  7F C3 F3 78 */	mr r3, r30
/* 8039D744  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8039D748  3C 84 00 02 */	addis r4, r4, 2
/* 8039D74C  88 04 61 25 */	lbz r0, 0x6125(r4)
/* 8039D750  98 1E 00 04 */	stb r0, 4(r30)
/* 8039D754  9B 9E 00 00 */	stb r28, 0(r30)
/* 8039D758  9B BE 00 01 */	stb r29, 1(r30)
/* 8039D75C  4B FF F2 C5 */	bl update_active
/* 8039D760  7F C3 F3 78 */	mr r3, r30
/* 8039D764  4B FF FE 01 */	bl mEv_2nd_init
/* 8039D768  4B FD FE 61 */	bl mCD_calendar_wellcome_on
/* 8039D76C  48 00 00 44 */	b lbl_8039D7B0
lbl_8039D770:
/* 8039D770  88 7E 00 01 */	lbz r3, 1(r30)
/* 8039D774  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 8039D778  7C 03 00 40 */	cmplw r3, r0
/* 8039D77C  41 82 00 1C */	beq lbl_8039D798
/* 8039D780  9B BE 00 01 */	stb r29, 1(r30)
/* 8039D784  38 00 00 01 */	li r0, 1
/* 8039D788  7F C3 F3 78 */	mr r3, r30
/* 8039D78C  98 1E 00 03 */	stb r0, 3(r30)
/* 8039D790  4B FF F2 91 */	bl update_active
/* 8039D794  48 00 00 1C */	b lbl_8039D7B0
lbl_8039D798:
/* 8039D798  38 60 00 03 */	li r3, 3
/* 8039D79C  48 00 B3 A1 */	bl mFI_CheckPlayerWade
/* 8039D7A0  2C 03 00 01 */	cmpwi r3, 1
/* 8039D7A4  40 82 00 0C */	bne lbl_8039D7B0
/* 8039D7A8  7F C3 F3 78 */	mr r3, r30
/* 8039D7AC  4B FF F2 75 */	bl update_active
lbl_8039D7B0:
/* 8039D7B0  80 1F 00 08 */	lwz r0, 8(r31)
/* 8039D7B4  2C 00 00 00 */	cmpwi r0, 0
/* 8039D7B8  41 82 00 10 */	beq lbl_8039D7C8
/* 8039D7BC  38 00 00 00 */	li r0, 0
/* 8039D7C0  90 1F 00 08 */	stw r0, 8(r31)
/* 8039D7C4  48 00 06 F1 */	bl update_save_area
lbl_8039D7C8:
/* 8039D7C8  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8039D7CC  2C 03 00 00 */	cmpwi r3, 0
/* 8039D7D0  41 82 00 20 */	beq lbl_8039D7F0
/* 8039D7D4  34 03 FF FF */	addic. r0, r3, -1
/* 8039D7D8  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8039D7DC  41 80 00 0C */	blt lbl_8039D7E8
/* 8039D7E0  2C 00 00 04 */	cmpwi r0, 4
/* 8039D7E4  40 81 00 0C */	ble lbl_8039D7F0
lbl_8039D7E8:
/* 8039D7E8  38 00 00 00 */	li r0, 0
/* 8039D7EC  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_8039D7F0:
/* 8039D7F0  39 61 00 20 */	addi r11, r1, 0x20
/* 8039D7F4  4B CF D7 29 */	bl func_8009AF1C
/* 8039D7F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8039D7FC  7C 08 03 A6 */	mtlr r0
/* 8039D800  38 21 00 20 */	addi r1, r1, 0x20
/* 8039D804  4E 80 00 20 */	blr 
