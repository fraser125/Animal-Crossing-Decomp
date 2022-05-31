lbl_803CA230:
/* 803CA230  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CA234  7C 08 02 A6 */	mflr r0
/* 803CA238  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CA23C  39 61 00 20 */	addi r11, r1, 0x20
/* 803CA240  4B CD 0C 95 */	bl func_8009AED4
/* 803CA244  7C 7D 1B 78 */	mr r29, r3
/* 803CA248  4B FF FF 75 */	bl mNtc_notice_write_num
/* 803CA24C  2C 03 00 0F */	cmpwi r3, 0xf
/* 803CA250  40 82 00 4C */	bne lbl_803CA29C
/* 803CA254  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803CA258  3B C0 00 00 */	li r30, 0
/* 803CA25C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803CA260  3F E3 00 01 */	addis r31, r3, 1
/* 803CA264  3B FF 91 2C */	addi r31, r31, -28372
lbl_803CA268:
/* 803CA268  7F E3 FB 78 */	mr r3, r31
/* 803CA26C  38 9F 00 C8 */	addi r4, r31, 0xc8
/* 803CA270  38 A0 00 C8 */	li r5, 0xc8
/* 803CA274  4B FF 07 B1 */	bl func_803BAA24
/* 803CA278  3B DE 00 01 */	addi r30, r30, 1
/* 803CA27C  3B FF 00 C8 */	addi r31, r31, 0xc8
/* 803CA280  2C 1E 00 0E */	cmpwi r30, 0xe
/* 803CA284  41 80 FF E4 */	blt lbl_803CA268
/* 803CA288  7F E3 FB 78 */	mr r3, r31
/* 803CA28C  7F A4 EB 78 */	mr r4, r29
/* 803CA290  38 A0 00 C8 */	li r5, 0xc8
/* 803CA294  4B FF 07 91 */	bl func_803BAA24
/* 803CA298  48 00 00 28 */	b lbl_803CA2C0
lbl_803CA29C:
/* 803CA29C  1C A3 00 C8 */	mulli r5, r3, 0xc8
/* 803CA2A0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803CA2A4  7F A4 EB 78 */	mr r4, r29
/* 803CA2A8  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803CA2AC  7C 60 2A 14 */	add r3, r0, r5
/* 803CA2B0  38 A0 00 C8 */	li r5, 0xc8
/* 803CA2B4  3C 63 00 01 */	addis r3, r3, 1
/* 803CA2B8  38 63 91 2C */	addi r3, r3, -28372
/* 803CA2BC  4B FF 07 69 */	bl func_803BAA24
lbl_803CA2C0:
/* 803CA2C0  39 61 00 20 */	addi r11, r1, 0x20
/* 803CA2C4  4B CD 0C 5D */	bl func_8009AF20
/* 803CA2C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CA2CC  7C 08 03 A6 */	mtlr r0
/* 803CA2D0  38 21 00 20 */	addi r1, r1, 0x20
/* 803CA2D4  4E 80 00 20 */	blr 
