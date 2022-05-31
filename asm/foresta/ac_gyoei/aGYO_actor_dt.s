lbl_805A1D18:
/* 805A1D18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A1D1C  7C 08 02 A6 */	mflr r0
/* 805A1D20  38 83 01 74 */	addi r4, r3, 0x174
/* 805A1D24  38 60 00 00 */	li r3, 0
/* 805A1D28  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A1D2C  38 00 00 02 */	li r0, 2
/* 805A1D30  7C 09 03 A6 */	mtctr r0
lbl_805A1D34:
/* 805A1D34  80 04 02 4C */	lwz r0, 0x24c(r4)
/* 805A1D38  28 00 00 00 */	cmplwi r0, 0
/* 805A1D3C  41 82 00 08 */	beq lbl_805A1D44
/* 805A1D40  90 64 02 4C */	stw r3, 0x24c(r4)
lbl_805A1D44:
/* 805A1D44  38 84 02 50 */	addi r4, r4, 0x250
/* 805A1D48  42 00 FF EC */	bdnz lbl_805A1D34
/* 805A1D4C  48 00 06 B9 */	bl aGYO_free_clip_area
/* 805A1D50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A1D54  7C 08 03 A6 */	mtlr r0
/* 805A1D58  38 21 00 10 */	addi r1, r1, 0x10
/* 805A1D5C  4E 80 00 20 */	blr 
