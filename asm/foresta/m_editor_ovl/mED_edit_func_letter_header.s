lbl_805D9DA4:
/* 805D9DA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805D9DA8  7C 08 02 A6 */	mflr r0
/* 805D9DAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805D9DB0  39 61 00 20 */	addi r11, r1, 0x20
/* 805D9DB4  4B AC 11 1D */	bl func_8009AED0
/* 805D9DB8  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805D9DBC  7C 7F 1B 78 */	mr r31, r3
/* 805D9DC0  80 05 03 EC */	lwz r0, 0x3ec(r5)
/* 805D9DC4  83 C5 09 8C */	lwz r30, 0x98c(r5)
/* 805D9DC8  2C 00 00 03 */	cmpwi r0, 3
/* 805D9DCC  83 A5 09 90 */	lwz r29, 0x990(r5)
/* 805D9DD0  40 82 00 0C */	bne lbl_805D9DDC
/* 805D9DD4  4B FF FE 25 */	bl mED_edit_func_single_line
/* 805D9DD8  48 00 00 A4 */	b lbl_805D9E7C
lbl_805D9DDC:
/* 805D9DDC  88 BD 00 02 */	lbz r5, 2(r29)
/* 805D9DE0  28 05 00 01 */	cmplwi r5, 1
/* 805D9DE4  41 82 00 98 */	beq lbl_805D9E7C
/* 805D9DE8  88 7D 00 37 */	lbz r3, 0x37(r29)
/* 805D9DEC  A8 1E 00 16 */	lha r0, 0x16(r30)
/* 805D9DF0  AB 9E 00 1E */	lha r28, 0x1e(r30)
/* 805D9DF4  7C 03 00 00 */	cmpw r3, r0
/* 805D9DF8  40 82 00 44 */	bne lbl_805D9E3C
/* 805D9DFC  28 05 00 00 */	cmplwi r5, 0
/* 805D9E00  40 82 00 10 */	bne lbl_805D9E10
/* 805D9E04  88 1E 00 11 */	lbz r0, 0x11(r30)
/* 805D9E08  28 00 00 01 */	cmplwi r0, 1
/* 805D9E0C  41 82 00 20 */	beq lbl_805D9E2C
lbl_805D9E10:
/* 805D9E10  28 05 00 02 */	cmplwi r5, 2
/* 805D9E14  40 82 00 28 */	bne lbl_805D9E3C
/* 805D9E18  88 1E 00 11 */	lbz r0, 0x11(r30)
/* 805D9E1C  28 00 00 02 */	cmplwi r0, 2
/* 805D9E20  41 82 00 0C */	beq lbl_805D9E2C
/* 805D9E24  28 00 00 06 */	cmplwi r0, 6
/* 805D9E28  40 82 00 14 */	bne lbl_805D9E3C
lbl_805D9E2C:
/* 805D9E2C  38 00 00 01 */	li r0, 1
/* 805D9E30  98 1D 00 02 */	stb r0, 2(r29)
/* 805D9E34  98 1E 00 15 */	stb r0, 0x15(r30)
/* 805D9E38  48 00 00 44 */	b lbl_805D9E7C
lbl_805D9E3C:
/* 805D9E3C  7F E3 FB 78 */	mr r3, r31
/* 805D9E40  4B FF FD B9 */	bl mED_edit_func_single_line
/* 805D9E44  88 1D 00 02 */	lbz r0, 2(r29)
/* 805D9E48  28 00 00 00 */	cmplwi r0, 0
/* 805D9E4C  40 82 00 30 */	bne lbl_805D9E7C
/* 805D9E50  A8 1E 00 1E */	lha r0, 0x1e(r30)
/* 805D9E54  7C 1C 00 00 */	cmpw r28, r0
/* 805D9E58  40 81 00 14 */	ble lbl_805D9E6C
/* 805D9E5C  88 7D 00 37 */	lbz r3, 0x37(r29)
/* 805D9E60  38 03 FF FF */	addi r0, r3, -1
/* 805D9E64  98 1D 00 37 */	stb r0, 0x37(r29)
/* 805D9E68  48 00 00 14 */	b lbl_805D9E7C
lbl_805D9E6C:
/* 805D9E6C  40 80 00 10 */	bge lbl_805D9E7C
/* 805D9E70  88 7D 00 37 */	lbz r3, 0x37(r29)
/* 805D9E74  38 03 00 01 */	addi r0, r3, 1
/* 805D9E78  98 1D 00 37 */	stb r0, 0x37(r29)
lbl_805D9E7C:
/* 805D9E7C  7F E3 FB 78 */	mr r3, r31
/* 805D9E80  4B FF FE 65 */	bl mED_edit_func_letter_header_kill_space
/* 805D9E84  39 61 00 20 */	addi r11, r1, 0x20
/* 805D9E88  4B AC 10 95 */	bl func_8009AF1C
/* 805D9E8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805D9E90  7C 08 03 A6 */	mtlr r0
/* 805D9E94  38 21 00 20 */	addi r1, r1, 0x20
/* 805D9E98  4E 80 00 20 */	blr 
