lbl_8037A854:
/* 8037A854  80 03 01 18 */	lwz r0, 0x118(r3)
/* 8037A858  2C 00 00 0E */	cmpwi r0, 0xe
/* 8037A85C  40 80 00 54 */	bge lbl_8037A8B0
/* 8037A860  7C 08 03 78 */	mr r8, r0
/* 8037A864  54 A5 06 3E */	clrlwi r5, r5, 0x18
/* 8037A868  38 E0 00 00 */	li r7, 0
/* 8037A86C  7C 09 03 A6 */	mtctr r0
/* 8037A870  2C 00 00 00 */	cmpwi r0, 0
/* 8037A874  40 81 00 40 */	ble lbl_8037A8B4
lbl_8037A878:
/* 8037A878  80 C3 00 08 */	lwz r6, 8(r3)
/* 8037A87C  7C 04 30 00 */	cmpw r4, r6
/* 8037A880  40 82 00 10 */	bne lbl_8037A890
/* 8037A884  88 03 00 10 */	lbz r0, 0x10(r3)
/* 8037A888  7C 05 00 40 */	cmplw r5, r0
/* 8037A88C  41 80 00 0C */	blt lbl_8037A898
lbl_8037A890:
/* 8037A890  7C 04 30 00 */	cmpw r4, r6
/* 8037A894  40 80 00 0C */	bge lbl_8037A8A0
lbl_8037A898:
/* 8037A898  7C E8 3B 78 */	mr r8, r7
/* 8037A89C  48 00 00 18 */	b lbl_8037A8B4
lbl_8037A8A0:
/* 8037A8A0  38 E7 00 01 */	addi r7, r7, 1
/* 8037A8A4  38 63 00 14 */	addi r3, r3, 0x14
/* 8037A8A8  42 00 FF D0 */	bdnz lbl_8037A878
/* 8037A8AC  48 00 00 08 */	b lbl_8037A8B4
lbl_8037A8B0:
/* 8037A8B0  39 00 FF FF */	li r8, -1
lbl_8037A8B4:
/* 8037A8B4  7D 03 43 78 */	mr r3, r8
/* 8037A8B8  4E 80 00 20 */	blr 
