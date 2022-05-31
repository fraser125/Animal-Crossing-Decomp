lbl_8045A438:
/* 8045A438  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045A43C  7C 08 02 A6 */	mflr r0
/* 8045A440  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045A444  39 61 00 20 */	addi r11, r1, 0x20
/* 8045A448  4B C4 0A 8D */	bl func_8009AED4
/* 8045A44C  7C 7F 1B 78 */	mr r31, r3
/* 8045A450  3C 60 81 1D */	lis r3, item_name@ha /* 0x811CDFD4@ha */
/* 8045A454  80 1F 2F 7C */	lwz r0, 0x2f7c(r31)
/* 8045A458  38 63 DF D4 */	addi r3, r3, item_name@l /* 0x811CDFD4@l */
/* 8045A45C  54 00 10 3A */	slwi r0, r0, 2
/* 8045A460  7C BF 02 14 */	add r5, r31, r0
/* 8045A464  A8 85 2F 80 */	lha r4, 0x2f80(r5)
/* 8045A468  AB A5 2F 82 */	lha r29, 0x2f82(r5)
/* 8045A46C  38 04 2D 00 */	addi r0, r4, 0x2d00
/* 8045A470  54 1E 04 3E */	clrlwi r30, r0, 0x10
/* 8045A474  7F C4 F3 78 */	mr r4, r30
/* 8045A478  4B F5 B5 2D */	bl mIN_copy_name_str
/* 8045A47C  7F C3 F3 78 */	mr r3, r30
/* 8045A480  4B F5 B6 99 */	bl mIN_get_item_article
/* 8045A484  7C 7E 1B 78 */	mr r30, r3
/* 8045A488  4B F6 52 21 */	bl func_803BF6A8
/* 8045A48C  3C 80 81 1D */	lis r4, item_name@ha /* 0x811CDFD4@ha */
/* 8045A490  7F C7 F3 78 */	mr r7, r30
/* 8045A494  38 A4 DF D4 */	addi r5, r4, item_name@l /* 0x811CDFD4@l */
/* 8045A498  38 C0 00 10 */	li r6, 0x10
/* 8045A49C  38 80 00 00 */	li r4, 0
/* 8045A4A0  4B F6 59 B1 */	bl mMsg_Set_item_str_art
/* 8045A4A4  2C 1D 00 01 */	cmpwi r29, 1
/* 8045A4A8  41 80 00 34 */	blt lbl_8045A4DC
/* 8045A4AC  2C 1D 00 04 */	cmpwi r29, 4
/* 8045A4B0  41 81 00 2C */	bgt lbl_8045A4DC
/* 8045A4B4  4B F6 51 F5 */	bl func_803BF6A8
/* 8045A4B8  38 1D FF FF */	addi r0, r29, -1
/* 8045A4BC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8045A4C0  1C E0 24 40 */	mulli r7, r0, 0x2440
/* 8045A4C4  38 80 00 00 */	li r4, 0
/* 8045A4C8  38 05 85 38 */	addi r0, r5, common_data@l /* 0x81138538@l */
/* 8045A4CC  38 C0 00 08 */	li r6, 8
/* 8045A4D0  7C A0 3A 14 */	add r5, r0, r7
/* 8045A4D4  38 A5 00 20 */	addi r5, r5, 0x20
/* 8045A4D8  4B F6 57 7D */	bl mMsg_Set_free_str
lbl_8045A4DC:
/* 8045A4DC  80 7F 2F 78 */	lwz r3, 0x2f78(r31)
/* 8045A4E0  80 9F 2F 7C */	lwz r4, 0x2f7c(r31)
/* 8045A4E4  38 03 FF FF */	addi r0, r3, -1
/* 8045A4E8  7C 04 00 00 */	cmpw r4, r0
/* 8045A4EC  40 80 00 24 */	bge lbl_8045A510
/* 8045A4F0  2C 1D 00 01 */	cmpwi r29, 1
/* 8045A4F4  41 80 00 14 */	blt lbl_8045A508
/* 8045A4F8  2C 1D 00 04 */	cmpwi r29, 4
/* 8045A4FC  41 81 00 0C */	bgt lbl_8045A508
/* 8045A500  38 60 2F A2 */	li r3, 0x2fa2
/* 8045A504  48 00 00 28 */	b lbl_8045A52C
lbl_8045A508:
/* 8045A508  38 60 2F A3 */	li r3, 0x2fa3
/* 8045A50C  48 00 00 20 */	b lbl_8045A52C
lbl_8045A510:
/* 8045A510  2C 1D 00 01 */	cmpwi r29, 1
/* 8045A514  41 80 00 14 */	blt lbl_8045A528
/* 8045A518  2C 1D 00 04 */	cmpwi r29, 4
/* 8045A51C  41 81 00 0C */	bgt lbl_8045A528
/* 8045A520  38 60 2F 9F */	li r3, 0x2f9f
/* 8045A524  48 00 00 08 */	b lbl_8045A52C
lbl_8045A528:
/* 8045A528  38 60 2F A0 */	li r3, 0x2fa0
lbl_8045A52C:
/* 8045A52C  39 61 00 20 */	addi r11, r1, 0x20
/* 8045A530  4B C4 09 F1 */	bl func_8009AF20
/* 8045A534  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045A538  7C 08 03 A6 */	mtlr r0
/* 8045A53C  38 21 00 20 */	addi r1, r1, 0x20
/* 8045A540  4E 80 00 20 */	blr 
