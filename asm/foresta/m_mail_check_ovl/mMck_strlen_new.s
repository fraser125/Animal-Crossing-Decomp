lbl_8050F22C:
/* 8050F22C  2C 04 00 00 */	cmpwi r4, 0
/* 8050F230  40 81 00 2C */	ble lbl_8050F25C
/* 8050F234  7C 64 1A 14 */	add r3, r4, r3
/* 8050F238  7C 89 03 A6 */	mtctr r4
/* 8050F23C  38 63 FF FF */	addi r3, r3, -1
/* 8050F240  41 82 00 1C */	beq lbl_8050F25C
lbl_8050F244:
/* 8050F244  88 03 00 00 */	lbz r0, 0(r3)
/* 8050F248  28 00 00 20 */	cmplwi r0, 0x20
/* 8050F24C  40 82 00 10 */	bne lbl_8050F25C
/* 8050F250  38 63 FF FF */	addi r3, r3, -1
/* 8050F254  38 84 FF FF */	addi r4, r4, -1
/* 8050F258  42 00 FF EC */	bdnz lbl_8050F244
lbl_8050F25C:
/* 8050F25C  7C 83 23 78 */	mr r3, r4
/* 8050F260  4E 80 00 20 */	blr 
