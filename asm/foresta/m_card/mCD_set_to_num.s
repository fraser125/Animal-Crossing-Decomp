lbl_803FAD4C:
/* 803FAD4C  28 03 00 00 */	cmplwi r3, 0
/* 803FAD50  38 A0 00 00 */	li r5, 0
/* 803FAD54  38 C0 00 00 */	li r6, 0
/* 803FAD58  38 E0 00 00 */	li r7, 0
/* 803FAD5C  41 82 00 68 */	beq lbl_803FADC4
/* 803FAD60  38 00 00 03 */	li r0, 3
/* 803FAD64  7C 64 1B 78 */	mr r4, r3
/* 803FAD68  7C 09 03 A6 */	mtctr r0
lbl_803FAD6C:
/* 803FAD6C  88 04 00 00 */	lbz r0, 0(r4)
/* 803FAD70  28 00 00 00 */	cmplwi r0, 0
/* 803FAD74  41 82 00 24 */	beq lbl_803FAD98
/* 803FAD78  2C 06 00 00 */	cmpwi r6, 0
/* 803FAD7C  38 00 00 01 */	li r0, 1
/* 803FAD80  41 82 00 08 */	beq lbl_803FAD88
/* 803FAD84  1C 06 00 0A */	mulli r0, r6, 0xa
lbl_803FAD88:
/* 803FAD88  7C 06 03 78 */	mr r6, r0
/* 803FAD8C  38 E7 00 01 */	addi r7, r7, 1
/* 803FAD90  38 84 00 01 */	addi r4, r4, 1
/* 803FAD94  42 00 FF D8 */	bdnz lbl_803FAD6C
lbl_803FAD98:
/* 803FAD98  38 00 00 0A */	li r0, 0xa
/* 803FAD9C  7C E9 03 A6 */	mtctr r7
/* 803FADA0  2C 07 00 00 */	cmpwi r7, 0
/* 803FADA4  41 82 00 20 */	beq lbl_803FADC4
lbl_803FADA8:
/* 803FADA8  88 83 00 00 */	lbz r4, 0(r3)
/* 803FADAC  38 63 00 01 */	addi r3, r3, 1
/* 803FADB0  38 84 FF D0 */	addi r4, r4, -48
/* 803FADB4  7C 84 31 D6 */	mullw r4, r4, r6
/* 803FADB8  7C C6 03 D6 */	divw r6, r6, r0
/* 803FADBC  7C A5 22 14 */	add r5, r5, r4
/* 803FADC0  42 00 FF E8 */	bdnz lbl_803FADA8
lbl_803FADC4:
/* 803FADC4  7C A3 2B 78 */	mr r3, r5
/* 803FADC8  4E 80 00 20 */	blr 
