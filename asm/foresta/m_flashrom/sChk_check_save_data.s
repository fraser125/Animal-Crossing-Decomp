lbl_803ADB88:
/* 803ADB88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803ADB8C  7C 08 02 A6 */	mflr r0
/* 803ADB90  90 01 00 24 */	stw r0, 0x24(r1)
/* 803ADB94  39 61 00 20 */	addi r11, r1, 0x20
/* 803ADB98  4B CE D3 39 */	bl func_8009AED0
/* 803ADB9C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803ADBA0  3B 80 00 00 */	li r28, 0
/* 803ADBA4  3B C3 85 38 */	addi r30, r3, common_data@l /* 0x81138538@l */
/* 803ADBA8  3B A0 00 00 */	li r29, 0
/* 803ADBAC  3B E0 00 00 */	li r31, 0
lbl_803ADBB0:
/* 803ADBB0  3C 7F 00 01 */	addis r3, r31, 1
/* 803ADBB4  38 80 00 01 */	li r4, 1
/* 803ADBB8  38 63 9C E8 */	addi r3, r3, -25368
/* 803ADBBC  7C 7E 1A 14 */	add r3, r30, r3
/* 803ADBC0  4B FF F7 35 */	bl sChk_mHm_hs_c_sub
/* 803ADBC4  3B BD 00 01 */	addi r29, r29, 1
/* 803ADBC8  7F 9C 1B 78 */	or r28, r28, r3
/* 803ADBCC  2C 1D 00 04 */	cmpwi r29, 4
/* 803ADBD0  3B FF 26 B0 */	addi r31, r31, 0x26b0
/* 803ADBD4  41 80 FF DC */	blt lbl_803ADBB0
/* 803ADBD8  3B A0 00 00 */	li r29, 0
/* 803ADBDC  3B E0 00 00 */	li r31, 0
lbl_803ADBE0:
/* 803ADBE0  3C 7F 00 01 */	addis r3, r31, 1
/* 803ADBE4  38 80 00 01 */	li r4, 1
/* 803ADBE8  38 63 74 38 */	addi r3, r3, 0x7438
/* 803ADBEC  7C 7E 1A 14 */	add r3, r30, r3
/* 803ADBF0  4B FF F9 9D */	bl sChk_Animal_c_sub
/* 803ADBF4  3B BD 00 01 */	addi r29, r29, 1
/* 803ADBF8  7F 9C 1B 78 */	or r28, r28, r3
/* 803ADBFC  2C 1D 00 0F */	cmpwi r29, 0xf
/* 803ADC00  3B FF 09 88 */	addi r31, r31, 0x988
/* 803ADC04  41 80 FF DC */	blt lbl_803ADBE0
/* 803ADC08  3C 7E 00 02 */	addis r3, r30, 2
/* 803ADC0C  38 80 00 01 */	li r4, 1
/* 803ADC10  38 63 03 30 */	addi r3, r3, 0x330
/* 803ADC14  4B FF F7 A5 */	bl sChk_AnmPersonalID_c_sub
/* 803ADC18  7F 9C 1B 78 */	or r28, r28, r3
/* 803ADC1C  3C 7E 00 02 */	addis r3, r30, 2
/* 803ADC20  38 80 00 01 */	li r4, 1
/* 803ADC24  38 63 04 80 */	addi r3, r3, 0x480
/* 803ADC28  4B FF FA 55 */	bl sChk_Kabu_price_c_sub
/* 803ADC2C  3C 9E 00 02 */	addis r4, r30, 2
/* 803ADC30  7F 9C 1B 78 */	or r28, r28, r3
/* 803ADC34  A0 64 06 88 */	lhz r3, 0x688(r4)
/* 803ADC38  4B FF EF F5 */	bl sChk_fruit_sub
/* 803ADC3C  7F 9C 1B 78 */	or r28, r28, r3
/* 803ADC40  3C 7E 00 02 */	addis r3, r30, 2
/* 803ADC44  38 63 06 8C */	addi r3, r3, 0x68c
/* 803ADC48  4B FF F0 39 */	bl sChk_OSRTCTime_sub
/* 803ADC4C  7F 9C 1B 78 */	or r28, r28, r3
/* 803ADC50  3C 7E 00 02 */	addis r3, r30, 2
/* 803ADC54  38 80 00 01 */	li r4, 1
/* 803ADC58  38 63 06 94 */	addi r3, r3, 0x694
/* 803ADC5C  4B FF FA DD */	bl sChk_PostOffice_c_sub
/* 803ADC60  7F 9C 1B 78 */	or r28, r28, r3
/* 803ADC64  3C 7E 00 02 */	addis r3, r30, 2
/* 803ADC68  38 80 00 01 */	li r4, 1
/* 803ADC6C  38 63 0E D0 */	addi r3, r3, 0xed0
/* 803ADC70  4B FF FC 41 */	bl sChk_PoliceBox_c_sub
/* 803ADC74  7F 9C 1B 78 */	or r28, r28, r3
/* 803ADC78  3C 7E 00 02 */	addis r3, r30, 2
/* 803ADC7C  38 80 00 01 */	li r4, 1
/* 803ADC80  38 63 0F 10 */	addi r3, r3, 0xf10
/* 803ADC84  4B FF FC 89 */	bl sChk_Config_c_sub
/* 803ADC88  7F 9C 1B 78 */	or r28, r28, r3
/* 803ADC8C  3C 7E 00 02 */	addis r3, r30, 2
/* 803ADC90  38 63 0F 14 */	addi r3, r3, 0xf14
/* 803ADC94  4B FF F1 25 */	bl sChk_lbRTC_ymd_c_sub
/* 803ADC98  7F 9C 1B 78 */	or r28, r28, r3
/* 803ADC9C  3C 7E 00 02 */	addis r3, r30, 2
/* 803ADCA0  38 63 12 DC */	addi r3, r3, 0x12dc
/* 803ADCA4  4B FF EF DD */	bl sChk_OSRTCTime_sub
/* 803ADCA8  7F 9C 1B 78 */	or r28, r28, r3
/* 803ADCAC  3C 7E 00 02 */	addis r3, r30, 2
/* 803ADCB0  38 80 00 01 */	li r4, 1
/* 803ADCB4  38 63 13 1C */	addi r3, r3, 0x131c
/* 803ADCB8  4B FF FD 05 */	bl sChk_mMsr_time_c_sub
/* 803ADCBC  7F 9C 1B 78 */	or r28, r28, r3
/* 803ADCC0  3C 7E 00 02 */	addis r3, r30, 2
/* 803ADCC4  38 63 13 22 */	addi r3, r3, 0x1322
/* 803ADCC8  4B FF F0 F1 */	bl sChk_lbRTC_ymd_c_sub
/* 803ADCCC  7F 9C 1B 78 */	or r28, r28, r3
/* 803ADCD0  3C 7E 00 02 */	addis r3, r30, 2
/* 803ADCD4  38 63 13 6E */	addi r3, r3, 0x136e
/* 803ADCD8  4B FF EF A9 */	bl sChk_OSRTCTime_sub
/* 803ADCDC  7F 9C 1B 78 */	or r28, r28, r3
/* 803ADCE0  3C 7E 00 02 */	addis r3, r30, 2
/* 803ADCE4  38 63 13 7E */	addi r3, r3, 0x137e
/* 803ADCE8  4B FF EF 99 */	bl sChk_OSRTCTime_sub
/* 803ADCEC  7F 9C 1B 78 */	or r28, r28, r3
/* 803ADCF0  3C 7E 00 02 */	addis r3, r30, 2
/* 803ADCF4  38 63 13 86 */	addi r3, r3, 0x1386
/* 803ADCF8  4B FF EF 89 */	bl sChk_OSRTCTime_sub
/* 803ADCFC  7F 9C 1B 78 */	or r28, r28, r3
/* 803ADD00  3C 7E 00 02 */	addis r3, r30, 2
/* 803ADD04  38 63 13 A4 */	addi r3, r3, 0x13a4
/* 803ADD08  4B FF F0 B1 */	bl sChk_lbRTC_ymd_c_sub
/* 803ADD0C  7F 9C 1B 78 */	or r28, r28, r3
/* 803ADD10  3C 7E 00 02 */	addis r3, r30, 2
/* 803ADD14  38 80 00 01 */	li r4, 1
/* 803ADD18  38 63 3F 20 */	addi r3, r3, 0x3f20
/* 803ADD1C  4B FF FD 85 */	bl sChk_MaskCat_c_sub
/* 803ADD20  7F 9C 1B 78 */	or r28, r28, r3
/* 803ADD24  39 61 00 20 */	addi r11, r1, 0x20
/* 803ADD28  7F 83 E3 78 */	mr r3, r28
/* 803ADD2C  4B CE D1 F1 */	bl func_8009AF1C
/* 803ADD30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803ADD34  7C 08 03 A6 */	mtlr r0
/* 803ADD38  38 21 00 20 */	addi r1, r1, 0x20
/* 803ADD3C  4E 80 00 20 */	blr 
