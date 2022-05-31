lbl_8050EF84:
/* 8050EF84  7C 63 22 14 */	add r3, r3, r4
/* 8050EF88  7C 89 03 A6 */	mtctr r4
/* 8050EF8C  2C 04 00 00 */	cmpwi r4, 0
/* 8050EF90  41 82 00 1C */	beq lbl_8050EFAC
lbl_8050EF94:
/* 8050EF94  88 03 00 00 */	lbz r0, 0(r3)
/* 8050EF98  38 84 FF FF */	addi r4, r4, -1
/* 8050EF9C  28 00 00 20 */	cmplwi r0, 0x20
/* 8050EFA0  40 82 00 10 */	bne lbl_8050EFB0
/* 8050EFA4  38 63 FF FF */	addi r3, r3, -1
/* 8050EFA8  42 00 FF EC */	bdnz lbl_8050EF94
lbl_8050EFAC:
/* 8050EFAC  38 84 FF FF */	addi r4, r4, -1
lbl_8050EFB0:
/* 8050EFB0  38 64 00 01 */	addi r3, r4, 1
/* 8050EFB4  4E 80 00 20 */	blr 
