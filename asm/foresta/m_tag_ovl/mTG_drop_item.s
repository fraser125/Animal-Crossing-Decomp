lbl_805FBB04:
/* 805FBB04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805FBB08  7C 08 02 A6 */	mflr r0
/* 805FBB0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805FBB10  39 61 00 20 */	addi r11, r1, 0x20
/* 805FBB14  4B A9 F3 B9 */	bl func_8009AECC
/* 805FBB18  7C BE 2B 78 */	mr r30, r5
/* 805FBB1C  7C 7C 1B 78 */	mr r28, r3
/* 805FBB20  80 05 00 38 */	lwz r0, 0x38(r5)
/* 805FBB24  7C 9D 23 78 */	mr r29, r4
/* 805FBB28  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805FBB2C  28 00 00 19 */	cmplwi r0, 0x19
/* 805FBB30  83 E3 09 80 */	lwz r31, 0x980(r3)
/* 805FBB34  41 81 02 48 */	bgt lbl_805FBD7C
/* 805FBB38  3C 60 80 6D */	lis r3, lit_4527@ha /* 0x806D0E6C@ha */
/* 805FBB3C  54 00 10 3A */	slwi r0, r0, 2
/* 805FBB40  38 63 0E 6C */	addi r3, r3, lit_4527@l /* 0x806D0E6C@l */
/* 805FBB44  7C 03 00 2E */	lwzx r0, r3, r0
/* 805FBB48  7C 09 03 A6 */	mtctr r0
/* 805FBB4C  4E 80 04 20 */	bctr 
lbl_805FBB50:
/* 805FBB50  7F 83 E3 78 */	mr r3, r28
/* 805FBB54  38 80 00 00 */	li r4, 0
/* 805FBB58  4B FF 44 69 */	bl mTG_get_mail_pointer
/* 805FBB5C  7C 60 1B 78 */	mr r0, r3
/* 805FBB60  38 7F 02 36 */	addi r3, r31, 0x236
/* 805FBB64  7C 1B 03 78 */	mr r27, r0
/* 805FBB68  4B DC 0C 39 */	bl mMl_check_not_used_mail
/* 805FBB6C  2C 03 00 01 */	cmpwi r3, 1
/* 805FBB70  41 82 00 14 */	beq lbl_805FBB84
/* 805FBB74  7F 83 E3 78 */	mr r3, r28
/* 805FBB78  7F C4 F3 78 */	mr r4, r30
/* 805FBB7C  4B FF FE 81 */	bl mTG_hand_drop_item
/* 805FBB80  48 00 02 08 */	b lbl_805FBD88
lbl_805FBB84:
/* 805FBB84  7F 63 DB 78 */	mr r3, r27
/* 805FBB88  4B DC 0C 19 */	bl mMl_check_not_used_mail
/* 805FBB8C  2C 03 00 01 */	cmpwi r3, 1
/* 805FBB90  41 82 01 F8 */	beq lbl_805FBD88
/* 805FBB94  A0 7F 02 34 */	lhz r3, 0x234(r31)
/* 805FBB98  28 03 00 00 */	cmplwi r3, 0
/* 805FBB9C  41 82 01 EC */	beq lbl_805FBD88
/* 805FBBA0  80 9F 03 60 */	lwz r4, 0x360(r31)
/* 805FBBA4  4B FF 66 F9 */	bl mTG_check_item_on_mail
/* 805FBBA8  2C 03 00 00 */	cmpwi r3, 0
/* 805FBBAC  41 82 00 B4 */	beq lbl_805FBC60
/* 805FBBB0  7F 63 DB 78 */	mr r3, r27
/* 805FBBB4  4B DC 0F D1 */	bl mMl_check_set_present_myself
/* 805FBBB8  2C 03 00 00 */	cmpwi r3, 0
/* 805FBBBC  40 82 00 4C */	bne lbl_805FBC08
/* 805FBBC0  A0 1B 00 2C */	lhz r0, 0x2c(r27)
/* 805FBBC4  28 00 00 00 */	cmplwi r0, 0
/* 805FBBC8  41 82 00 40 */	beq lbl_805FBC08
/* 805FBBCC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805FBBD0  38 80 00 00 */	li r4, 0
/* 805FBBD4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805FBBD8  3C 63 00 02 */	addis r3, r3, 2
/* 805FBBDC  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 805FBBE0  4B DE 4B 49 */	bl mPr_GetPossessionItemIdx
/* 805FBBE4  2C 03 FF FF */	cmpwi r3, -1
/* 805FBBE8  40 82 00 20 */	bne lbl_805FBC08
/* 805FBBEC  7F 83 E3 78 */	mr r3, r28
/* 805FBBF0  7F A4 EB 78 */	mr r4, r29
/* 805FBBF4  38 A0 00 01 */	li r5, 1
/* 805FBBF8  4B FF 72 29 */	bl mTG_open_warning_window
/* 805FBBFC  7F 83 E3 78 */	mr r3, r28
/* 805FBC00  4B FF 59 9D */	bl mTG_init_tag_data_item_win
/* 805FBC04  48 00 01 84 */	b lbl_805FBD88
lbl_805FBC08:
/* 805FBC08  80 1D 00 00 */	lwz r0, 0(r29)
/* 805FBC0C  2C 00 00 01 */	cmpwi r0, 1
/* 805FBC10  40 82 00 40 */	bne lbl_805FBC50
/* 805FBC14  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 805FBC18  2C 00 00 0D */	cmpwi r0, 0xd
/* 805FBC1C  40 82 00 34 */	bne lbl_805FBC50
/* 805FBC20  A0 1F 02 34 */	lhz r0, 0x234(r31)
/* 805FBC24  28 00 25 1E */	cmplwi r0, 0x251e
/* 805FBC28  40 82 00 10 */	bne lbl_805FBC38
/* 805FBC2C  A0 1B 00 2C */	lhz r0, 0x2c(r27)
/* 805FBC30  28 00 00 00 */	cmplwi r0, 0
/* 805FBC34  40 82 00 10 */	bne lbl_805FBC44
lbl_805FBC38:
/* 805FBC38  A0 1B 00 2C */	lhz r0, 0x2c(r27)
/* 805FBC3C  28 00 25 1E */	cmplwi r0, 0x251e
/* 805FBC40  40 82 00 10 */	bne lbl_805FBC50
lbl_805FBC44:
/* 805FBC44  38 60 10 0A */	li r3, 0x100a
/* 805FBC48  48 03 20 BD */	bl sAdo_SysTrgStart
/* 805FBC4C  48 00 01 3C */	b lbl_805FBD88
lbl_805FBC50:
/* 805FBC50  7F 83 E3 78 */	mr r3, r28
/* 805FBC54  7F C4 F3 78 */	mr r4, r30
/* 805FBC58  4B FF FD A5 */	bl mTG_hand_drop_item
/* 805FBC5C  48 00 01 2C */	b lbl_805FBD88
lbl_805FBC60:
/* 805FBC60  80 1F 03 60 */	lwz r0, 0x360(r31)
/* 805FBC64  28 00 00 02 */	cmplwi r0, 2
/* 805FBC68  40 82 00 18 */	bne lbl_805FBC80
/* 805FBC6C  7F 83 E3 78 */	mr r3, r28
/* 805FBC70  7F A4 EB 78 */	mr r4, r29
/* 805FBC74  38 A0 00 04 */	li r5, 4
/* 805FBC78  4B FF 71 A9 */	bl mTG_open_warning_window
/* 805FBC7C  48 00 00 74 */	b lbl_805FBCF0
lbl_805FBC80:
/* 805FBC80  28 00 00 01 */	cmplwi r0, 1
/* 805FBC84  40 82 00 18 */	bne lbl_805FBC9C
/* 805FBC88  7F 83 E3 78 */	mr r3, r28
/* 805FBC8C  7F A4 EB 78 */	mr r4, r29
/* 805FBC90  38 A0 00 0E */	li r5, 0xe
/* 805FBC94  4B FF 71 8D */	bl mTG_open_warning_window
/* 805FBC98  48 00 00 58 */	b lbl_805FBCF0
lbl_805FBC9C:
/* 805FBC9C  A0 1F 02 34 */	lhz r0, 0x234(r31)
/* 805FBCA0  28 00 25 23 */	cmplwi r0, 0x2523
/* 805FBCA4  41 80 00 20 */	blt lbl_805FBCC4
/* 805FBCA8  28 00 25 2F */	cmplwi r0, 0x252f
/* 805FBCAC  41 81 00 18 */	bgt lbl_805FBCC4
/* 805FBCB0  7F 83 E3 78 */	mr r3, r28
/* 805FBCB4  7F A4 EB 78 */	mr r4, r29
/* 805FBCB8  38 A0 00 16 */	li r5, 0x16
/* 805FBCBC  4B FF 71 65 */	bl mTG_open_warning_window
/* 805FBCC0  48 00 00 30 */	b lbl_805FBCF0
lbl_805FBCC4:
/* 805FBCC4  28 00 25 30 */	cmplwi r0, 0x2530
/* 805FBCC8  40 82 00 18 */	bne lbl_805FBCE0
/* 805FBCCC  7F 83 E3 78 */	mr r3, r28
/* 805FBCD0  7F A4 EB 78 */	mr r4, r29
/* 805FBCD4  38 A0 00 1B */	li r5, 0x1b
/* 805FBCD8  4B FF 71 49 */	bl mTG_open_warning_window
/* 805FBCDC  48 00 00 14 */	b lbl_805FBCF0
lbl_805FBCE0:
/* 805FBCE0  7F 83 E3 78 */	mr r3, r28
/* 805FBCE4  7F A4 EB 78 */	mr r4, r29
/* 805FBCE8  38 A0 00 03 */	li r5, 3
/* 805FBCEC  4B FF 71 35 */	bl mTG_open_warning_window
lbl_805FBCF0:
/* 805FBCF0  7F 83 E3 78 */	mr r3, r28
/* 805FBCF4  4B FF 58 A9 */	bl mTG_init_tag_data_item_win
/* 805FBCF8  48 00 00 90 */	b lbl_805FBD88
lbl_805FBCFC:
/* 805FBCFC  A0 7F 02 34 */	lhz r3, 0x234(r31)
/* 805FBD00  4B FF 76 15 */	bl mTG_itemNo_to_amount
/* 805FBD04  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805FBD08  3C 80 00 02 */	lis r4, 0x0002 /* 0x0001869F@ha */
/* 805FBD0C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805FBD10  3C A5 00 02 */	addis r5, r5, 2
/* 805FBD14  38 04 86 9F */	addi r0, r4, 0x869F /* 0x0001869F@l */
/* 805FBD18  80 85 61 3C */	lwz r4, 0x613c(r5)
/* 805FBD1C  80 84 00 8C */	lwz r4, 0x8c(r4)
/* 805FBD20  7C 64 1A 14 */	add r3, r4, r3
/* 805FBD24  7C 03 00 40 */	cmplw r3, r0
/* 805FBD28  41 81 00 10 */	bgt lbl_805FBD38
/* 805FBD2C  38 00 00 04 */	li r0, 4
/* 805FBD30  B0 1F 02 32 */	sth r0, 0x232(r31)
/* 805FBD34  48 00 00 54 */	b lbl_805FBD88
lbl_805FBD38:
/* 805FBD38  7F 83 E3 78 */	mr r3, r28
/* 805FBD3C  7F A4 EB 78 */	mr r4, r29
/* 805FBD40  38 A0 00 02 */	li r5, 2
/* 805FBD44  4B FF 70 DD */	bl mTG_open_warning_window
/* 805FBD48  48 00 00 40 */	b lbl_805FBD88
lbl_805FBD4C:
/* 805FBD4C  7F C3 F3 78 */	mr r3, r30
/* 805FBD50  4B FF 3E 11 */	bl mTG_get_table_idx
/* 805FBD54  88 1F 03 65 */	lbz r0, 0x365(r31)
/* 805FBD58  7C 03 00 00 */	cmpw r3, r0
/* 805FBD5C  41 82 00 10 */	beq lbl_805FBD6C
/* 805FBD60  38 60 10 0A */	li r3, 0x100a
/* 805FBD64  48 03 1F A1 */	bl sAdo_SysTrgStart
/* 805FBD68  48 00 00 20 */	b lbl_805FBD88
lbl_805FBD6C:
/* 805FBD6C  7F 83 E3 78 */	mr r3, r28
/* 805FBD70  7F C4 F3 78 */	mr r4, r30
/* 805FBD74  4B FF FC 89 */	bl mTG_hand_drop_item
/* 805FBD78  48 00 00 10 */	b lbl_805FBD88
lbl_805FBD7C:
/* 805FBD7C  7F 83 E3 78 */	mr r3, r28
/* 805FBD80  7F C4 F3 78 */	mr r4, r30
/* 805FBD84  4B FF FC 79 */	bl mTG_hand_drop_item
lbl_805FBD88:
/* 805FBD88  39 61 00 20 */	addi r11, r1, 0x20
/* 805FBD8C  4B A9 F1 8D */	bl func_8009AF18
/* 805FBD90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805FBD94  7C 08 03 A6 */	mtlr r0
/* 805FBD98  38 21 00 20 */	addi r1, r1, 0x20
/* 805FBD9C  4E 80 00 20 */	blr 
