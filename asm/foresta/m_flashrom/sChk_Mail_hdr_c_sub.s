lbl_803ACEF4:
/* 803ACEF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803ACEF8  7C 08 02 A6 */	mflr r0
/* 803ACEFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803ACF00  39 61 00 20 */	addi r11, r1, 0x20
/* 803ACF04  4B CE DF D1 */	bl func_8009AED4
/* 803ACF08  7C 9E 23 78 */	mr r30, r4
/* 803ACF0C  7C 7D 1B 78 */	mr r29, r3
/* 803ACF10  38 9E 00 01 */	addi r4, r30, 1
/* 803ACF14  4B FF FF 8D */	bl sChk_Mail_nm_c_sub
/* 803ACF18  7C 7F 1B 78 */	mr r31, r3
/* 803ACF1C  38 7D 00 16 */	addi r3, r29, 0x16
/* 803ACF20  38 9E 00 01 */	addi r4, r30, 1
/* 803ACF24  4B FF FF 7D */	bl sChk_Mail_nm_c_sub
/* 803ACF28  7F FF 1B 78 */	or r31, r31, r3
/* 803ACF2C  39 61 00 20 */	addi r11, r1, 0x20
/* 803ACF30  7F E3 FB 78 */	mr r3, r31
/* 803ACF34  4B CE DF ED */	bl func_8009AF20
/* 803ACF38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803ACF3C  7C 08 03 A6 */	mtlr r0
/* 803ACF40  38 21 00 20 */	addi r1, r1, 0x20
/* 803ACF44  4E 80 00 20 */	blr 
