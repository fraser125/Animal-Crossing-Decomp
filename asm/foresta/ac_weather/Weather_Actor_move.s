lbl_80602C34:
/* 80602C34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80602C38  7C 08 02 A6 */	mflr r0
/* 80602C3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80602C40  39 61 00 20 */	addi r11, r1, 0x20
/* 80602C44  4B A9 82 8D */	bl func_8009AED0
/* 80602C48  7C 7C 1B 78 */	mr r28, r3
/* 80602C4C  7C 9D 23 78 */	mr r29, r4
/* 80602C50  4B D7 C1 7D */	bl Camera2_getCenterPos_p
/* 80602C54  38 9D 1B 88 */	addi r4, r29, 0x1b88
/* 80602C58  7C 7E 1B 78 */	mr r30, r3
/* 80602C5C  38 64 00 0C */	addi r3, r4, 0xc
/* 80602C60  4B DB 84 D1 */	bl search_position_angleY
/* 80602C64  7C 7F 1B 78 */	mr r31, r3
/* 80602C68  7F 83 E3 78 */	mr r3, r28
/* 80602C6C  4B FF FE 41 */	bl aWeather_MakeKaminari
/* 80602C70  7F 83 E3 78 */	mr r3, r28
/* 80602C74  4B FF FC 11 */	bl aWeather_CheckWeatherTimer
/* 80602C78  7F 83 E3 78 */	mr r3, r28
/* 80602C7C  7F A4 EB 78 */	mr r4, r29
/* 80602C80  4B FF F9 DD */	bl aWeather_MakeWeatherPrv
/* 80602C84  7F 83 E3 78 */	mr r3, r28
/* 80602C88  7F A4 EB 78 */	mr r4, r29
/* 80602C8C  4B FF FC 25 */	bl aWeather_RenewWeatherLevel
/* 80602C90  7F 83 E3 78 */	mr r3, r28
/* 80602C94  7F A4 EB 78 */	mr r4, r29
/* 80602C98  4B FF FA 0D */	bl aWeather_MoveWeatherPrv
/* 80602C9C  7F 83 E3 78 */	mr r3, r28
/* 80602CA0  7F A4 EB 78 */	mr r4, r29
/* 80602CA4  4B FF FA E9 */	bl aWeather_ChangeWeather
/* 80602CA8  80 9E 00 00 */	lwz r4, 0(r30)
/* 80602CAC  7F 83 E3 78 */	mr r3, r28
/* 80602CB0  80 1E 00 04 */	lwz r0, 4(r30)
/* 80602CB4  90 9C 01 88 */	stw r4, 0x188(r28)
/* 80602CB8  90 1C 01 8C */	stw r0, 0x18c(r28)
/* 80602CBC  80 1E 00 08 */	lwz r0, 8(r30)
/* 80602CC0  90 1C 01 90 */	stw r0, 0x190(r28)
/* 80602CC4  4B FF FC 69 */	bl aWeather_ChangeWeatherTime0
/* 80602CC8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80602CCC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80602CD0  3C 63 00 02 */	addis r3, r3, 2
/* 80602CD4  A8 03 66 6C */	lha r0, 0x666c(r3)
/* 80602CD8  2C 00 00 01 */	cmpwi r0, 1
/* 80602CDC  40 82 00 38 */	bne lbl_80602D14
/* 80602CE0  7F A3 EB 78 */	mr r3, r29
/* 80602CE4  4B DD 8A F9 */	bl mPlib_check_player_open_umbrella
/* 80602CE8  A8 1C 01 D6 */	lha r0, 0x1d6(r28)
/* 80602CEC  7C 7E 07 34 */	extsh r30, r3
/* 80602CF0  7C 1E 00 00 */	cmpw r30, r0
/* 80602CF4  41 82 00 18 */	beq lbl_80602D0C
/* 80602CF8  A8 BC 01 78 */	lha r5, 0x178(r28)
/* 80602CFC  7F 83 E3 78 */	mr r3, r28
/* 80602D00  A8 DC 01 7E */	lha r6, 0x17e(r28)
/* 80602D04  7F A4 EB 78 */	mr r4, r29
/* 80602D08  4B FF F0 9D */	bl aWeather_ChangeEnvSE
lbl_80602D0C:
/* 80602D0C  B3 DC 01 D6 */	sth r30, 0x1d6(r28)
/* 80602D10  B3 FC 01 D8 */	sth r31, 0x1d8(r28)
lbl_80602D14:
/* 80602D14  A8 1C 01 DA */	lha r0, 0x1da(r28)
/* 80602D18  2C 00 00 02 */	cmpwi r0, 2
/* 80602D1C  40 82 00 0C */	bne lbl_80602D28
/* 80602D20  38 00 00 00 */	li r0, 0
/* 80602D24  B0 1C 01 DA */	sth r0, 0x1da(r28)
lbl_80602D28:
/* 80602D28  7F 83 E3 78 */	mr r3, r28
/* 80602D2C  4B FF F2 21 */	bl aWeather_EndEnvSE
/* 80602D30  39 61 00 20 */	addi r11, r1, 0x20
/* 80602D34  4B A9 81 E9 */	bl func_8009AF1C
/* 80602D38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80602D3C  7C 08 03 A6 */	mtlr r0
/* 80602D40  38 21 00 20 */	addi r1, r1, 0x20
/* 80602D44  4E 80 00 20 */	blr 
