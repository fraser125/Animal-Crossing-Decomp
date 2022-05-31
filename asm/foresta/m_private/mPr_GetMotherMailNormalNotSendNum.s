lbl_803E1A10:
/* 803E1A10  38 A0 00 00 */	li r5, 0
/* 803E1A14  38 C0 00 00 */	li r6, 0
/* 803E1A18  38 00 00 08 */	li r0, 8
lbl_803E1A1C:
/* 803E1A1C  38 E0 00 00 */	li r7, 0
/* 803E1A20  7C 09 03 A6 */	mtctr r0
lbl_803E1A24:
/* 803E1A24  88 83 00 00 */	lbz r4, 0(r3)
/* 803E1A28  7C 84 3E 30 */	sraw r4, r4, r7
/* 803E1A2C  54 84 07 FF */	clrlwi. r4, r4, 0x1f
/* 803E1A30  40 82 00 08 */	bne lbl_803E1A38
/* 803E1A34  38 A5 00 01 */	addi r5, r5, 1
lbl_803E1A38:
/* 803E1A38  38 E7 00 01 */	addi r7, r7, 1
/* 803E1A3C  42 00 FF E8 */	bdnz lbl_803E1A24
/* 803E1A40  38 C6 00 01 */	addi r6, r6, 1
/* 803E1A44  38 63 00 01 */	addi r3, r3, 1
/* 803E1A48  2C 06 00 07 */	cmpwi r6, 7
/* 803E1A4C  41 80 FF D0 */	blt lbl_803E1A1C
/* 803E1A50  7C A3 2B 78 */	mr r3, r5
/* 803E1A54  4E 80 00 20 */	blr 
