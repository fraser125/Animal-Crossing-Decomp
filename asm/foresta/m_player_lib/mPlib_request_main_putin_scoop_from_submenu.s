lbl_803D9944:
/* 803D9944  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D9948  7C 08 02 A6 */	mflr r0
/* 803D994C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D9950  39 61 00 20 */	addi r11, r1, 0x20
/* 803D9954  4B CC 15 81 */	bl func_8009AED4
/* 803D9958  7C 7D 1B 78 */	mr r29, r3
/* 803D995C  7C 9E 23 78 */	mr r30, r4
/* 803D9960  7C BF 2B 78 */	mr r31, r5
/* 803D9964  4B FF FF 49 */	bl mPlib_Get_change_data_from_submenu_p
/* 803D9968  38 80 00 40 */	li r4, 0x40
/* 803D996C  38 00 00 01 */	li r0, 1
/* 803D9970  90 83 00 00 */	stw r4, 0(r3)
/* 803D9974  90 03 00 04 */	stw r0, 4(r3)
/* 803D9978  80 9D 00 00 */	lwz r4, 0(r29)
/* 803D997C  80 1D 00 04 */	lwz r0, 4(r29)
/* 803D9980  90 83 00 08 */	stw r4, 8(r3)
/* 803D9984  90 03 00 0C */	stw r0, 0xc(r3)
/* 803D9988  80 1D 00 08 */	lwz r0, 8(r29)
/* 803D998C  90 03 00 10 */	stw r0, 0x10(r3)
/* 803D9990  B3 C3 00 14 */	sth r30, 0x14(r3)
/* 803D9994  93 E3 00 18 */	stw r31, 0x18(r3)
/* 803D9998  39 61 00 20 */	addi r11, r1, 0x20
/* 803D999C  4B CC 15 85 */	bl func_8009AF20
/* 803D99A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D99A4  7C 08 03 A6 */	mtlr r0
/* 803D99A8  38 21 00 20 */	addi r1, r1, 0x20
/* 803D99AC  4E 80 00 20 */	blr 
