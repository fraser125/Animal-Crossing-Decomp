lbl_80380CDC:
/* 80380CDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80380CE0  7C 08 02 A6 */	mflr r0
/* 80380CE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80380CE8  39 61 00 20 */	addi r11, r1, 0x20
/* 80380CEC  4B D1 A1 E9 */	bl func_8009AED4
/* 80380CF0  7C BF 2B 78 */	mr r31, r5
/* 80380CF4  7C 9E 23 78 */	mr r30, r4
/* 80380CF8  7C 7D 1B 78 */	mr r29, r3
/* 80380CFC  7F E4 FB 78 */	mr r4, r31
/* 80380D00  4B FF DD B9 */	bl Camera2_check_request_main_priority
/* 80380D04  2C 03 00 00 */	cmpwi r3, 0
/* 80380D08  40 81 00 20 */	ble lbl_80380D28
/* 80380D0C  93 DD 1C 50 */	stw r30, 0x1c50(r29)
/* 80380D10  7F A3 EB 78 */	mr r3, r29
/* 80380D14  7F E5 FB 78 */	mr r5, r31
/* 80380D18  38 80 00 05 */	li r4, 5
/* 80380D1C  4B FF DD B5 */	bl Camera2_request_main_index
/* 80380D20  38 60 00 01 */	li r3, 1
/* 80380D24  48 00 00 08 */	b lbl_80380D2C
lbl_80380D28:
/* 80380D28  38 60 00 00 */	li r3, 0
lbl_80380D2C:
/* 80380D2C  39 61 00 20 */	addi r11, r1, 0x20
/* 80380D30  4B D1 A1 F1 */	bl func_8009AF20
/* 80380D34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80380D38  7C 08 03 A6 */	mtlr r0
/* 80380D3C  38 21 00 20 */	addi r1, r1, 0x20
/* 80380D40  4E 80 00 20 */	blr 
