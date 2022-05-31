lbl_80406D24:
/* 80406D24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80406D28  7C 08 02 A6 */	mflr r0
/* 80406D2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80406D30  39 61 00 20 */	addi r11, r1, 0x20
/* 80406D34  4B C9 41 A1 */	bl func_8009AED4
/* 80406D38  7C 9E 23 78 */	mr r30, r4
/* 80406D3C  7C 7D 1B 78 */	mr r29, r3
/* 80406D40  88 83 00 05 */	lbz r4, 5(r3)
/* 80406D44  A0 63 00 06 */	lhz r3, 6(r3)
/* 80406D48  4B FF FA 31 */	bl lbRTC_GetDaysByMonth
/* 80406D4C  8B FD 00 03 */	lbz r31, 3(r29)
/* 80406D50  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80406D54  7F FF F2 14 */	add r31, r31, r30
/* 80406D58  7C 1F 00 00 */	cmpw r31, r0
/* 80406D5C  40 81 00 14 */	ble lbl_80406D70
/* 80406D60  7F A3 EB 78 */	mr r3, r29
/* 80406D64  7F E0 F8 50 */	subf r31, r0, r31
/* 80406D68  38 80 00 01 */	li r4, 1
/* 80406D6C  4B FF FF 59 */	bl lbRTC_Add_MM
lbl_80406D70:
/* 80406D70  9B FD 00 03 */	stb r31, 3(r29)
/* 80406D74  39 61 00 20 */	addi r11, r1, 0x20
/* 80406D78  4B C9 41 A9 */	bl func_8009AF20
/* 80406D7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80406D80  7C 08 03 A6 */	mtlr r0
/* 80406D84  38 21 00 20 */	addi r1, r1, 0x20
/* 80406D88  4E 80 00 20 */	blr 
