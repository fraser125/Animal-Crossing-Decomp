lbl_803E2008:
/* 803E2008  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E200C  7C 08 02 A6 */	mflr r0
/* 803E2010  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E2014  39 61 00 20 */	addi r11, r1, 0x20
/* 803E2018  4B CB 8E BD */	bl func_8009AED4
/* 803E201C  3C 80 81 17 */	lis r4, l_mpr_mail@ha /* 0x811712B8@ha */
/* 803E2020  7C 7D 1B 78 */	mr r29, r3
/* 803E2024  38 04 12 B8 */	addi r0, r4, l_mpr_mail@l /* 0x811712B8@l */
/* 803E2028  7C 1F 03 78 */	mr r31, r0
/* 803E202C  3B DD 10 F8 */	addi r30, r29, 0x10f8
/* 803E2030  4B FD 1A D9 */	bl mLd_PlayerManKindCheck
/* 803E2034  2C 03 00 00 */	cmpwi r3, 0
/* 803E2038  40 82 00 54 */	bne lbl_803E208C
/* 803E203C  A0 1E 00 00 */	lhz r0, 0(r30)
/* 803E2040  28 00 FF FF */	cmplwi r0, 0xffff
/* 803E2044  41 82 00 48 */	beq lbl_803E208C
/* 803E2048  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 803E204C  2C 00 00 0E */	cmpwi r0, 0xe
/* 803E2050  40 82 00 3C */	bne lbl_803E208C
/* 803E2054  4B FF CE 11 */	bl mPO_get_keep_mail_sum
/* 803E2058  2C 03 00 05 */	cmpwi r3, 5
/* 803E205C  40 80 00 30 */	bge lbl_803E208C
/* 803E2060  7F E3 FB 78 */	mr r3, r31
/* 803E2064  4B FD A6 9D */	bl mMl_clear_mail
/* 803E2068  7F E3 FB 78 */	mr r3, r31
/* 803E206C  7F A4 EB 78 */	mr r4, r29
/* 803E2070  7F C5 F3 78 */	mr r5, r30
/* 803E2074  4B FF FE 2D */	bl mPr_GetForeingerAnimalMail
/* 803E2078  7F E3 FB 78 */	mr r3, r31
/* 803E207C  38 80 00 00 */	li r4, 0
/* 803E2080  4B FF CF E1 */	bl mPO_receipt_proc
/* 803E2084  7F C3 F3 78 */	mr r3, r30
/* 803E2088  4B FF E1 61 */	bl mPr_ClearAnimalMemory
lbl_803E208C:
/* 803E208C  39 61 00 20 */	addi r11, r1, 0x20
/* 803E2090  4B CB 8E 91 */	bl func_8009AF20
/* 803E2094  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E2098  7C 08 03 A6 */	mtlr r0
/* 803E209C  38 21 00 20 */	addi r1, r1, 0x20
/* 803E20A0  4E 80 00 20 */	blr 
