lbl_80407CEC:
/* 80407CEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80407CF0  7C 08 02 A6 */	mflr r0
/* 80407CF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80407CF8  39 61 00 20 */	addi r11, r1, 0x20
/* 80407CFC  4B C9 31 D9 */	bl func_8009AED4
/* 80407D00  3C 60 80 66 */	lis r3, data_8065F038@ha /* 0x8065F038@ha */
/* 80407D04  3B A0 00 00 */	li r29, 0
/* 80407D08  3B E3 F0 38 */	addi r31, r3, data_8065F038@l /* 0x8065F038@l */
/* 80407D0C  80 7F 00 00 */	lwz r3, 0(r31)
/* 80407D10  3B C3 04 4A */	addi r30, r3, 0x44a
lbl_80407D14:
/* 80407D14  80 7F 00 00 */	lwz r3, 0(r31)
/* 80407D18  38 1D 04 41 */	addi r0, r29, 0x441
/* 80407D1C  7C 03 00 AE */	lbzx r0, r3, r0
/* 80407D20  28 00 00 01 */	cmplwi r0, 1
/* 80407D24  40 82 00 80 */	bne lbl_80407DA4
/* 80407D28  A8 03 04 5A */	lha r0, 0x45a(r3)
/* 80407D2C  2C 00 00 00 */	cmpwi r0, 0
/* 80407D30  40 82 00 74 */	bne lbl_80407DA4
/* 80407D34  88 1E 00 00 */	lbz r0, 0(r30)
/* 80407D38  88 7E 00 01 */	lbz r3, 1(r30)
/* 80407D3C  7C 00 18 40 */	cmplw r0, r3
/* 80407D40  41 82 00 38 */	beq lbl_80407D78
/* 80407D44  28 03 00 00 */	cmplwi r3, 0
/* 80407D48  40 82 00 10 */	bne lbl_80407D58
/* 80407D4C  38 00 00 03 */	li r0, 3
/* 80407D50  98 1E 00 02 */	stb r0, 2(r30)
/* 80407D54  48 00 00 0C */	b lbl_80407D60
lbl_80407D58:
/* 80407D58  38 00 00 00 */	li r0, 0
/* 80407D5C  98 1E 00 02 */	stb r0, 2(r30)
lbl_80407D60:
/* 80407D60  88 9E 00 01 */	lbz r4, 1(r30)
/* 80407D64  7F A3 EB 78 */	mr r3, r29
/* 80407D68  4B C8 30 A5 */	bl PADControlMotor
/* 80407D6C  88 1E 00 01 */	lbz r0, 1(r30)
/* 80407D70  98 1E 00 00 */	stb r0, 0(r30)
/* 80407D74  48 00 00 30 */	b lbl_80407DA4
lbl_80407D78:
/* 80407D78  88 7E 00 02 */	lbz r3, 2(r30)
/* 80407D7C  28 03 00 00 */	cmplwi r3, 0
/* 80407D80  41 82 00 0C */	beq lbl_80407D8C
/* 80407D84  38 03 FF FF */	addi r0, r3, -1
/* 80407D88  98 1E 00 02 */	stb r0, 2(r30)
lbl_80407D8C:
/* 80407D8C  88 1E 00 02 */	lbz r0, 2(r30)
/* 80407D90  28 00 00 00 */	cmplwi r0, 0
/* 80407D94  41 82 00 10 */	beq lbl_80407DA4
/* 80407D98  7F A3 EB 78 */	mr r3, r29
/* 80407D9C  38 80 00 00 */	li r4, 0
/* 80407DA0  4B C8 30 6D */	bl PADControlMotor
lbl_80407DA4:
/* 80407DA4  3B BD 00 01 */	addi r29, r29, 1
/* 80407DA8  3B DE 00 04 */	addi r30, r30, 4
/* 80407DAC  2C 1D 00 04 */	cmpwi r29, 4
/* 80407DB0  41 80 FF 64 */	blt lbl_80407D14
/* 80407DB4  39 61 00 20 */	addi r11, r1, 0x20
/* 80407DB8  4B C9 31 69 */	bl func_8009AF20
/* 80407DBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80407DC0  7C 08 03 A6 */	mtlr r0
/* 80407DC4  38 21 00 20 */	addi r1, r1, 0x20
/* 80407DC8  4E 80 00 20 */	blr 