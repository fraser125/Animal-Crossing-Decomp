lbl_80476CE8:
/* 80476CE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80476CEC  7C 08 02 A6 */	mflr r0
/* 80476CF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80476CF4  39 61 00 20 */	addi r11, r1, 0x20
/* 80476CF8  4B C2 41 D9 */	bl func_8009AED0
/* 80476CFC  7C 7D 1B 78 */	mr r29, r3
/* 80476D00  3C 60 80 68 */	lis r3, data_806872E8@ha /* 0x806872E8@ha */
/* 80476D04  A8 BD 03 EE */	lha r5, 0x3ee(r29)
/* 80476D08  3B E3 72 E8 */	addi r31, r3, data_806872E8@l /* 0x806872E8@l */
/* 80476D0C  A8 1D 03 EC */	lha r0, 0x3ec(r29)
/* 80476D10  38 7F 29 E8 */	addi r3, r31, 0x29e8
/* 80476D14  54 A6 10 3A */	slwi r6, r5, 2
/* 80476D18  7C 9E 23 78 */	mr r30, r4
/* 80476D1C  7C 63 30 2E */	lwzx r3, r3, r6
/* 80476D20  7C 05 00 00 */	cmpw r5, r0
/* 80476D24  20 03 00 00 */	subfic r0, r3, 0
/* 80476D28  7C 60 01 10 */	subfe r3, r0, r0
/* 80476D2C  3B 83 00 09 */	addi r28, r3, 9
/* 80476D30  41 82 00 C8 */	beq lbl_80476DF8
/* 80476D34  80 1D 04 90 */	lwz r0, 0x490(r29)
/* 80476D38  2C 00 00 00 */	cmpwi r0, 0
/* 80476D3C  40 82 00 BC */	bne lbl_80476DF8
/* 80476D40  38 7F 27 E0 */	addi r3, r31, 0x27e0
/* 80476D44  7C 03 30 2E */	lwzx r0, r3, r6
/* 80476D48  2C 00 FF FF */	cmpwi r0, -1
/* 80476D4C  41 82 00 7C */	beq lbl_80476DC8
/* 80476D50  7F 83 E3 78 */	mr r3, r28
/* 80476D54  7F A4 EB 78 */	mr r4, r29
/* 80476D58  4B F2 35 0D */	bl mDemo_Check
/* 80476D5C  2C 03 00 00 */	cmpwi r3, 0
/* 80476D60  40 82 00 98 */	bne lbl_80476DF8
/* 80476D64  2C 1C 00 08 */	cmpwi r28, 8
/* 80476D68  3C 60 80 47 */	lis r3, aMR_report_set@ha /* 0x80476C78@ha */
/* 80476D6C  38 A3 6C 78 */	addi r5, r3, aMR_report_set@l /* 0x80476C78@l */
/* 80476D70  7F A4 EB 78 */	mr r4, r29
/* 80476D74  7F 83 E3 78 */	mr r3, r28
/* 80476D78  40 82 00 0C */	bne lbl_80476D84
/* 80476D7C  3C A0 80 47 */	lis r5, aMR_speak_set@ha /* 0x80476C20@ha */
/* 80476D80  38 A5 6C 20 */	addi r5, r5, aMR_speak_set@l /* 0x80476C20@l */
lbl_80476D84:
/* 80476D84  4B F2 33 D9 */	bl mDemo_Request
/* 80476D88  2C 03 00 00 */	cmpwi r3, 0
/* 80476D8C  41 82 00 6C */	beq lbl_80476DF8
/* 80476D90  A8 1D 03 EE */	lha r0, 0x3ee(r29)
/* 80476D94  B0 1D 03 EC */	sth r0, 0x3ec(r29)
/* 80476D98  4B F0 C7 A9 */	bl func_80383540
/* 80476D9C  4B F0 D7 4D */	bl mChoice_no_b_close_set
/* 80476DA0  A8 1D 03 EC */	lha r0, 0x3ec(r29)
/* 80476DA4  38 9F 25 D8 */	addi r4, r31, 0x25d8
/* 80476DA8  7F A3 EB 78 */	mr r3, r29
/* 80476DAC  54 00 10 3A */	slwi r0, r0, 2
/* 80476DB0  7D 84 00 2E */	lwzx r12, r4, r0
/* 80476DB4  7D 89 03 A6 */	mtctr r12
/* 80476DB8  4E 80 04 21 */	bctrl 
/* 80476DBC  4B F0 C7 85 */	bl func_80383540
/* 80476DC0  4B F0 CD B5 */	bl mChoice_Clear_ChoseNum
/* 80476DC4  48 00 00 34 */	b lbl_80476DF8
lbl_80476DC8:
/* 80476DC8  B0 BD 03 EC */	sth r5, 0x3ec(r29)
/* 80476DCC  4B F0 C7 75 */	bl func_80383540
/* 80476DD0  4B F0 D7 19 */	bl mChoice_no_b_close_set
/* 80476DD4  A8 1D 03 EC */	lha r0, 0x3ec(r29)
/* 80476DD8  38 9F 25 D8 */	addi r4, r31, 0x25d8
/* 80476DDC  7F A3 EB 78 */	mr r3, r29
/* 80476DE0  54 00 10 3A */	slwi r0, r0, 2
/* 80476DE4  7D 84 00 2E */	lwzx r12, r4, r0
/* 80476DE8  7D 89 03 A6 */	mtctr r12
/* 80476DEC  4E 80 04 21 */	bctrl 
/* 80476DF0  4B F0 C7 51 */	bl func_80383540
/* 80476DF4  4B F0 CD 81 */	bl mChoice_Clear_ChoseNum
lbl_80476DF8:
/* 80476DF8  A8 1D 03 EC */	lha r0, 0x3ec(r29)
/* 80476DFC  38 7F 29 E8 */	addi r3, r31, 0x29e8
/* 80476E00  7F A4 EB 78 */	mr r4, r29
/* 80476E04  54 00 10 3A */	slwi r0, r0, 2
/* 80476E08  7C 03 00 2E */	lwzx r0, r3, r0
/* 80476E0C  20 00 00 00 */	subfic r0, r0, 0
/* 80476E10  7C 60 01 10 */	subfe r3, r0, r0
/* 80476E14  38 63 00 09 */	addi r3, r3, 9
/* 80476E18  4B F2 34 4D */	bl mDemo_Check
/* 80476E1C  2C 03 00 00 */	cmpwi r3, 0
/* 80476E20  41 82 00 28 */	beq lbl_80476E48
/* 80476E24  A8 1D 03 EC */	lha r0, 0x3ec(r29)
/* 80476E28  38 BF 26 DC */	addi r5, r31, 0x26dc
/* 80476E2C  7F A3 EB 78 */	mr r3, r29
/* 80476E30  7F C4 F3 78 */	mr r4, r30
/* 80476E34  54 00 10 3A */	slwi r0, r0, 2
/* 80476E38  7D 85 00 2E */	lwzx r12, r5, r0
/* 80476E3C  7D 89 03 A6 */	mtctr r12
/* 80476E40  4E 80 04 21 */	bctrl 
/* 80476E44  48 00 00 34 */	b lbl_80476E78
lbl_80476E48:
/* 80476E48  A8 1D 03 EC */	lha r0, 0x3ec(r29)
/* 80476E4C  38 7F 28 E4 */	addi r3, r31, 0x28e4
/* 80476E50  54 05 10 3A */	slwi r5, r0, 2
/* 80476E54  7C 03 28 2E */	lwzx r0, r3, r5
/* 80476E58  2C 00 00 01 */	cmpwi r0, 1
/* 80476E5C  40 82 00 1C */	bne lbl_80476E78
/* 80476E60  38 9F 26 DC */	addi r4, r31, 0x26dc
/* 80476E64  7F A3 EB 78 */	mr r3, r29
/* 80476E68  7D 84 28 2E */	lwzx r12, r4, r5
/* 80476E6C  7F C4 F3 78 */	mr r4, r30
/* 80476E70  7D 89 03 A6 */	mtctr r12
/* 80476E74  4E 80 04 21 */	bctrl 
lbl_80476E78:
/* 80476E78  80 1D 04 84 */	lwz r0, 0x484(r29)
/* 80476E7C  2C 00 00 01 */	cmpwi r0, 1
/* 80476E80  40 82 00 98 */	bne lbl_80476F18
/* 80476E84  80 1D 04 90 */	lwz r0, 0x490(r29)
/* 80476E88  2C 00 00 01 */	cmpwi r0, 1
/* 80476E8C  40 82 00 8C */	bne lbl_80476F18
/* 80476E90  4B F2 34 A9 */	bl mDemo_CheckDemo
/* 80476E94  2C 03 00 00 */	cmpwi r3, 0
/* 80476E98  40 82 00 80 */	bne lbl_80476F18
/* 80476E9C  83 9D 04 88 */	lwz r28, 0x488(r29)
/* 80476EA0  2C 1C 00 00 */	cmpwi r28, 0
/* 80476EA4  41 81 00 08 */	bgt lbl_80476EAC
/* 80476EA8  3B 9C FF FF */	addi r28, r28, -1
lbl_80476EAC:
/* 80476EAC  4B FF BC D9 */	bl aMR_SaveWaltzTempo2
/* 80476EB0  7F C3 F3 78 */	mr r3, r30
/* 80476EB4  7F 84 07 34 */	extsh r4, r28
/* 80476EB8  4B F7 A4 45 */	bl goto_emu_game
/* 80476EBC  2C 03 00 01 */	cmpwi r3, 1
/* 80476EC0  40 82 00 58 */	bne lbl_80476F18
/* 80476EC4  38 60 00 11 */	li r3, 0x11
/* 80476EC8  4B F0 59 59 */	bl mBGMPsComp_scene_mode
/* 80476ECC  7F C3 F3 78 */	mr r3, r30
/* 80476ED0  4B F6 32 C1 */	bl mPlib_request_main_refuse_type1
/* 80476ED4  38 00 00 00 */	li r0, 0
/* 80476ED8  2C 1C 00 00 */	cmpwi r28, 0
/* 80476EDC  90 1D 04 84 */	stw r0, 0x484(r29)
/* 80476EE0  40 80 00 20 */	bge lbl_80476F00
/* 80476EE4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80476EE8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80476EEC  3C 63 00 03 */	addis r3, r3, 3
/* 80476EF0  80 03 DB AC */	lwz r0, -0x2454(r3)
/* 80476EF4  60 00 00 10 */	ori r0, r0, 0x10
/* 80476EF8  90 03 DB AC */	stw r0, -0x2454(r3)
/* 80476EFC  48 00 00 1C */	b lbl_80476F18
lbl_80476F00:
/* 80476F00  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80476F04  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80476F08  3C 63 00 03 */	addis r3, r3, 3
/* 80476F0C  80 03 DB AC */	lwz r0, -0x2454(r3)
/* 80476F10  60 00 00 08 */	ori r0, r0, 8
/* 80476F14  90 03 DB AC */	stw r0, -0x2454(r3)
lbl_80476F18:
/* 80476F18  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80476F1C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80476F20  3C 83 00 03 */	addis r4, r3, 3
/* 80476F24  80 04 DB AC */	lwz r0, -0x2454(r4)
/* 80476F28  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80476F2C  41 82 00 38 */	beq lbl_80476F64
/* 80476F30  38 60 00 35 */	li r3, 0x35
/* 80476F34  38 00 00 01 */	li r0, 1
/* 80476F38  B0 7D 03 EE */	sth r3, 0x3ee(r29)
/* 80476F3C  90 1D 04 F8 */	stw r0, 0x4f8(r29)
/* 80476F40  80 04 DB AC */	lwz r0, -0x2454(r4)
/* 80476F44  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80476F48  90 04 DB AC */	stw r0, -0x2454(r4)
/* 80476F4C  80 04 DB AC */	lwz r0, -0x2454(r4)
/* 80476F50  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 80476F54  90 04 DB AC */	stw r0, -0x2454(r4)
/* 80476F58  80 04 DB AC */	lwz r0, -0x2454(r4)
/* 80476F5C  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80476F60  90 04 DB AC */	stw r0, -0x2454(r4)
lbl_80476F64:
/* 80476F64  80 64 DB AC */	lwz r3, -0x2454(r4)
/* 80476F68  54 60 EF FF */	rlwinm. r0, r3, 0x1d, 0x1f, 0x1f
/* 80476F6C  41 82 00 18 */	beq lbl_80476F84
/* 80476F70  38 60 00 39 */	li r3, 0x39
/* 80476F74  38 00 00 01 */	li r0, 1
/* 80476F78  B0 7D 03 EE */	sth r3, 0x3ee(r29)
/* 80476F7C  90 1D 04 F8 */	stw r0, 0x4f8(r29)
/* 80476F80  48 00 00 1C */	b lbl_80476F9C
lbl_80476F84:
/* 80476F84  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80476F88  41 82 00 14 */	beq lbl_80476F9C
/* 80476F8C  38 60 00 39 */	li r3, 0x39
/* 80476F90  38 00 00 01 */	li r0, 1
/* 80476F94  B0 7D 03 EE */	sth r3, 0x3ee(r29)
/* 80476F98  90 1D 04 F8 */	stw r0, 0x4f8(r29)
lbl_80476F9C:
/* 80476F9C  39 61 00 20 */	addi r11, r1, 0x20
/* 80476FA0  4B C2 3F 7D */	bl func_8009AF1C
/* 80476FA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80476FA8  7C 08 03 A6 */	mtlr r0
/* 80476FAC  38 21 00 20 */	addi r1, r1, 0x20
/* 80476FB0  4E 80 00 20 */	blr 
