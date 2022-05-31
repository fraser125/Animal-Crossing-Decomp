lbl_8057CBAC:
/* 8057CBAC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8057CBB0  38 00 00 03 */	li r0, 3
/* 8057CBB4  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8057CBB8  38 60 00 00 */	li r3, 0
/* 8057CBBC  3C 84 00 02 */	addis r4, r4, 2
/* 8057CBC0  7C 09 03 A6 */	mtctr r0
/* 8057CBC4  38 84 04 5E */	addi r4, r4, 0x45e
lbl_8057CBC8:
/* 8057CBC8  7C 04 1A 2E */	lhzx r0, r4, r3
/* 8057CBCC  28 00 00 00 */	cmplwi r0, 0
/* 8057CBD0  41 82 00 14 */	beq lbl_8057CBE4
/* 8057CBD4  28 00 FE 10 */	cmplwi r0, 0xfe10
/* 8057CBD8  41 82 00 0C */	beq lbl_8057CBE4
/* 8057CBDC  38 60 00 00 */	li r3, 0
/* 8057CBE0  4E 80 00 20 */	blr 
lbl_8057CBE4:
/* 8057CBE4  38 63 00 02 */	addi r3, r3, 2
/* 8057CBE8  42 00 FF E0 */	bdnz lbl_8057CBC8
/* 8057CBEC  38 60 00 01 */	li r3, 1
/* 8057CBF0  4E 80 00 20 */	blr 
