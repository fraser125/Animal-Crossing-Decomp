lbl_803FBC00:
/* 803FBC00  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803FBC04  7C 08 02 A6 */	mflr r0
/* 803FBC08  90 01 00 34 */	stw r0, 0x34(r1)
/* 803FBC0C  39 61 00 30 */	addi r11, r1, 0x30
/* 803FBC10  4B C9 F2 AD */	bl func_8009AEBC
/* 803FBC14  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803FBC18  7C 7B 1B 78 */	mr r27, r3
/* 803FBC1C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 803FBC20  3B A0 00 00 */	li r29, 0
/* 803FBC24  3C A5 00 02 */	addis r5, r5, 2
/* 803FBC28  3B DB 14 44 */	addi r30, r27, 0x1444
/* 803FBC2C  8B E5 60 03 */	lbz r31, 0x6003(r5)
/* 803FBC30  4B FB 08 CD */	bl mFRm_ReturnCheckSum
/* 803FBC34  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 803FBC38  40 82 00 EC */	bne lbl_803FBD24
/* 803FBC3C  A0 1B 14 42 */	lhz r0, 0x1442(r27)
/* 803FBC40  28 00 00 09 */	cmplwi r0, 9
/* 803FBC44  41 81 00 E0 */	bgt lbl_803FBD24
/* 803FBC48  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803FBC4C  3B 80 00 00 */	li r28, 0
/* 803FBC50  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803FBC54  3F 23 00 02 */	addis r25, r3, 2
lbl_803FBC58:
/* 803FBC58  7F C3 F3 78 */	mr r3, r30
/* 803FBC5C  4B FE 43 E9 */	bl mPr_NullCheckPersonalID
/* 803FBC60  2C 03 00 01 */	cmpwi r3, 1
/* 803FBC64  40 82 00 B0 */	bne lbl_803FBD14
/* 803FBC68  28 1F 00 04 */	cmplwi r31, 4
/* 803FBC6C  40 80 00 B8 */	bge lbl_803FBD24
/* 803FBC70  83 19 61 3C */	lwz r24, 0x613c(r25)
/* 803FBC74  28 18 00 00 */	cmplwi r24, 0
/* 803FBC78  41 82 00 AC */	beq lbl_803FBD24
/* 803FBC7C  7F E3 FB 78 */	mr r3, r31
/* 803FBC80  4B FB 79 39 */	bl mHS_get_arrange_idx
/* 803FBC84  1C A3 26 B0 */	mulli r5, r3, 0x26b0
/* 803FBC88  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803FBC8C  7F 03 C3 78 */	mr r3, r24
/* 803FBC90  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 803FBC94  7C 80 2A 14 */	add r4, r0, r5
/* 803FBC98  3E E4 00 01 */	addis r23, r4, 1
/* 803FBC9C  3A F7 9C E8 */	addi r23, r23, -25368
/* 803FBCA0  7E E4 BB 78 */	mr r4, r23
/* 803FBCA4  4B FE 44 A1 */	bl mPr_CheckCmpPersonalID
/* 803FBCA8  2C 03 00 01 */	cmpwi r3, 1
/* 803FBCAC  40 82 00 78 */	bne lbl_803FBD24
/* 803FBCB0  38 77 1A 30 */	addi r3, r23, 0x1a30
/* 803FBCB4  38 80 00 0A */	li r4, 0xa
/* 803FBCB8  4B FC 0B ED */	bl mMl_chk_mail_free_space
/* 803FBCBC  7C 7A 1B 78 */	mr r26, r3
/* 803FBCC0  2C 1A FF FF */	cmpwi r26, -1
/* 803FBCC4  41 82 00 60 */	beq lbl_803FBD24
/* 803FBCC8  38 00 00 00 */	li r0, 0
/* 803FBCCC  7F C3 F3 78 */	mr r3, r30
/* 803FBCD0  98 1E 00 2E */	stb r0, 0x2e(r30)
/* 803FBCD4  7F 04 C3 78 */	mr r4, r24
/* 803FBCD8  4B FE 44 49 */	bl mPr_CopyPersonalID
/* 803FBCDC  1C 7A 01 2A */	mulli r3, r26, 0x12a
/* 803FBCE0  38 00 00 00 */	li r0, 0
/* 803FBCE4  98 1E 00 14 */	stb r0, 0x14(r30)
/* 803FBCE8  7F C4 F3 78 */	mr r4, r30
/* 803FBCEC  38 63 1A 30 */	addi r3, r3, 0x1a30
/* 803FBCF0  7C 77 1A 14 */	add r3, r23, r3
/* 803FBCF4  4B FC 0C 81 */	bl mMl_copy_mail
/* 803FBCF8  A0 7B 14 42 */	lhz r3, 0x1442(r27)
/* 803FBCFC  3B A0 00 01 */	li r29, 1
/* 803FBD00  38 03 FF FF */	addi r0, r3, -1
/* 803FBD04  B0 1B 14 42 */	sth r0, 0x1442(r27)
/* 803FBD08  A0 1B 14 42 */	lhz r0, 0x1442(r27)
/* 803FBD0C  28 00 00 00 */	cmplwi r0, 0
/* 803FBD10  41 82 00 14 */	beq lbl_803FBD24
lbl_803FBD14:
/* 803FBD14  3B 9C 00 01 */	addi r28, r28, 1
/* 803FBD18  3B DE 01 2A */	addi r30, r30, 0x12a
/* 803FBD1C  2C 1C 00 09 */	cmpwi r28, 9
/* 803FBD20  41 80 FF 38 */	blt lbl_803FBC58
lbl_803FBD24:
/* 803FBD24  7F A3 EB 78 */	mr r3, r29
/* 803FBD28  39 61 00 30 */	addi r11, r1, 0x30
/* 803FBD2C  4B C9 F1 DD */	bl func_8009AF08
/* 803FBD30  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803FBD34  7C 08 03 A6 */	mtlr r0
/* 803FBD38  38 21 00 30 */	addi r1, r1, 0x30
/* 803FBD3C  4E 80 00 20 */	blr 
