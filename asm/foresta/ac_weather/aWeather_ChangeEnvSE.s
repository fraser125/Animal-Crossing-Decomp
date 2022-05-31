lbl_80601DA4:
/* 80601DA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80601DA8  7C 08 02 A6 */	mflr r0
/* 80601DAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80601DB0  39 61 00 20 */	addi r11, r1, 0x20
/* 80601DB4  4B A9 91 1D */	bl func_8009AED0
/* 80601DB8  7C 7F 1B 78 */	mr r31, r3
/* 80601DBC  7C 9C 23 78 */	mr r28, r4
/* 80601DC0  A8 83 01 DA */	lha r4, 0x1da(r3)
/* 80601DC4  7C BD 2B 78 */	mr r29, r5
/* 80601DC8  A8 03 01 D4 */	lha r0, 0x1d4(r3)
/* 80601DCC  7C DE 33 78 */	mr r30, r6
/* 80601DD0  2C 04 00 01 */	cmpwi r4, 1
/* 80601DD4  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80601DD8  41 82 01 5C */	beq lbl_80601F34
/* 80601DDC  2C 04 00 02 */	cmpwi r4, 2
/* 80601DE0  40 82 00 08 */	bne lbl_80601DE8
/* 80601DE4  48 00 01 50 */	b lbl_80601F34
lbl_80601DE8:
/* 80601DE8  38 03 FF F9 */	addi r0, r3, -7
/* 80601DEC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80601DF0  28 00 00 02 */	cmplwi r0, 2
/* 80601DF4  40 81 00 1C */	ble lbl_80601E10
/* 80601DF8  38 03 FF EE */	addi r0, r3, -18
/* 80601DFC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80601E00  28 00 00 01 */	cmplwi r0, 1
/* 80601E04  40 81 00 0C */	ble lbl_80601E10
/* 80601E08  28 03 00 14 */	cmplwi r3, 0x14
/* 80601E0C  40 82 00 10 */	bne lbl_80601E1C
lbl_80601E10:
/* 80601E10  4B FF FA DD */	bl aWeather_SysLevStop
/* 80601E14  38 00 FC 18 */	li r0, -1000
/* 80601E18  B0 1F 01 D4 */	sth r0, 0x1d4(r31)
lbl_80601E1C:
/* 80601E1C  4B D9 90 9D */	bl mEv_CheckTitleDemo
/* 80601E20  2C 03 00 00 */	cmpwi r3, 0
/* 80601E24  41 81 01 10 */	bgt lbl_80601F34
/* 80601E28  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80601E2C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80601E30  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80601E34  2C 00 00 0F */	cmpwi r0, 0xf
/* 80601E38  41 82 00 FC */	beq lbl_80601F34
/* 80601E3C  2C 00 00 10 */	cmpwi r0, 0x10
/* 80601E40  41 82 00 F4 */	beq lbl_80601F34
/* 80601E44  2C 00 00 31 */	cmpwi r0, 0x31
/* 80601E48  40 82 00 08 */	bne lbl_80601E50
/* 80601E4C  48 00 00 E8 */	b lbl_80601F34
lbl_80601E50:
/* 80601E50  7F A0 07 34 */	extsh r0, r29
/* 80601E54  2C 00 00 01 */	cmpwi r0, 1
/* 80601E58  40 82 00 DC */	bne lbl_80601F34
/* 80601E5C  A8 1F 01 D4 */	lha r0, 0x1d4(r31)
/* 80601E60  2C 00 FC 18 */	cmpwi r0, -1000
/* 80601E64  40 82 00 D0 */	bne lbl_80601F34
/* 80601E68  7F C0 07 34 */	extsh r0, r30
/* 80601E6C  2C 00 00 02 */	cmpwi r0, 2
/* 80601E70  41 82 00 58 */	beq lbl_80601EC8
/* 80601E74  40 80 00 10 */	bge lbl_80601E84
/* 80601E78  2C 00 00 01 */	cmpwi r0, 1
/* 80601E7C  40 80 00 14 */	bge lbl_80601E90
/* 80601E80  48 00 00 B4 */	b lbl_80601F34
lbl_80601E84:
/* 80601E84  2C 00 00 04 */	cmpwi r0, 4
/* 80601E88  40 80 00 AC */	bge lbl_80601F34
/* 80601E8C  48 00 00 74 */	b lbl_80601F00
lbl_80601E90:
/* 80601E90  7F 83 E3 78 */	mr r3, r28
/* 80601E94  4B DD 99 49 */	bl mPlib_check_player_open_umbrella
/* 80601E98  2C 03 00 00 */	cmpwi r3, 0
/* 80601E9C  41 82 00 18 */	beq lbl_80601EB4
/* 80601EA0  38 60 00 12 */	li r3, 0x12
/* 80601EA4  4B FF FA 29 */	bl aWeather_SysLevStart
/* 80601EA8  38 00 00 12 */	li r0, 0x12
/* 80601EAC  B0 1F 01 D4 */	sth r0, 0x1d4(r31)
/* 80601EB0  48 00 00 84 */	b lbl_80601F34
lbl_80601EB4:
/* 80601EB4  38 60 00 07 */	li r3, 7
/* 80601EB8  4B FF FA 15 */	bl aWeather_SysLevStart
/* 80601EBC  38 00 00 07 */	li r0, 7
/* 80601EC0  B0 1F 01 D4 */	sth r0, 0x1d4(r31)
/* 80601EC4  48 00 00 70 */	b lbl_80601F34
lbl_80601EC8:
/* 80601EC8  7F 83 E3 78 */	mr r3, r28
/* 80601ECC  4B DD 99 11 */	bl mPlib_check_player_open_umbrella
/* 80601ED0  2C 03 00 00 */	cmpwi r3, 0
/* 80601ED4  41 82 00 18 */	beq lbl_80601EEC
/* 80601ED8  38 60 00 13 */	li r3, 0x13
/* 80601EDC  4B FF F9 F1 */	bl aWeather_SysLevStart
/* 80601EE0  38 00 00 13 */	li r0, 0x13
/* 80601EE4  B0 1F 01 D4 */	sth r0, 0x1d4(r31)
/* 80601EE8  48 00 00 4C */	b lbl_80601F34
lbl_80601EEC:
/* 80601EEC  38 60 00 08 */	li r3, 8
/* 80601EF0  4B FF F9 DD */	bl aWeather_SysLevStart
/* 80601EF4  38 00 00 08 */	li r0, 8
/* 80601EF8  B0 1F 01 D4 */	sth r0, 0x1d4(r31)
/* 80601EFC  48 00 00 38 */	b lbl_80601F34
lbl_80601F00:
/* 80601F00  7F 83 E3 78 */	mr r3, r28
/* 80601F04  4B DD 98 D9 */	bl mPlib_check_player_open_umbrella
/* 80601F08  2C 03 00 00 */	cmpwi r3, 0
/* 80601F0C  41 82 00 18 */	beq lbl_80601F24
/* 80601F10  38 60 00 14 */	li r3, 0x14
/* 80601F14  4B FF F9 B9 */	bl aWeather_SysLevStart
/* 80601F18  38 00 00 14 */	li r0, 0x14
/* 80601F1C  B0 1F 01 D4 */	sth r0, 0x1d4(r31)
/* 80601F20  48 00 00 14 */	b lbl_80601F34
lbl_80601F24:
/* 80601F24  38 60 00 09 */	li r3, 9
/* 80601F28  4B FF F9 A5 */	bl aWeather_SysLevStart
/* 80601F2C  38 00 00 09 */	li r0, 9
/* 80601F30  B0 1F 01 D4 */	sth r0, 0x1d4(r31)
lbl_80601F34:
/* 80601F34  39 61 00 20 */	addi r11, r1, 0x20
/* 80601F38  4B A9 8F E5 */	bl func_8009AF1C
/* 80601F3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80601F40  7C 08 03 A6 */	mtlr r0
/* 80601F44  38 21 00 20 */	addi r1, r1, 0x20
/* 80601F48  4E 80 00 20 */	blr 
