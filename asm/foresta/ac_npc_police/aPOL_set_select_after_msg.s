lbl_8056AD6C:
/* 8056AD6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056AD70  7C 08 02 A6 */	mflr r0
/* 8056AD74  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056AD78  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8056AD7C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8056AD80  7C 7E 1B 78 */	mr r30, r3
/* 8056AD84  4B E5 49 25 */	bl func_803BF6A8
/* 8056AD88  2C 1E 00 01 */	cmpwi r30, 1
/* 8056AD8C  7C 7F 1B 78 */	mr r31, r3
/* 8056AD90  38 80 07 76 */	li r4, 0x776
/* 8056AD94  41 82 00 2C */	beq lbl_8056ADC0
/* 8056AD98  40 80 00 10 */	bge lbl_8056ADA8
/* 8056AD9C  2C 1E 00 00 */	cmpwi r30, 0
/* 8056ADA0  40 80 00 14 */	bge lbl_8056ADB4
/* 8056ADA4  48 00 00 70 */	b lbl_8056AE14
lbl_8056ADA8:
/* 8056ADA8  2C 1E 00 03 */	cmpwi r30, 3
/* 8056ADAC  40 80 00 68 */	bge lbl_8056AE14
/* 8056ADB0  48 00 00 60 */	b lbl_8056AE10
lbl_8056ADB4:
/* 8056ADB4  4B FF FE C1 */	bl aPOL_get_hint_msg_no
/* 8056ADB8  7C 64 1B 78 */	mr r4, r3
/* 8056ADBC  48 00 00 58 */	b lbl_8056AE14
lbl_8056ADC0:
/* 8056ADC0  4B E7 3A 59 */	bl mPB_get_keep_item_sum
/* 8056ADC4  28 03 00 00 */	cmplwi r3, 0
/* 8056ADC8  41 82 00 40 */	beq lbl_8056AE08
/* 8056ADCC  7C 65 1B 78 */	mr r5, r3
/* 8056ADD0  38 61 00 08 */	addi r3, r1, 8
/* 8056ADD4  38 80 00 05 */	li r4, 5
/* 8056ADD8  38 C0 00 05 */	li r6, 5
/* 8056ADDC  38 E0 00 01 */	li r7, 1
/* 8056ADE0  39 00 00 00 */	li r8, 0
/* 8056ADE4  39 20 00 01 */	li r9, 1
/* 8056ADE8  4B E4 46 91 */	bl mFont_UnintToString
/* 8056ADEC  7F E3 FB 78 */	mr r3, r31
/* 8056ADF0  38 A1 00 08 */	addi r5, r1, 8
/* 8056ADF4  38 80 00 00 */	li r4, 0
/* 8056ADF8  38 C0 00 05 */	li r6, 5
/* 8056ADFC  4B E5 4E 59 */	bl mMsg_Set_free_str
/* 8056AE00  38 80 07 82 */	li r4, 0x782
/* 8056AE04  48 00 00 10 */	b lbl_8056AE14
lbl_8056AE08:
/* 8056AE08  38 80 07 83 */	li r4, 0x783
/* 8056AE0C  48 00 00 08 */	b lbl_8056AE14
lbl_8056AE10:
/* 8056AE10  38 80 07 77 */	li r4, 0x777
lbl_8056AE14:
/* 8056AE14  7F E3 FB 78 */	mr r3, r31
/* 8056AE18  4B E5 51 AD */	bl mMsg_Set_continue_msg_num
/* 8056AE1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056AE20  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8056AE24  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8056AE28  7C 08 03 A6 */	mtlr r0
/* 8056AE2C  38 21 00 20 */	addi r1, r1, 0x20
/* 8056AE30  4E 80 00 20 */	blr 
