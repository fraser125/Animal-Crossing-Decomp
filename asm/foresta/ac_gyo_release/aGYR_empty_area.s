lbl_804260C0:
/* 804260C0  38 00 00 02 */	li r0, 2
/* 804260C4  38 C0 00 00 */	li r6, 0
/* 804260C8  38 A0 00 02 */	li r5, 2
/* 804260CC  38 80 00 08 */	li r4, 8
/* 804260D0  7C 09 03 A6 */	mtctr r0
lbl_804260D4:
/* 804260D4  38 04 06 18 */	addi r0, r4, 0x618
/* 804260D8  7C 03 00 2E */	lwzx r0, r3, r0
/* 804260DC  2C 00 FF FF */	cmpwi r0, -1
/* 804260E0  40 82 00 0C */	bne lbl_804260EC
/* 804260E4  7C A6 2B 78 */	mr r6, r5
/* 804260E8  48 00 00 10 */	b lbl_804260F8
lbl_804260EC:
/* 804260EC  38 A5 00 01 */	addi r5, r5, 1
/* 804260F0  38 84 00 04 */	addi r4, r4, 4
/* 804260F4  42 00 FF E0 */	bdnz lbl_804260D4
lbl_804260F8:
/* 804260F8  7C C3 33 78 */	mr r3, r6
/* 804260FC  4E 80 00 20 */	blr 