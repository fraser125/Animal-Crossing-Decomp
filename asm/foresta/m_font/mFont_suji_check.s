lbl_803AF440:
/* 803AF440  3C 80 80 65 */	lis r4, mFont_suji_data@ha /* 0x806543C0@ha */
/* 803AF444  38 00 00 0A */	li r0, 0xa
/* 803AF448  38 84 43 C0 */	addi r4, r4, mFont_suji_data@l /* 0x806543C0@l */
/* 803AF44C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 803AF450  7C 09 03 A6 */	mtctr r0
lbl_803AF454:
/* 803AF454  88 04 00 00 */	lbz r0, 0(r4)
/* 803AF458  7C 03 00 40 */	cmplw r3, r0
/* 803AF45C  40 82 00 0C */	bne lbl_803AF468
/* 803AF460  38 60 00 01 */	li r3, 1
/* 803AF464  4E 80 00 20 */	blr 
lbl_803AF468:
/* 803AF468  38 84 00 01 */	addi r4, r4, 1
/* 803AF46C  42 00 FF E8 */	bdnz lbl_803AF454
/* 803AF470  38 60 00 00 */	li r3, 0
/* 803AF474  4E 80 00 20 */	blr 
