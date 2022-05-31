lbl_80474F40:
/* 80474F40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80474F44  7C 08 02 A6 */	mflr r0
/* 80474F48  90 01 00 24 */	stw r0, 0x24(r1)
/* 80474F4C  39 61 00 20 */	addi r11, r1, 0x20
/* 80474F50  4B C2 5F 85 */	bl func_8009AED4
/* 80474F54  7C 9E 23 78 */	mr r30, r4
/* 80474F58  7C 7D 1B 78 */	mr r29, r3
/* 80474F5C  80 04 1D F8 */	lwz r0, 0x1df8(r4)
/* 80474F60  2C 00 00 00 */	cmpwi r0, 0
/* 80474F64  40 82 00 4C */	bne lbl_80474FB0
/* 80474F68  83 FE 1F 60 */	lwz r31, 0x1f60(r30)
/* 80474F6C  28 1F 00 00 */	cmplwi r31, 0
/* 80474F70  41 82 00 1C */	beq lbl_80474F8C
/* 80474F74  A0 1F 00 00 */	lhz r0, 0(r31)
/* 80474F78  28 00 00 00 */	cmplwi r0, 0
/* 80474F7C  41 82 00 10 */	beq lbl_80474F8C
/* 80474F80  4B FF F1 AD */	bl aMR_GetNowDemoFtr
/* 80474F84  A0 9F 00 00 */	lhz r4, 0(r31)
/* 80474F88  4B FF B2 F1 */	bl aMR_ItemPutInFurniture
lbl_80474F8C:
/* 80474F8C  7F C3 F3 78 */	mr r3, r30
/* 80474F90  4B F6 55 D1 */	bl mPlib_request_main_close_furniture_type1
/* 80474F94  2C 03 00 00 */	cmpwi r3, 0
/* 80474F98  41 82 00 18 */	beq lbl_80474FB0
/* 80474F9C  7F A3 EB 78 */	mr r3, r29
/* 80474FA0  38 80 00 05 */	li r4, 5
/* 80474FA4  4B FF F1 A5 */	bl aMR_ChangeDemoFtrStatus
/* 80474FA8  38 00 00 10 */	li r0, 0x10
/* 80474FAC  B0 1D 03 EE */	sth r0, 0x3ee(r29)
lbl_80474FB0:
/* 80474FB0  39 61 00 20 */	addi r11, r1, 0x20
/* 80474FB4  4B C2 5F 6D */	bl func_8009AF20
/* 80474FB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80474FBC  7C 08 03 A6 */	mtlr r0
/* 80474FC0  38 21 00 20 */	addi r1, r1, 0x20
/* 80474FC4  4E 80 00 20 */	blr 
