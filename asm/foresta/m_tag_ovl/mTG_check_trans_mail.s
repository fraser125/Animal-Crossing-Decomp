lbl_805F941C:
/* 805F941C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F9420  7C 08 02 A6 */	mflr r0
/* 805F9424  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F9428  39 61 00 20 */	addi r11, r1, 0x20
/* 805F942C  4B AA 1A A5 */	bl func_8009AED0
/* 805F9430  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 805F9434  7C 9D 23 78 */	mr r29, r4
/* 805F9438  38 86 85 38 */	addi r4, r6, common_data@l /* 0x81138538@l */
/* 805F943C  7C 7C 1B 78 */	mr r28, r3
/* 805F9440  3C 64 00 02 */	addis r3, r4, 2
/* 805F9444  7C BE 2B 78 */	mr r30, r5
/* 805F9448  80 63 61 40 */	lwz r3, 0x6140(r3)
/* 805F944C  3B E0 00 00 */	li r31, 0
/* 805F9450  38 80 00 0A */	li r4, 0xa
/* 805F9454  38 63 1A 30 */	addi r3, r3, 0x1a30
/* 805F9458  4B DC 34 B5 */	bl mMl_count_use_mail_space
/* 805F945C  2C 03 00 00 */	cmpwi r3, 0
/* 805F9460  41 82 00 1C */	beq lbl_805F947C
/* 805F9464  7F 83 E3 78 */	mr r3, r28
/* 805F9468  7F A4 EB 78 */	mr r4, r29
/* 805F946C  7F C5 F3 78 */	mr r5, r30
/* 805F9470  4B FF FE 35 */	bl mTG_trans_mail
/* 805F9474  7C 7F 1B 78 */	mr r31, r3
/* 805F9478  48 00 00 14 */	b lbl_805F948C
lbl_805F947C:
/* 805F947C  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 805F9480  38 00 00 00 */	li r0, 0
/* 805F9484  80 63 09 98 */	lwz r3, 0x998(r3)
/* 805F9488  98 03 00 00 */	stb r0, 0(r3)
lbl_805F948C:
/* 805F948C  7F E3 FB 78 */	mr r3, r31
/* 805F9490  39 61 00 20 */	addi r11, r1, 0x20
/* 805F9494  4B AA 1A 89 */	bl func_8009AF1C
/* 805F9498  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F949C  7C 08 03 A6 */	mtlr r0
/* 805F94A0  38 21 00 20 */	addi r1, r1, 0x20
/* 805F94A4  4E 80 00 20 */	blr 
