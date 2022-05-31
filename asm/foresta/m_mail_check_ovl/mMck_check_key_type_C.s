lbl_8050F468:
/* 8050F468  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050F46C  7C 08 02 A6 */	mflr r0
/* 8050F470  38 A0 00 00 */	li r5, 0
/* 8050F474  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050F478  7C 89 03 A6 */	mtctr r4
/* 8050F47C  2C 04 00 00 */	cmpwi r4, 0
/* 8050F480  41 82 00 3C */	beq lbl_8050F4BC
lbl_8050F484:
/* 8050F484  88 03 00 00 */	lbz r0, 0(r3)
/* 8050F488  28 00 00 20 */	cmplwi r0, 0x20
/* 8050F48C  41 82 00 28 */	beq lbl_8050F4B4
/* 8050F490  7C 03 03 78 */	mr r3, r0
/* 8050F494  38 80 00 01 */	li r4, 1
/* 8050F498  4B FF FD CD */	bl mMck_check_alpha
/* 8050F49C  2C 03 00 01 */	cmpwi r3, 1
/* 8050F4A0  40 82 00 0C */	bne lbl_8050F4AC
/* 8050F4A4  38 A0 00 14 */	li r5, 0x14
/* 8050F4A8  48 00 00 14 */	b lbl_8050F4BC
lbl_8050F4AC:
/* 8050F4AC  38 A0 FF F6 */	li r5, -10
/* 8050F4B0  48 00 00 0C */	b lbl_8050F4BC
lbl_8050F4B4:
/* 8050F4B4  38 63 00 01 */	addi r3, r3, 1
/* 8050F4B8  42 00 FF CC */	bdnz lbl_8050F484
lbl_8050F4BC:
/* 8050F4BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050F4C0  7C A3 2B 78 */	mr r3, r5
/* 8050F4C4  7C 08 03 A6 */	mtlr r0
/* 8050F4C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8050F4CC  4E 80 00 20 */	blr 
