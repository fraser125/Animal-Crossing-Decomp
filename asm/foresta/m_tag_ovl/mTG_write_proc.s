lbl_805F6DEC:
/* 805F6DEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F6DF0  7C 08 02 A6 */	mflr r0
/* 805F6DF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F6DF8  39 61 00 20 */	addi r11, r1, 0x20
/* 805F6DFC  4B AA 40 D9 */	bl func_8009AED4
/* 805F6E00  7C 7D 1B 78 */	mr r29, r3
/* 805F6E04  7C 9E 23 78 */	mr r30, r4
/* 805F6E08  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805F6E0C  80 63 09 7C */	lwz r3, 0x97c(r3)
/* 805F6E10  38 63 00 08 */	addi r3, r3, 8
/* 805F6E14  4B FF 8D 4D */	bl mTG_get_table_idx
/* 805F6E18  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805F6E1C  7C 7F 1B 78 */	mr r31, r3
/* 805F6E20  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 805F6E24  3C A5 00 02 */	addis r5, r5, 2
/* 805F6E28  38 80 00 0A */	li r4, 0xa
/* 805F6E2C  80 65 61 3C */	lwz r3, 0x613c(r5)
/* 805F6E30  38 63 04 E0 */	addi r3, r3, 0x4e0
/* 805F6E34  4B DC 5A 71 */	bl mMl_chk_mail_free_space
/* 805F6E38  7C 65 1B 79 */	or. r5, r3, r3
/* 805F6E3C  41 80 00 1C */	blt lbl_805F6E58
/* 805F6E40  7F A3 EB 78 */	mr r3, r29
/* 805F6E44  7F C4 F3 78 */	mr r4, r30
/* 805F6E48  7F E7 FB 78 */	mr r7, r31
/* 805F6E4C  38 C0 00 00 */	li r6, 0
/* 805F6E50  4B FF C2 15 */	bl mTG_open_board_init
/* 805F6E54  48 00 00 14 */	b lbl_805F6E68
lbl_805F6E58:
/* 805F6E58  7F A3 EB 78 */	mr r3, r29
/* 805F6E5C  7F C4 F3 78 */	mr r4, r30
/* 805F6E60  38 A0 00 0F */	li r5, 0xf
/* 805F6E64  4B FF BF BD */	bl mTG_open_warning_window
lbl_805F6E68:
/* 805F6E68  39 61 00 20 */	addi r11, r1, 0x20
/* 805F6E6C  4B AA 40 B5 */	bl func_8009AF20
/* 805F6E70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F6E74  7C 08 03 A6 */	mtlr r0
/* 805F6E78  38 21 00 20 */	addi r1, r1, 0x20
/* 805F6E7C  4E 80 00 20 */	blr 
