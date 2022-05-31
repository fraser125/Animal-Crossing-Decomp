lbl_80474D7C:
/* 80474D7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80474D80  7C 08 02 A6 */	mflr r0
/* 80474D84  90 01 00 24 */	stw r0, 0x24(r1)
/* 80474D88  39 61 00 20 */	addi r11, r1, 0x20
/* 80474D8C  4B C2 61 49 */	bl func_8009AED4
/* 80474D90  7C 9E 23 78 */	mr r30, r4
/* 80474D94  7C 7D 1B 78 */	mr r29, r3
/* 80474D98  80 04 1D F8 */	lwz r0, 0x1df8(r4)
/* 80474D9C  2C 00 00 00 */	cmpwi r0, 0
/* 80474DA0  40 82 00 4C */	bne lbl_80474DEC
/* 80474DA4  83 FE 1F 60 */	lwz r31, 0x1f60(r30)
/* 80474DA8  28 1F 00 00 */	cmplwi r31, 0
/* 80474DAC  41 82 00 1C */	beq lbl_80474DC8
/* 80474DB0  A0 1F 00 00 */	lhz r0, 0(r31)
/* 80474DB4  28 00 00 00 */	cmplwi r0, 0
/* 80474DB8  41 82 00 10 */	beq lbl_80474DC8
/* 80474DBC  4B FF F3 71 */	bl aMR_GetNowDemoFtr
/* 80474DC0  A0 9F 00 00 */	lhz r4, 0(r31)
/* 80474DC4  4B FF B4 B5 */	bl aMR_ItemPutInFurniture
lbl_80474DC8:
/* 80474DC8  7F C3 F3 78 */	mr r3, r30
/* 80474DCC  4B F6 57 95 */	bl mPlib_request_main_close_furniture_type1
/* 80474DD0  2C 03 00 00 */	cmpwi r3, 0
/* 80474DD4  41 82 00 18 */	beq lbl_80474DEC
/* 80474DD8  7F A3 EB 78 */	mr r3, r29
/* 80474DDC  38 80 00 05 */	li r4, 5
/* 80474DE0  4B FF F3 69 */	bl aMR_ChangeDemoFtrStatus
/* 80474DE4  38 00 00 10 */	li r0, 0x10
/* 80474DE8  B0 1D 03 EE */	sth r0, 0x3ee(r29)
lbl_80474DEC:
/* 80474DEC  39 61 00 20 */	addi r11, r1, 0x20
/* 80474DF0  4B C2 61 31 */	bl func_8009AF20
/* 80474DF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80474DF8  7C 08 03 A6 */	mtlr r0
/* 80474DFC  38 21 00 20 */	addi r1, r1, 0x20
/* 80474E00  4E 80 00 20 */	blr 
