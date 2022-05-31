lbl_80423218:
/* 80423218  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042321C  7C 08 02 A6 */	mflr r0
/* 80423220  90 01 00 14 */	stw r0, 0x14(r1)
/* 80423224  4B FF FE C5 */	bl aFD_PrepareFieldDraw
/* 80423228  4B FF FF C9 */	bl aFD_SetDefaultPositionOffset
/* 8042322C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80423230  7C 08 03 A6 */	mtlr r0
/* 80423234  38 21 00 10 */	addi r1, r1, 0x10
/* 80423238  4E 80 00 20 */	blr 
