lbl_8050ADF0:
/* 8050ADF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050ADF4  7C 08 02 A6 */	mflr r0
/* 8050ADF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050ADFC  39 61 00 20 */	addi r11, r1, 0x20
/* 8050AE00  4B B9 00 CD */	bl func_8009AECC
/* 8050AE04  7C 7B 1B 78 */	mr r27, r3
/* 8050AE08  38 60 03 E8 */	li r3, 0x3e8
/* 8050AE0C  4B FF DF D5 */	bl mRF_GetRandom
/* 8050AE10  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8050AE14  41 82 00 10 */	beq lbl_8050AE24
/* 8050AE18  3B E0 00 41 */	li r31, 0x41
/* 8050AE1C  3B C0 00 43 */	li r30, 0x43
/* 8050AE20  48 00 00 0C */	b lbl_8050AE2C
lbl_8050AE24:
/* 8050AE24  3B E0 00 43 */	li r31, 0x43
/* 8050AE28  3B C0 00 41 */	li r30, 0x41
lbl_8050AE2C:
/* 8050AE2C  3B A0 00 00 */	li r29, 0
/* 8050AE30  3B 80 00 00 */	li r28, 0
/* 8050AE34  48 00 00 2C */	b lbl_8050AE60
lbl_8050AE38:
/* 8050AE38  38 60 00 02 */	li r3, 2
/* 8050AE3C  4B FF DF A5 */	bl mRF_GetRandom
/* 8050AE40  38 63 00 01 */	addi r3, r3, 1
/* 8050AE44  38 80 00 01 */	li r4, 1
/* 8050AE48  4B FF DF F5 */	bl mRF_D2ToD1
/* 8050AE4C  7C 1B 18 AE */	lbzx r0, r27, r3
/* 8050AE50  28 00 00 0C */	cmplwi r0, 0xc
/* 8050AE54  40 82 00 0C */	bne lbl_8050AE60
/* 8050AE58  7F FB 19 AE */	stbx r31, r27, r3
/* 8050AE5C  3B A0 00 01 */	li r29, 1
lbl_8050AE60:
/* 8050AE60  2C 1D 00 00 */	cmpwi r29, 0
/* 8050AE64  41 82 FF D4 */	beq lbl_8050AE38
/* 8050AE68  48 00 00 2C */	b lbl_8050AE94
lbl_8050AE6C:
/* 8050AE6C  38 60 00 02 */	li r3, 2
/* 8050AE70  4B FF DF 71 */	bl mRF_GetRandom
/* 8050AE74  38 63 00 04 */	addi r3, r3, 4
/* 8050AE78  38 80 00 01 */	li r4, 1
/* 8050AE7C  4B FF DF C1 */	bl mRF_D2ToD1
/* 8050AE80  7C 1B 18 AE */	lbzx r0, r27, r3
/* 8050AE84  28 00 00 0C */	cmplwi r0, 0xc
/* 8050AE88  40 82 00 0C */	bne lbl_8050AE94
/* 8050AE8C  7F DB 19 AE */	stbx r30, r27, r3
/* 8050AE90  3B 80 00 01 */	li r28, 1
lbl_8050AE94:
/* 8050AE94  2C 1C 00 00 */	cmpwi r28, 0
/* 8050AE98  41 82 FF D4 */	beq lbl_8050AE6C
/* 8050AE9C  39 61 00 20 */	addi r11, r1, 0x20
/* 8050AEA0  4B B9 00 79 */	bl func_8009AF18
/* 8050AEA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050AEA8  7C 08 03 A6 */	mtlr r0
/* 8050AEAC  38 21 00 20 */	addi r1, r1, 0x20
/* 8050AEB0  4E 80 00 20 */	blr 
