lbl_805DA9C8:
/* 805DA9C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805DA9CC  7C 08 02 A6 */	mflr r0
/* 805DA9D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805DA9D4  39 61 00 20 */	addi r11, r1, 0x20
/* 805DA9D8  4B AC 04 F9 */	bl func_8009AED0
/* 805DA9DC  7C 7D 1B 78 */	mr r29, r3
/* 805DA9E0  38 60 00 00 */	li r3, 0
/* 805DA9E4  80 BD 00 2C */	lwz r5, 0x2c(r29)
/* 805DA9E8  7C 9E 23 78 */	mr r30, r4
/* 805DA9EC  83 E5 09 8C */	lwz r31, 0x98c(r5)
/* 805DA9F0  98 7F 00 15 */	stb r3, 0x15(r31)
/* 805DA9F4  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 805DA9F8  80 04 09 94 */	lwz r0, 0x994(r4)
/* 805DA9FC  28 00 00 00 */	cmplwi r0, 0
/* 805DAA00  41 82 00 98 */	beq lbl_805DAA98
/* 805DAA04  80 04 04 2C */	lwz r0, 0x42c(r4)
/* 805DAA08  2C 00 00 02 */	cmpwi r0, 2
/* 805DAA0C  40 82 00 8C */	bne lbl_805DAA98
/* 805DAA10  38 00 00 08 */	li r0, 8
/* 805DAA14  98 1F 00 00 */	stb r0, 0(r31)
/* 805DAA18  98 7F 00 11 */	stb r3, 0x11(r31)
/* 805DAA1C  4B DB B5 55 */	bl getTrigger
/* 805DAA20  54 7C 04 3E */	clrlwi r28, r3, 0x10
/* 805DAA24  4B DB B4 AD */	bl getButton
/* 805DAA28  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 805DAA2C  38 60 00 1E */	li r3, 0x1e
/* 805DAA30  7C 04 E3 78 */	or r4, r0, r28
/* 805DAA34  38 00 00 1A */	li r0, 0x1a
/* 805DAA38  70 84 4F 00 */	andi. r4, r4, 0x4f00
/* 805DAA3C  38 A0 00 00 */	li r5, 0
/* 805DAA40  90 9F 00 08 */	stw r4, 8(r31)
/* 805DAA44  98 7F 00 10 */	stb r3, 0x10(r31)
/* 805DAA48  98 1F 00 0F */	stb r0, 0xf(r31)
/* 805DAA4C  98 BF 00 0E */	stb r5, 0xe(r31)
/* 805DAA50  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 805DAA54  80 64 09 94 */	lwz r3, 0x994(r4)
/* 805DAA58  88 03 00 07 */	lbz r0, 7(r3)
/* 805DAA5C  28 00 00 00 */	cmplwi r0, 0
/* 805DAA60  41 82 00 E8 */	beq lbl_805DAB48
/* 805DAA64  80 84 09 90 */	lwz r4, 0x990(r4)
/* 805DAA68  28 04 00 00 */	cmplwi r4, 0
/* 805DAA6C  41 82 00 DC */	beq lbl_805DAB48
/* 805DAA70  98 A3 00 07 */	stb r5, 7(r3)
/* 805DAA74  38 00 00 04 */	li r0, 4
/* 805DAA78  7F E3 FB 78 */	mr r3, r31
/* 805DAA7C  7F A5 EB 78 */	mr r5, r29
/* 805DAA80  98 1F 00 11 */	stb r0, 0x11(r31)
/* 805DAA84  4B FF F8 45 */	bl mED_move_letter_table
/* 805DAA88  7F E3 FB 78 */	mr r3, r31
/* 805DAA8C  4B FF EE 8D */	bl mED_get_exchange_code
/* 805DAA90  B0 7F 00 20 */	sth r3, 0x20(r31)
/* 805DAA94  48 00 00 B4 */	b lbl_805DAB48
lbl_805DAA98:
/* 805DAA98  A8 7F 00 0C */	lha r3, 0xc(r31)
/* 805DAA9C  38 03 00 01 */	addi r0, r3, 1
/* 805DAAA0  B0 1F 00 0C */	sth r0, 0xc(r31)
/* 805DAAA4  A8 1F 00 0C */	lha r0, 0xc(r31)
/* 805DAAA8  2C 00 00 23 */	cmpwi r0, 0x23
/* 805DAAAC  40 82 00 0C */	bne lbl_805DAAB8
/* 805DAAB0  38 00 00 00 */	li r0, 0
/* 805DAAB4  B0 1F 00 0C */	sth r0, 0xc(r31)
lbl_805DAAB8:
/* 805DAAB8  7F E3 FB 78 */	mr r3, r31
/* 805DAABC  4B FF D9 79 */	bl mED_set_stick_area
/* 805DAAC0  7F E3 FB 78 */	mr r3, r31
/* 805DAAC4  4B FF DB 61 */	bl mED_move_keyboard_cursor
/* 805DAAC8  7F E3 FB 78 */	mr r3, r31
/* 805DAACC  4B FF E0 31 */	bl mED_set_command
/* 805DAAD0  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 805DAAD4  3C 60 80 6D */	lis r3, mED_edit_func@ha /* 0x806CCDF0@ha */
/* 805DAAD8  38 A3 CD F0 */	addi r5, r3, mED_edit_func@l /* 0x806CCDF0@l */
/* 805DAADC  7F A3 EB 78 */	mr r3, r29
/* 805DAAE0  54 00 10 3A */	slwi r0, r0, 2
/* 805DAAE4  7F C4 F3 78 */	mr r4, r30
/* 805DAAE8  7D 85 00 2E */	lwzx r12, r5, r0
/* 805DAAEC  7D 89 03 A6 */	mtctr r12
/* 805DAAF0  4E 80 04 21 */	bctrl 
/* 805DAAF4  88 1F 00 15 */	lbz r0, 0x15(r31)
/* 805DAAF8  28 00 00 00 */	cmplwi r0, 0
/* 805DAAFC  41 82 00 4C */	beq lbl_805DAB48
/* 805DAB00  7F A3 EB 78 */	mr r3, r29
/* 805DAB04  4B FF E5 81 */	bl mED_set_se
/* 805DAB08  7F E3 FB 78 */	mr r3, r31
/* 805DAB0C  4B FF EE 0D */	bl mED_get_exchange_code
/* 805DAB10  B0 7F 00 20 */	sth r3, 0x20(r31)
/* 805DAB14  88 7F 00 11 */	lbz r3, 0x11(r31)
/* 805DAB18  28 03 00 01 */	cmplwi r3, 1
/* 805DAB1C  41 82 00 24 */	beq lbl_805DAB40
/* 805DAB20  38 03 FF FE */	addi r0, r3, -2
/* 805DAB24  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 805DAB28  28 00 00 02 */	cmplwi r0, 2
/* 805DAB2C  40 81 00 14 */	ble lbl_805DAB40
/* 805DAB30  28 03 00 06 */	cmplwi r3, 6
/* 805DAB34  41 82 00 0C */	beq lbl_805DAB40
/* 805DAB38  28 03 00 08 */	cmplwi r3, 8
/* 805DAB3C  40 82 00 0C */	bne lbl_805DAB48
lbl_805DAB40:
/* 805DAB40  38 00 00 00 */	li r0, 0
/* 805DAB44  B0 1F 00 0C */	sth r0, 0xc(r31)
lbl_805DAB48:
/* 805DAB48  A9 1F 00 16 */	lha r8, 0x16(r31)
/* 805DAB4C  7F C3 F3 78 */	mr r3, r30
/* 805DAB50  7F E4 FB 78 */	mr r4, r31
/* 805DAB54  38 BF 00 22 */	addi r5, r31, 0x22
/* 805DAB58  38 DF 00 24 */	addi r6, r31, 0x24
/* 805DAB5C  38 FF 00 26 */	addi r7, r31, 0x26
/* 805DAB60  4B FF E0 21 */	bl mED_get_col_line_width
/* 805DAB64  7F E3 FB 78 */	mr r3, r31
/* 805DAB68  4B FF E1 81 */	bl mED_check_line_over
/* 805DAB6C  39 61 00 20 */	addi r11, r1, 0x20
/* 805DAB70  4B AC 03 AD */	bl func_8009AF1C
/* 805DAB74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805DAB78  7C 08 03 A6 */	mtlr r0
/* 805DAB7C  38 21 00 20 */	addi r1, r1, 0x20
/* 805DAB80  4E 80 00 20 */	blr 
