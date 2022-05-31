lbl_805C6F18:
/* 805C6F18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C6F1C  7C 08 02 A6 */	mflr r0
/* 805C6F20  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C6F24  39 61 00 20 */	addi r11, r1, 0x20
/* 805C6F28  4B AD 3F A9 */	bl func_8009AED0
/* 805C6F2C  7C 7C 1B 78 */	mr r28, r3
/* 805C6F30  7C 9D 23 78 */	mr r29, r4
/* 805C6F34  7C BE 2B 78 */	mr r30, r5
/* 805C6F38  3B E0 00 00 */	li r31, 0
/* 805C6F3C  48 00 00 2C */	b lbl_805C6F68
lbl_805C6F40:
/* 805C6F40  7F 83 E3 78 */	mr r3, r28
/* 805C6F44  4B FF FE D5 */	bl mCD_make_calendar_data_init
/* 805C6F48  38 1F 00 01 */	addi r0, r31, 1
/* 805C6F4C  7F 83 E3 78 */	mr r3, r28
/* 805C6F50  7F A4 EB 78 */	mr r4, r29
/* 805C6F54  7F C6 F3 78 */	mr r6, r30
/* 805C6F58  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 805C6F5C  4B FF FE E5 */	bl mCD_make_calendar_data_holiday_and_icon
/* 805C6F60  3B 9C 00 73 */	addi r28, r28, 0x73
/* 805C6F64  3B FF 00 01 */	addi r31, r31, 1
lbl_805C6F68:
/* 805C6F68  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 805C6F6C  28 00 00 0C */	cmplwi r0, 0xc
/* 805C6F70  41 80 FF D0 */	blt lbl_805C6F40
/* 805C6F74  39 61 00 20 */	addi r11, r1, 0x20
/* 805C6F78  4B AD 3F A5 */	bl func_8009AF1C
/* 805C6F7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C6F80  7C 08 03 A6 */	mtlr r0
/* 805C6F84  38 21 00 20 */	addi r1, r1, 0x20
/* 805C6F88  4E 80 00 20 */	blr 
