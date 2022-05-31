lbl_803D1F30:
/* 803D1F30  3C 80 80 66 */	lis r4, data_8065ADE8@ha /* 0x8065ADE8@ha */
/* 803D1F34  38 00 00 54 */	li r0, 0x54
/* 803D1F38  38 A4 AD E8 */	addi r5, r4, data_8065ADE8@l /* 0x8065ADE8@l */
/* 803D1F3C  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 803D1F40  38 60 00 00 */	li r3, 0
/* 803D1F44  7C 09 03 A6 */	mtctr r0
lbl_803D1F48:
/* 803D1F48  A0 05 00 00 */	lhz r0, 0(r5)
/* 803D1F4C  7C 04 00 40 */	cmplw r4, r0
/* 803D1F50  40 82 00 0C */	bne lbl_803D1F5C
/* 803D1F54  A0 65 00 02 */	lhz r3, 2(r5)
/* 803D1F58  4E 80 00 20 */	blr 
lbl_803D1F5C:
/* 803D1F5C  38 A5 00 0C */	addi r5, r5, 0xc
/* 803D1F60  42 00 FF E8 */	bdnz lbl_803D1F48
/* 803D1F64  4E 80 00 20 */	blr 
