lbl_803D99B0:
/* 803D99B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D99B4  7C 08 02 A6 */	mflr r0
/* 803D99B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D99BC  39 61 00 20 */	addi r11, r1, 0x20
/* 803D99C0  4B CC 15 15 */	bl func_8009AED4
/* 803D99C4  7C 7D 1B 78 */	mr r29, r3
/* 803D99C8  7C 9E 23 78 */	mr r30, r4
/* 803D99CC  7C BF 2B 78 */	mr r31, r5
/* 803D99D0  4B FF FE DD */	bl mPlib_Get_change_data_from_submenu_p
/* 803D99D4  38 80 00 53 */	li r4, 0x53
/* 803D99D8  38 00 00 01 */	li r0, 1
/* 803D99DC  90 83 00 00 */	stw r4, 0(r3)
/* 803D99E0  90 03 00 04 */	stw r0, 4(r3)
/* 803D99E4  90 03 00 08 */	stw r0, 8(r3)
/* 803D99E8  93 E3 00 0C */	stw r31, 0xc(r3)
/* 803D99EC  B3 A3 00 10 */	sth r29, 0x10(r3)
/* 803D99F0  B3 C3 00 12 */	sth r30, 0x12(r3)
/* 803D99F4  39 61 00 20 */	addi r11, r1, 0x20
/* 803D99F8  4B CC 15 29 */	bl func_8009AF20
/* 803D99FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D9A00  7C 08 03 A6 */	mtlr r0
/* 803D9A04  38 21 00 20 */	addi r1, r1, 0x20
/* 803D9A08  4E 80 00 20 */	blr 
