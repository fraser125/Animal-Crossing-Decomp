lbl_804FCDBC:
/* 804FCDBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FCDC0  7C 08 02 A6 */	mflr r0
/* 804FCDC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FCDC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FCDCC  7C 9F 23 78 */	mr r31, r4
/* 804FCDD0  4B ED CA DD */	bl mPlib_Get_change_data_from_submenu_p
/* 804FCDD4  7C 65 1B 78 */	mr r5, r3
/* 804FCDD8  7F E3 FB 78 */	mr r3, r31
/* 804FCDDC  80 85 00 08 */	lwz r4, 8(r5)
/* 804FCDE0  38 C0 00 1F */	li r6, 0x1f
/* 804FCDE4  80 A5 00 0C */	lwz r5, 0xc(r5)
/* 804FCDE8  4B FF FF 59 */	bl func_804FCD40
/* 804FCDEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FCDF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FCDF4  7C 08 03 A6 */	mtlr r0
/* 804FCDF8  38 21 00 10 */	addi r1, r1, 0x10
/* 804FCDFC  4E 80 00 20 */	blr 
