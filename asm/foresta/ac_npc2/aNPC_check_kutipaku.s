lbl_8053BCBC:
/* 8053BCBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053BCC0  7C 08 02 A6 */	mflr r0
/* 8053BCC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053BCC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053BCCC  7C 7F 1B 78 */	mr r31, r3
/* 8053BCD0  38 60 00 08 */	li r3, 8
/* 8053BCD4  93 C1 00 08 */	stw r30, 8(r1)
/* 8053BCD8  3B C0 00 00 */	li r30, 0
/* 8053BCDC  7F E4 FB 78 */	mr r4, r31
/* 8053BCE0  4B E5 E5 85 */	bl mDemo_Check
/* 8053BCE4  2C 03 00 01 */	cmpwi r3, 1
/* 8053BCE8  41 82 00 2C */	beq lbl_8053BD14
/* 8053BCEC  7F E4 FB 78 */	mr r4, r31
/* 8053BCF0  38 60 00 0A */	li r3, 0xa
/* 8053BCF4  4B E5 E5 71 */	bl mDemo_Check
/* 8053BCF8  2C 03 00 01 */	cmpwi r3, 1
/* 8053BCFC  41 82 00 18 */	beq lbl_8053BD14
/* 8053BD00  7F E4 FB 78 */	mr r4, r31
/* 8053BD04  38 60 00 07 */	li r3, 7
/* 8053BD08  4B E5 E5 5D */	bl mDemo_Check
/* 8053BD0C  2C 03 00 01 */	cmpwi r3, 1
/* 8053BD10  40 82 00 10 */	bne lbl_8053BD20
lbl_8053BD14:
/* 8053BD14  4B E8 4D 15 */	bl mMsg_Check_NowUtter
/* 8053BD18  2C 03 00 01 */	cmpwi r3, 1
/* 8053BD1C  41 82 00 10 */	beq lbl_8053BD2C
lbl_8053BD20:
/* 8053BD20  88 1F 08 34 */	lbz r0, 0x834(r31)
/* 8053BD24  28 00 00 00 */	cmplwi r0, 0
/* 8053BD28  41 82 00 08 */	beq lbl_8053BD30
lbl_8053BD2C:
/* 8053BD2C  3B C0 00 01 */	li r30, 1
lbl_8053BD30:
/* 8053BD30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053BD34  7F C3 F3 78 */	mr r3, r30
/* 8053BD38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053BD3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8053BD40  7C 08 03 A6 */	mtlr r0
/* 8053BD44  38 21 00 10 */	addi r1, r1, 0x10
/* 8053BD48  4E 80 00 20 */	blr 
