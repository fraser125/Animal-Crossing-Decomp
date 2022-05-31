lbl_805FCAC0:
/* 805FCAC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805FCAC4  7C 08 02 A6 */	mflr r0
/* 805FCAC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805FCACC  39 61 00 20 */	addi r11, r1, 0x20
/* 805FCAD0  4B A9 E4 01 */	bl func_8009AED0
/* 805FCAD4  7C 7C 1B 78 */	mr r28, r3
/* 805FCAD8  7C 9D 23 78 */	mr r29, r4
/* 805FCADC  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805FCAE0  7C BE 2B 78 */	mr r30, r5
/* 805FCAE4  83 E6 09 98 */	lwz r31, 0x998(r6)
/* 805FCAE8  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 805FCAEC  2C 00 00 02 */	cmpwi r0, 2
/* 805FCAF0  40 82 00 14 */	bne lbl_805FCB04
/* 805FCAF4  4B FF C9 B5 */	bl mTG_check_trans_mail_mark
/* 805FCAF8  38 00 00 01 */	li r0, 1
/* 805FCAFC  98 1F 00 02 */	stb r0, 2(r31)
/* 805FCB00  48 00 00 40 */	b lbl_805FCB40
lbl_805FCB04:
/* 805FCB04  88 1F 00 00 */	lbz r0, 0(r31)
/* 805FCB08  28 00 00 01 */	cmplwi r0, 1
/* 805FCB0C  40 82 00 1C */	bne lbl_805FCB28
/* 805FCB10  4B FF C9 0D */	bl mTG_check_trans_mail
/* 805FCB14  2C 03 00 00 */	cmpwi r3, 0
/* 805FCB18  41 82 00 10 */	beq lbl_805FCB28
/* 805FCB1C  38 00 00 01 */	li r0, 1
/* 805FCB20  98 1F 00 02 */	stb r0, 2(r31)
/* 805FCB24  48 00 00 1C */	b lbl_805FCB40
lbl_805FCB28:
/* 805FCB28  7F 83 E3 78 */	mr r3, r28
/* 805FCB2C  7F A4 EB 78 */	mr r4, r29
/* 805FCB30  7F C5 F3 78 */	mr r5, r30
/* 805FCB34  4B FF FF 15 */	bl mTG_move_base
/* 805FCB38  38 00 00 00 */	li r0, 0
/* 805FCB3C  98 1F 00 02 */	stb r0, 2(r31)
lbl_805FCB40:
/* 805FCB40  39 61 00 20 */	addi r11, r1, 0x20
/* 805FCB44  4B A9 E3 D9 */	bl func_8009AF1C
/* 805FCB48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805FCB4C  7C 08 03 A6 */	mtlr r0
/* 805FCB50  38 21 00 20 */	addi r1, r1, 0x20
/* 805FCB54  4E 80 00 20 */	blr 
