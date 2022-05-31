lbl_803AC794:
/* 803AC794  38 A0 00 00 */	li r5, 0
/* 803AC798  7C 89 03 A6 */	mtctr r4
/* 803AC79C  2C 04 00 00 */	cmpwi r4, 0
/* 803AC7A0  41 82 00 20 */	beq lbl_803AC7C0
lbl_803AC7A4:
/* 803AC7A4  80 03 00 00 */	lwz r0, 0(r3)
/* 803AC7A8  2C 00 00 07 */	cmpwi r0, 7
/* 803AC7AC  40 82 00 0C */	bne lbl_803AC7B8
/* 803AC7B0  7C 65 1B 78 */	mr r5, r3
/* 803AC7B4  48 00 00 0C */	b lbl_803AC7C0
lbl_803AC7B8:
/* 803AC7B8  38 63 00 08 */	addi r3, r3, 8
/* 803AC7BC  42 00 FF E8 */	bdnz lbl_803AC7A4
lbl_803AC7C0:
/* 803AC7C0  7C A3 2B 78 */	mr r3, r5
/* 803AC7C4  4E 80 00 20 */	blr 
