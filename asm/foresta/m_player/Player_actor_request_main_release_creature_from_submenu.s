lbl_804FEBD8:
/* 804FEBD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FEBDC  7C 08 02 A6 */	mflr r0
/* 804FEBE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FEBE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FEBE8  7C 9F 23 78 */	mr r31, r4
/* 804FEBEC  4B ED AC C1 */	bl mPlib_Get_change_data_from_submenu_p
/* 804FEBF0  7C 65 1B 78 */	mr r5, r3
/* 804FEBF4  7F E3 FB 78 */	mr r3, r31
/* 804FEBF8  80 85 00 08 */	lwz r4, 8(r5)
/* 804FEBFC  38 C5 00 10 */	addi r6, r5, 0x10
/* 804FEC00  80 A5 00 0C */	lwz r5, 0xc(r5)
/* 804FEC04  38 E0 00 00 */	li r7, 0
/* 804FEC08  39 00 00 1F */	li r8, 0x1f
/* 804FEC0C  4B FF FF 21 */	bl func_804FEB2C
/* 804FEC10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FEC14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FEC18  7C 08 03 A6 */	mtlr r0
/* 804FEC1C  38 21 00 10 */	addi r1, r1, 0x10
/* 804FEC20  4E 80 00 20 */	blr 
