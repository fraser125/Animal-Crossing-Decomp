lbl_804FBCBC:
/* 804FBCBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FBCC0  7C 08 02 A6 */	mflr r0
/* 804FBCC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FBCC8  39 61 00 20 */	addi r11, r1, 0x20
/* 804FBCCC  4B B9 F2 09 */	bl func_8009AED4
/* 804FBCD0  7C 7D 1B 78 */	mr r29, r3
/* 804FBCD4  7C 9E 23 78 */	mr r30, r4
/* 804FBCD8  83 E3 0C F8 */	lwz r31, 0xcf8(r3)
/* 804FBCDC  4B ED DB D1 */	bl mPlib_Get_change_data_from_submenu_p
/* 804FBCE0  2C 1F 00 41 */	cmpwi r31, 0x41
/* 804FBCE4  7C 6A 1B 78 */	mr r10, r3
/* 804FBCE8  40 82 00 10 */	bne lbl_804FBCF8
/* 804FBCEC  80 9D 0D 18 */	lwz r4, 0xd18(r29)
/* 804FBCF0  80 BD 0D 1C */	lwz r5, 0xd1c(r29)
/* 804FBCF4  48 00 00 0C */	b lbl_804FBD00
lbl_804FBCF8:
/* 804FBCF8  38 80 00 00 */	li r4, 0
/* 804FBCFC  38 A0 00 00 */	li r5, 0
lbl_804FBD00:
/* 804FBD00  38 00 00 1F */	li r0, 0x1f
/* 804FBD04  7F C3 F3 78 */	mr r3, r30
/* 804FBD08  90 01 00 08 */	stw r0, 8(r1)
/* 804FBD0C  7F E6 FB 78 */	mr r6, r31
/* 804FBD10  A0 EA 00 14 */	lhz r7, 0x14(r10)
/* 804FBD14  81 0A 00 18 */	lwz r8, 0x18(r10)
/* 804FBD18  81 2A 00 1C */	lwz r9, 0x1c(r10)
/* 804FBD1C  81 4A 00 20 */	lwz r10, 0x20(r10)
/* 804FBD20  4B FF FE F5 */	bl func_804FBC14
/* 804FBD24  39 61 00 20 */	addi r11, r1, 0x20
/* 804FBD28  4B B9 F1 F9 */	bl func_8009AF20
/* 804FBD2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FBD30  7C 08 03 A6 */	mtlr r0
/* 804FBD34  38 21 00 20 */	addi r1, r1, 0x20
/* 804FBD38  4E 80 00 20 */	blr 
