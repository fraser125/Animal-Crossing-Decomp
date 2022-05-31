lbl_803A19A4:
/* 803A19A4  28 03 00 00 */	cmplwi r3, 0
/* 803A19A8  38 E0 00 01 */	li r7, 1
/* 803A19AC  41 82 00 4C */	beq lbl_803A19F8
/* 803A19B0  2C 06 00 02 */	cmpwi r6, 2
/* 803A19B4  41 81 00 44 */	bgt lbl_803A19F8
/* 803A19B8  2C 05 00 06 */	cmpwi r5, 6
/* 803A19BC  40 82 00 0C */	bne lbl_803A19C8
/* 803A19C0  38 E0 00 00 */	li r7, 0
/* 803A19C4  48 00 00 34 */	b lbl_803A19F8
lbl_803A19C8:
/* 803A19C8  38 00 00 05 */	li r0, 5
/* 803A19CC  7C 09 03 A6 */	mtctr r0
lbl_803A19D0:
/* 803A19D0  80 03 00 00 */	lwz r0, 0(r3)
/* 803A19D4  7C 04 00 00 */	cmpw r4, r0
/* 803A19D8  40 82 00 18 */	bne lbl_803A19F0
/* 803A19DC  80 03 00 04 */	lwz r0, 4(r3)
/* 803A19E0  7C 05 00 00 */	cmpw r5, r0
/* 803A19E4  40 82 00 0C */	bne lbl_803A19F0
/* 803A19E8  38 E0 00 00 */	li r7, 0
/* 803A19EC  48 00 00 0C */	b lbl_803A19F8
lbl_803A19F0:
/* 803A19F0  38 63 00 08 */	addi r3, r3, 8
/* 803A19F4  42 00 FF DC */	bdnz lbl_803A19D0
lbl_803A19F8:
/* 803A19F8  7C E3 3B 78 */	mr r3, r7
/* 803A19FC  4E 80 00 20 */	blr 
