lbl_8050AEB4:
/* 8050AEB4  38 00 00 38 */	li r0, 0x38
/* 8050AEB8  38 A0 00 00 */	li r5, 0
/* 8050AEBC  7C 09 03 A6 */	mtctr r0
lbl_8050AEC0:
/* 8050AEC0  88 83 00 00 */	lbz r4, 0(r3)
/* 8050AEC4  28 04 00 28 */	cmplwi r4, 0x28
/* 8050AEC8  41 82 00 1C */	beq lbl_8050AEE4
/* 8050AECC  38 04 FF D7 */	addi r0, r4, -41
/* 8050AED0  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8050AED4  28 00 00 04 */	cmplwi r0, 4
/* 8050AED8  40 81 00 0C */	ble lbl_8050AEE4
/* 8050AEDC  28 04 00 2E */	cmplwi r4, 0x2e
/* 8050AEE0  40 82 00 08 */	bne lbl_8050AEE8
lbl_8050AEE4:
/* 8050AEE4  38 A5 00 01 */	addi r5, r5, 1
lbl_8050AEE8:
/* 8050AEE8  38 63 00 01 */	addi r3, r3, 1
/* 8050AEEC  42 00 FF D4 */	bdnz lbl_8050AEC0
/* 8050AEF0  7C A3 2B 78 */	mr r3, r5
/* 8050AEF4  4E 80 00 20 */	blr 
